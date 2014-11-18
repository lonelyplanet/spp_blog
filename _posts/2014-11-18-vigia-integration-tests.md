---
layout: post
title: Vigía&#58; Apib Blueprint testing tool written in Ruby
author: nogates
---

<div style='border-radius: 20px; padding: 1em; width: 90%; margin: 1em; background-color: #f5f2f0; font-style: italic'>
<strong>TL;DR</strong>:
Vigía is a Ruby gem to perform integration tests using RSpec
and a definition file such as Api Blueprint. Check it out on <a href="http://github.com/nogates/vigia">Github</a>.
</div>

An important consideration in providing a public API is documentation. Complete, up-to-date documentation helps developers use the API effectively when creating applications.

To make this job easier, there are currently some alternatives[[1](#note_1)] that allow the generation of the documentation from a definition file. This definition file can also be used to run an integration test suite, ensuring the generated documentation matches the server response.

At LonelyPlanet we decided to choose [API Blueprint](http://apiblueprint.org/) as it's more straight forward to work with, and has quite a large collection of tools such as [Aglio](https://github.com/danielgtaylor/aglio) for generating static HTML documentation files or [Dredd](https://github.com/apiaryio/dredd), which runs http client request using the example values on the definition files, and comparing with the server response. API Blueprint also has bindings for different languages such as [JavaScript/NodeJS](https://github.com/apiaryio/protagonist), [.NET](https://github.com/brutski/snowcrash-dot-net-wrapper) and most important, [Ruby](https://github.com/apiaryio/redsnow).

We began driving our integration tests with Dredd. However, we soon realised that we needed extra features Dredd didn't have.

### Body comparisons.

We need to compare attributes beyond the first level at the JSON response. Dredd wasn't detecting the difference between, for example, these two json blocks.

```javascript
// valid json
{
  "class" : [ "place" ]
}

// json with typo. Dredd won't complain about this
{
  "class" : [ "palce" ]
}

```

### Parameters per action

Dredd wasn't taking account of the difference between Action parameters and Resource parameters. Then, a Resource that specifies resource specific parameters for the GET index action (like pagination params) will be used as well as part of the action POST on the resource url

```http

// Apib Blueprint file content

# Group Scenarios

## Scenarios [/scenarios{?page}]

### List scenarios [GET]

+ Parameters
    + page_id (string, `3`) ... the page number

// GOOD valid url /scenarios?page_id=3

### Create scenario [POST]

// ERROR Not parameters here, but url is parsed as /scenarios?page=3

```

### Sequential tests VS Hypermedia APIs

Finally, when implementing an Hypermedia API like ours, tests are not supposed to run sequentially. The server response can contain links or actions to different resources like the following response.

```javascript

// Siren response body from the server
{
  "class"   : [ "place" ],
  "actions" : [
    {
      "fields" : [ { "name": "page_id", "type": "text" } ],
      "href"   : "http://api.example.com/places",
      "method" : "POST",
      "name"   : "go-to-page",
      "type"   : "application/json"
    }
  ]
}
```

When getting this response from the server, we want to create a new context that will perform a new request with the fields specified by the action, to ensure our clients can navigate the Hypermedia API.

## Testing the API Blueprint in Ruby with RSpec.

<img class="right" src="/img/vigia.png">

During the last couple of months I have been working on a project that aims to solve the problems mentioned above. **[Vigía](http://github.com/nogates/vigia)**.

Vigía is written in Ruby and uses RedSnow to parse the apib blueprint. Then, it automatically generates groups, contexts and examples using RSpec that describes the API according to the Blueprint file. Finally, it will execute a http request per context and run the generated examples to match the values of the result response with the expectations written in the definition file.

Main features:

### Multi Adapter

Vigía uses an adapter approach: although the default behaviour uses Blueprint adapter, you can easily plugin different adapters to create the structure (groups and contexts) of the tests.

```ruby
class FancyAdapter < Vigia::Adapter
  setup_adapter do
    # configure your adapter here
  end
end

Vigia.configure do |config|
  config.adapter = FancyAdapter
end

Viga.run!
```

### Hooks

Vigía has several hooks that can be used to control group/context/examples or other types of operations, such as setting the Database:

```ruby
class DatabaseSet
  def self.for_context(rspec_context)
    # Set up the database for the example
  end
end

Vigia.configure do |config|
  config.before_context do
    let!(:set_database) { DatabaseSet.for_context(self) }
  end
end

Viga.run!
```

### Shared Examples

Vigía can be easily extended using Rspec shared examples. Any number of shared examples can be included per context just by including them in Vigía's configure block:

```ruby
class Backup < ActiveRecord::Base
  def self.find_by_response(rspec_context)
    # find your backup entry
  end
end

shared_examples 'apib custom examples' do
  let(:backup_entry) { Backup.find_by_response(response) }

  it 'has a copy of the resource on the backup table' do
    if action == 'POST' # create action
      expect(backup_entry).to be_a(Backup)
    else
      expect(backup_entry).to be_nil
    end
  end
end

Vigia.configure do |config|
  config.add_custom_examples_on(:all, 'apib custom examples')
end

Viga.run!
```

## To finish...

Vigía is still under heavy development but is already being used on our API's projects. There are still some nice features that have to be implemented such as a better error formatting [[2](#note_2)], examples to measure the time a request has taken, and finally, adding support for other API definition providers.

----
<a name="note_1"></a>

\[1\] For instance: [Raml](http://raml.org) or [Swagger](https://helloreverb.com/developers/swagger)

<a name="note_2"></a>

\[2\] [https://github.com/nogates/vigia/issues/5](https://github.com/nogates/vigia/issues/5)


