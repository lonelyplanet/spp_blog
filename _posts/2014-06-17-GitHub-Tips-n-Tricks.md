---
layout: post
title: Our Top 7 GitHub Tricks
excerpt: GitHub is awesome, here's how to get more out of it.
author: mriddle
---

## Whitespace

Reviewing changes in GitHub is great, however sometimes you're stuck dealing with a pull request that has a bunch of whitespace.
By adding `?w=1` to the URL whitespace will be ignored.

**Note:** When including it in the URL you don't see line comments and are unable to create them.

Before:

<img src="/img/diff_with_whitespace.jpg" alt="Diff with whitespace" />

After:

<img src="/img/diff_ignore_whitespace.jpg" alt="Diff with whitespace ignored" />


## Search

**Finding gem versions within your organization**

[`rails path:Gemfile @lonelyplanet`](https://github.com/search?q=rails+path%3AGemfile+%40lonelyplanet&type=Code&ref=searchresults)

Perhaps there are some old repositories you want to ignore

[`rspec path:Gemfile @lonelyplanet -repo:lonelyplanet/openresty-statsd`](https://github.com/search?q=rspec+path%3AGemfile+%40lonelyplanet+-repo%3Alonelyplanet%2Fopenresty-statsd&type=Code&ref=searchresults)

**Find a files that contain sloths within your organization**

[`sloth in:file -extension:rb @lonelyplanet`](https://github.com/search?q=sloth+in%3Afile+-extension%3Arb+%40lonelyplanet&type=Code&ref=searchresults)

## Cross-references

Shipping something dependant on another repo

`git commit -m "Roll out new UI from lonelyplanet/rizzo#782"`

Late commit relating to a merged PR (will show up in the discussion)

`git commit -m "(#1420) Fixes broken sloth animation"`

The same thing can also be done from GitHub comments

## Code comparison

We already know `org/repo/compare` for creating a pull-request from a branch within GitHub but did you know there's more to it?

See what's changed in the last day

[https://github.com/lonelyplanet/rizzo/compare/master@{1.day.ago}...master](https://github.com/lonelyplanet/rizzo/compare/master@{1.day.ago}...master)

Or what you're missing out on in your fork
`org/repo/compare/{foreign-user}:{branch}...{own-branch}`

[https://github.com/lonelyplanet/rizzo/compare/evantravers:master...master](https://github.com/lonelyplanet/rizzo/compare/evantravers:master...master)




## Keyboard shortcuts

The mouse is slow, keyboards are faster. Check out the list of shortcuts for the current page by pressing `?`

## Highlighting lines

Use line highlights to point out interesting bits of code to your mates
[`#L{number}-{number}`](https://github.com/rails/rails/blob/e20dd73df42d63b206d221e2258cc6dc7b1e6068/actionpack/test/fixtures/alternate_helpers/foo_helper.rb#L2)

## Replying

Highlight the text you want to reply to and hit `r`. GitHub will quote the text for you

<img src="https://camo.githubusercontent.com/df4de1519cc0c3cc4d394f309f1d5c7c92297e03/68747470733a2f2f662e636c6f75642e6769746875622e636f6d2f6173736574732f3239363433322f3132343438332f62306661363230342d366566302d313165322d383363332d3235366333376661376162632e676966" alt="Demonstrate quoting in GitHub" />



