---
layout: post
title: Our Top 7 GitHub Tricks
excerpt: GitHub is awesome, here's how to get more out of it.
author: mriddle
---

## Whitespace

Reviewing changes on [GitHub](http://github.com) is great, however sometimes it's hard to focus on important changes when you're sifting through a pull request that has a bunch of whitespace changes.
Luckily, by adding `?w=1` to the end of the URL whitespace will be ignored. To see whitespace again, simply remove the URL parameter.

**Note:** Be aware when using this option, you cannot see line comments and are unable to create them.

Before:

<img src="/img/diff_with_whitespace.jpg" alt="Diff with whitespace" />

After:

<img src="/img/diff_ignore_whitespace.jpg" alt="Diff with whitespace ignored" />


## Search

Here are some handy customizations to refine your GitHub searches:

**Finding gem versions within your organization**

[`rails path:Gemfile @lonelyplanet`](https://github.com/search?q=rails+path%3AGemfile+%40lonelyplanet&type=Code&ref=searchresults)

**Perhaps there are some old repositories you want to ignore**

[`rspec path:Gemfile @lonelyplanet -repo:lonelyplanet/openresty-statsd`](https://github.com/search?q=rspec+path%3AGemfile+%40lonelyplanet+-repo%3Alonelyplanet%2Fopenresty-statsd&type=Code&ref=searchresults)

**Find all files that contain sloths within your organization**

[`sloth in:file -extension:rb @lonelyplanet`](https://github.com/search?q=sloth+in%3Afile+-extension%3Arb+%40lonelyplanet&type=Code&ref=searchresults)

**Find sensitive information**

* [`"PRIVATE KEY" in:file path:.ssh/id_rsa`](https://github.com/search?q=%22PRIVATE+KEY%22+in%3Afile+path%3A.ssh%2Fid_rsa&type=Code&ref=searchresults)
* [`secret_token OR gmail_password extension:yml`](https://github.com/search?q=secret_token+OR+gmail_password+extension%3Ayml+&type=Code&ref=searchresults)

**Find local talent**

[`location:"Nashville, TN" language:"Ruby" followers:>20`](https://github.com/search?q=location%3A%22Nashville%2C+TN%22+language%3A%22Ruby%22+followers%3A%3E20&type=Users&ref=searchresults)

You can find more info on search syntax on [GitHub Help](https://help.github.com/articles/search-syntax).

## Cross-references

Shipping something dependent on another repo

`git commit -m "Roll out new UI from lonelyplanet/rizzo#782"`

Late commit relating to a merged PR (will show up in the discussion)

`git commit -m "(#1420) Fixes broken sloth animation"`

The same thing can also be done from GitHub comments

## Code comparison

You may already be familiar with using [http://github.com/<org>/<repo>/compare]() to create a pull-request from a branch, but it's also super useful for filtering commits.

**See what's changed in the last day**
Using git's date specifications `{5 minutes ago}`
[https://github.com/lonelyplanet/rizzo/compare/master@{1.day.ago}...master](https://github.com/lonelyplanet/rizzo/compare/master@{1.day.ago}...master)

**Or what you're missing out on in your fork**
`org/repo/compare/{foreign-user}:{branch}...{own-branch}`

[https://github.com/lonelyplanet/rizzo/compare/evantravers:master...master](https://github.com/lonelyplanet/rizzo/compare/evantravers:master...master)

There's more [details on comparing commits on GitHub](https://help.github.com/articles/comparing-commits-across-time) as well as info on git's [date revisions](https://www.kernel.org/pub/software/scm/git/docs/gitrevisions.html)

## Keyboard shortcuts

The mouse is slow, keyboards are faster. Check out the list of shortcuts for the current page by pressing `?`

## Highlighting lines

Use line highlights to point out interesting bits of code to your mates
[`#L{number}-{number}`](https://github.com/rails/rails/blob/e20dd73df42d63b206d221e2258cc6dc7b1e6068/actionpack/test/fixtures/alternate_helpers/foo_helper.rb#L2)

## Replying

Highlight the text you want to reply to and hit `r`. GitHub will quote the text for you

<img src="/img/github_replying.gif" alt="Demonstrate quoting in GitHub" />
