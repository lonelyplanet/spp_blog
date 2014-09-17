---
layout: post
title: The Roost JS/jQuery Conference or: How I Learned to Stop Worrying and Love Components
author: joeshep
---

Four days, two conferences, one city. Last week I, along with fellow LP and NC2 front-end developers Hailey Mahan and Erle Mulligan, attended the back-to-back Roost JS and JQuery conferences in Chicago. The gatherings were organized by [Bocoup](http://bocoup.com/), "an Open Web technology company by and for programmers," and the the [jQuery Foundation](https://jquery.org/). Roost used a live coding format to build a Backbone app over two days of lecture-dense sessions. It was an opportunity to delve into multiple aspects of application engineering including tools, code style, file structure, testing, optimization, security, workflow, and documentation.

A centerpiece of the app's dev process was [Grunt](http://gruntjs.com/), the well-known task runner. We were guided through setup and use of Grunt by none other than its creator, [Ben Alman](http://bocoup.com/weblog/author/ben-alman/). We were also quickly introduced to the buzzwords of the conference: modules and components.  Our Roost presenters got the modularizing party started early on day one, and the theme continued throughout the four days (We LPers were able to sit back and smirk like in-the-know hipsters when the lecture turned to AMD and requireJS).

Our app was built in Backbone, giving our instructors/speakers a lot of freedom to organize their code however they wanted, since Backbone imposes little to no structure in that regard. Because the emphasis was on componetized code, instead of the typical styles, scripts, and markup directories, we were presented with a modules directory with a nested components folder. Inside  it looked like, to quote Bill Murray in Ghostbusters, "dogs and cats living together... mass hysteria!" HTML, CSS, JavaScript, all piled into one directory.

After I took a deep breath and stopped averting my eyes, I learned that this is the brave, not so new world of components. Taken to its fullest, a component is an island unto itself, fully portable, self driven and individually styled. When surrounded by a custom HTML element (using a polyfill library like [Polymer](http://www.polymer-project.org/) or in the near future when ECMAScript 6 is fully adopted), the component's guts, to use a highly technical term, are hidden from the rest of the app. Increased decoupling, security and reusability? Check, check and check.

On day three we segued into the jQuery conference and a more traditional format of scheduled talks on a variety of front-end topics. Things kicked off with a "State of jQuery" keynote from [Dave Methvin](https://twitter.com/davemethvin), President of the jQuery Foundation. The theme, with tongue fully in cheek, was "jQuery is in Jeopardy!" It's hip to bash jQuery in the age of the modern browser and with IE6 in our rear view mirror, but Dave had a couple of arguments for continued relevance.

First, he pointed to the fact that the jQuery Foundation is about more than just jQuery.  The foundation's mission addresses a wider focus on improving the open web and its accessibility, as well as improving open standards and the libraries/frameworks/tools that follow those standards. Hard to argue with that. But his second appeal to relevance struck me as less convincing.

Dave used touch events as a case study for the kind of widespread, but non-standardized, functionality that signals a return to the dark days of browser inconsistencies. He pointed to (pun intended) the inconsistent behavior between various touch implementations and the "break the web" mess that would occur when trying to retroactively fix all the deployed code out there. Granted, it is surprising that this core user interaction for mobile devices and tablets has no accepted standard, but it feels like a stretch to compare touch event inconsistencies with the bad old days of the 2000s before jQuery and other similar libraries saved us from browser balkanization.

My conclusion is that we have reached a happy place where the standards that the jQuery Foundation helped bring about have evolved jQuery from a dire necessity to simply an excellent option.

For me, the highlight of day one was [Dave Arel's](https://twitter.com/davearel) talk, _As I Walk Through The Valley Of The Shadow Of DOM_. And yes, it was all about components. Did you know that the Web Components spec was first introduced by Microsoft in 1998? I sure didn't. It's been a long time coming,  but Dave showed us examples of what he called "decoupled mini applications" in use today (rdio.com), as well as how the shadow DOM allows us to create custom elements that hide their contents from the main DOM tree. This was all new to my virgin eyes, and I was inspired to dig deeper into how the shadow DOM works and what libraries exist to enable its use across all browsers (currently only Chrome supports it fully).

The final day opened with the talk that had everyone buzzing, _ES6 Right Now_, by [John K Paul](https://twitter.com/johnkpaul). Paul tantalized us with multiple examples of what's coming down the pike, such as

+ Support for the __"class" keyword__ (Cleaner object semantics!)
+ __Arrow__ (=>) functions (no more "var self = this"!)
+ Built-in __promises__ (cleaner than callbacks!)
+ __Template strings__ (safer than string concatenation!)
+ New __array methods__ (Array.from()! Array.of()!)
+ and, of course, __module__ syntax ( decouple-a-go-go!)

These are just the tip of the iceberg. There are dozens more. You can track all of the features and see which ones are supported with [kangax's](https://twitter.com/kangax) [ECMAScript 6 compatibility table](http://kangax.github.io/compat-table/es6/).

Check it out now and you'll see a lot of red and very little green. But remember the talk was called _ES6 Right Now_, and John didn't disappoint. He pointed us to [Paul Miller's](https://twitter.com/futurepaul) version of a time machine, the [ES6 shim](https://github.com/paulmillr/es6-shim/), which allows us to start using ECMAScript 6 syntax right away. Additionally, you can get a head start on your ES6 writing skills by using the [Traceur compiler REPL](https://google.github.io/traceur-compiler/demo/repl.html) to transpile from ES6 to ES5 (It was a bit wonky when I tried it out. You might have better luck with the [Chrome plugin](https://chrome.google.com/webstore/detail/es6-repl/alploljligeomonipppgaahpkenfnfkn?hl=en-US)).

The final talk of the conference was appropriately placed. Documentation was the topic and [Kelly Andrews](https://twitter.com/kellyjandrews) was our passionate evangelist, preaching on the evils of incomplete, poorly organized, and misleading docs. It was a message we all needed to hear, even if we were worn out from four days of presentations. Do you hear yourself in any of these documentation avoidance excuses?

+ People using this are as smart as I am
+ Real devs don't need to document
+ Not documenting makes me irreplaceable
+ I don't have the time
+ Just look at the source

Of course you do. We all do. But like any good shepherd, Kelly didn't just wag his finger at the assembled flock of guilty sinners, he offered some tips on streamlining the process, such as using a static site generator like [Jekyl](http://jekyllrb.com/), which converts your markdown files into deployment-ready files, and hosting it on GitHub. He also advocated starting with a readme, before any code is written, updating it as you go (RDD, anyone?). Help with API specs is out there, too, from sites like [Apiary.io](http://apiary.io/).

It was quite a brain-stuffing few days in Chicago. A few dozen new tools, sites, articles, and blogs are bookmarked and calling my name, vying for my post-conference time and brain space. It's a good problem to have.

A more detailed post about the present state and future promise of web components will follow this post soon. Also check back for Hailey Mahan's take on her Roost/jQuery experience. Peace!
