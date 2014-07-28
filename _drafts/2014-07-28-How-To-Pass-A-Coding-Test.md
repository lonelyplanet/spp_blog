---
layout: post
title: How To Pass A Coding Test
excerpt: Coding tests seem to be a big hurdle for many developers. Here's some tips to help you get to the next stage.
author: adels
---

At Lonely Planet our first significant hiring hurdle is a coding test (if you want to know why, [check out this post](http://joneaves.wordpress.com/2014/07/21/toy-robot-coding-test)). Approximately 85% of potential hires are eliminated by this test. Often the experience and achievements of the candidate don't match at all with the quality of code they send through to us. So either they're telling big fat resume lies, or there are a lot of people who aren't getting the results they expect. If you're in the latter group, this post is for you.

<div style='border: 2px solid; border-radius: 20px; padding: 10px; text-align: center; width: 75%; margin-left: auto; margin-right: auto; margin-bottom: 10px'>
<strong>TL;DR</strong>
<br>
Consider the person who has to read/run your coding test and do everything you can to make their job easier. Represent your very best professional practices with the code you submit.
</div>

If you're language agnostic with your hires as we are you'll see solutions written in a wide variety of languages and demonstrating the entire breadth of the software quality spectrum. The very few who submit readable, simple, extendable, reliable and performant applications make it through to the interview stage (more on that another post). Filtering down to these few is an incredibly time-consuming and often very frustrating process. As you write your coding test remember to treat the end users of that test (the hirers) as the very important and time-poor people that they are. Here are some tips on how to do that:

### Read the Instructions, Meet the Requirements
This may seem obvious, but even the better quality tests we've received often leave out a requirement or two. If they say submit your code via a github repo then do it. If they say write an application that takes two parameters, a username and a shoe size, then do that. If they say output .json files do that. If you have questions about the requirements don't be afraid to ask. When we receive a test that doesn't meet the straightforward test requirements we lose faith in that candidate's ability to build code to satisfy our clients' complex and challenging requirements.

### Include a README
Just because you know how to run your app doesn't mean we do. I can spend 20 minutes of my precious time reading your source code and reverse engineering it to work out where your main class is and the command to run it. Or you can just tell me. If you're doing the test in a language we're not currently working in then be more explicit with your instructions. If we're not Rubyists then tell us which version of Ruby to install along with some instructions on how to install it. Likewise C compilers, Java package managers, .NET versioning and so on can all turn into a big time-sink of Googling, reading man pages and frustration. So be considerate, explicit and accurate in your README.

### Write Production-Quality Code
Given the constraints on your time write code that is as similar to production-level code as it is possible to write. If the coding test is the first stage in the application process all we know about you is what you tell us in your code. One giant class named `Test` with three epic methods name `process_1`, `process_2` and `process_3` and no tests tells us everything we need to know; you aren't getting anywhere near our precious production code. Likewise, leave out the TODOs. We don't like them in our code base and they don't do you any favours in a test. `// TODO: Implement error handling` is not a selling point for your coding skills. These may seem like extreme examples, but too many of the coding tests we receive look like something hacked together by a second year Comp Sci student, and not the production-quality code we're looking for.

### Write Tests!
We like TDD, it is mentioned in our job advert, so of course one of the things we look for in a candidate is the ability to write good tests. What makes a good test?

- Make sure your test makes it easy to identify where the problem in your code is. A simple way to do this is to only make one assertion per test block.
- Unit test. Just to be sure you know what I mean by that: "a unit [is] the smallest testable part of an application".
- Unit test everything. Or as much of everything as possible. 60% is not good enough 80% is lazy. 95%+ is getting there. 100% is great. The coding test probably won't have tricky edge cases that are untestable, so aim for 100%
- Integration tests for our coding exercise are optional, but whether to include them or not will depend on the type of test you are doing. If you're not sure, put them in anyway. So far we haven't rejected anyone for putting in too many tests

### Design an App
Even the simplest of applications can be split into a data model class, a display/runner class and some logic between the two. Design your solution to be robust, extensible and simple and then we'll know you can do the same thing for us. Yes those principles involve trade-offs, and how you make those trade-offs will tell us a lot about what you think is important. Of course your audience will differ, but the best thing you can do is try and strike a balance between them. If you pick one and optimise for that at the expense of the others you're making assumptions about what we're looking for that may end up with your code in the reject pile.

### Include Some Error Handling
I run your code from the command line, it exits immediately with no error messages or any other kind of output. If I can I'll spend the time inserting random debugging statements into your code in the hope of finding the error. More than likely I won't have that kind of time to spare so I have to put you straight in the reject pile. Help me out by adding some error handling, preferably with stack traces (it's okay, I'm a coder, I can read stack traces) and you'll greatly increase your chances of making it onto the "interview" pile.

### Pay Attention
A key quality of a good developer is attention to detail. Here's a list of detail that some developers thought were not important, but we reckon they are:

- Don't hardcode pathnames to your computer
- Make sure the app compiles before you send it in
- Make sure the app runs before you send it in
- Tidy up your spelling everywhere - comments, project names, email, variable names, class names and all of the other places
- Use a recent version of your chosen language, not an old one
- Don't concatenate variable names. I have no idea what `c << a if g` means and neither will you in six months
- Finish the coding test before you submit it, a partial solution is not enough

Going for a job is a nerve-wracking process, no-one likes to be judged. Writing code does have a strong creative element so what appeals to one person isn't necessarily going to appeal to another. However, it's my hope that by following these guidelines you can maximise your chances of getting through to the next stage in the hiring process. Have Fun & Good luck!

**Disclaimer:** Of course not all this advice will apply to all coding tests. Ours is a small yet complete application with input and outputs. If your test is just a single algorithm some of the design suggestions won't be relevant.
