---
layout: post
title: Lonely Planet at Hack Nashville 6
author: brianp
---

Lonely Planet was well represented at the sixth iteration of [Hack
Nashville](http://hacknashville.com), the Southeast's premier hackathon. In
addition to being the Headline sponsor, Lonely Planet had seven employees
hacking away that weekend. Here are their stories.

Eric West
=========
My team managed to write 1,000,000+ tests that ran in around 6 minutes.  We
achieved this by writing a property based testing library. Property based
testing, also known as generative testing, is a technique most widely used in
functional languages like Haskell and Erlang, but its benefits can be reaped
from any language. There have been multiple attempts to bring this style of
testing to Ruby, but unfortunately those libraries seem to be unmaintained or
broken. The related concept of Fuzz Testing code, as exemplified by the FuzzBert
library, has gained some traction with Rubyists, but generative testing goes a
bit further.

The idea is that you describe properties of your code that should hold true for
any value of whatever type of arguments that particular function or method
takes. The library then tests the property with hundreds or thousands of
randomly generated values.

This is extraordinarily useful for finding edge cases and bugs one never thought
of. To give a very simple example: imagine a web form; what happens when a user
types into that form in Chinese? What about a mixture of Chinese and English
characters?  Or their input includes spaces? Generative testing would very
quickly try all of these things and give you a level of confidence in your code
that is simply unachievable with unit tests or integration tests.

The repository with our work is available at
[https://github.com/niftyn8/degenerate](https://github.com/niftyn8/degenerate)
and the framework for using it is at
[https://github.com/justincampbell/generative
](https://github.com/justincampbell/generative).

Joe Shepherd
============

I've been dabbling in the Meteor javascript framework for a little while and
wanted to take a deeper dive into it with a sustained effort beyond the typical
online tutorial. Hack Nashville was a great opportunity to build a simple app
that takes advantage of Meteor's emphasis on templates and lag-free reactivity.
As a big fan of JavaScript, I was also drawn to Meteor's single-language
approach (It's built on top of NodeJS). Alas, learning a new framework means
going down a lot of dead-ends and dark alleys, so I didn't get nearly as far
along as I had hoped. But a working chunk of code did emerge at the end.

"Famous Pairs" (or "Celebrity Matchup" - I can't decide) was the result of my
efforts. Hours of rainy day fun for kids from 8 to 80. Give it a try at
[http://famouspairs.meteor.com/](http://famouspairs.meteor.com). For now, it's
best played on a desktop. I discovered late on the last day of the Hack that
the sounds, which are crucial to the experience, are not working on mobile
browsers. That's just one of the many bugs and half-completed features that are
the hallmarks of a hackathon project. In the end, though, I made it a lot
farther down the road to grokville.  Meteor is a framework on the rise, having
just reached 1.0. I plan to revisit it often to stay ahead of the curve as it
gains a foothold in the very crowded JavaScript framework field.

Jurnell Cockhren
===============

While at Hack Nashville, I decided it would be a great time to work with a few
members of the [Code for Nashville](http://www.codefornashville.org) team, many
of whom currently attend the [Nashville Software
School](http://nashvillesoftwareschool.com). Code for Nashville is a volunteer
driven organization that has been tasked with making use of the data exposed during
the [Open Data project for
Nashville](http://www.nashville.gov/Government/Open-Data.aspx). Our goal for
the hackathon was to provide a proof of concept for a web application that
displayed multiple datasets on an interactive map. The significance of this
task was to simultaneously demonstrate the value in empowering everyday
Nashvillians with open data and prove there do exist individuals with the
talent within the city to leverage the open data to build informative web
applications. 

The data originated from [data.nashville.gov](https://data.nashville.gov/).
Given the time constraints, the resulting application was a [simple static
one-page site](https://github.com/code-for-nashville/nashviva). The datasets
used in our proof of concept were police stations, fire stations, park and wifi
hotspots. My role was to gather this data and prepare it for usage with the
leaflet mapping library. The frontend of the one-pager allowed users to select
the datasets they wanted displayed on the map at one time. This allowed for
interesting combinations such as: "which parks have wifi" and "which areas of
the city are without police precincts". Both of which previously would require
hours and hours of effort to answer, now are realized in a matter of a couple
mouse clicks.

I definitely left the hackathon having a better understanding of the makeup of
the open datasets, and have ideas for additional datasets we should request. I'm
excited to see how this concept grows and what ideas we Nashvillians will bring
to future meetups now that there exists a visual baseline for what easy access
to city data could teach us about our city. 

In so many words, we showed that with the support of the local government, the
residents of Nashville can band together to build tools that serve all
of us. I'm sure we all can consider this a win for all of
Nashville.

Lee Jones and Brian Pitts
=========================

Lee Jones and I decided to spend the weekend exploring a chat bot framework
called [Lita](https://www.lita.io). Lonely Planet uses
[Slack](https://slack.com) heavily, and we already have an instance of
[Hubot](https://hubot.github.com) running that we use for things like
[interacting with PagerDuty](https://www.npmjs.org/package/hubot-pager-me) and
[viewing pugs](https://www.npmjs.org/package/hubot-pugme). Lita caught our
interest because of its excellent documentation, its emphasis on testing, and
its usage of Ruby, a language many developers at Lonely Planet know well.

We started by getting an instance of Lita running in our infrastructure; we were
able to adapt our existing
[Cloudformation](http://aws.amazon.com/cloudformation/) template from Hubot.
Next we turned to integrating it with Slack. We hit a few minor issues along the
way and submitted a few PRs to
[lita-slack](https://github.com/kenjij/lita-slack) and
[lita-slack-handler](https://github.com/kenjij/lita-slack-handler). Once we had
this working, we developed a toy plugin to get a feel for the API. You can see
this at [lita-vader](https://github.com/lonelyplanet/lita-vader). Happy with
this experience, we decided our first useful plugin would be a
[Jenkins](http://jenkins-ci.org) integration. We looked at extending the
[existing one](https://github.com/daniely/lita-jenkins) but had some different
ideas about the user interface and wanted more abstraction over the Jenkins API.
We spent some time writing up the capabilities we wanted and familiarizing
ourselves with
[jenkins_api_client](https://github.com/arangamani/jenkins_api_client) before
turning to the implementation.  During the remaining time at Hack Nashville, we
were able to implement half of the features we wanted. We are planning to
open-source the new plugin's repository once the initial feature set is complete
and it proves itself useful at Lonely Planet.

John Saba
=========

At Hack Nashville 6, I coded a little tile-based puzzle game for iOS using
Objective-C with the [cocos2d](http://www.cocos2d-swift.org/) library. The part
I would like to share is a simple [class I
wrote](https://github.com/sabajt/Coord) as the foundation for keeping track of
and manipulating items on a grid.  

Both Apple's Foundation classes and cocos2d lack a first class Objective-C
object to represent a cartesian coordinate or a set of comprehensions to go
along.  The way cocos2d represents such coordinates is usually just by using a
`CGPoint`.  This is fine for simple cases, but problematic if you are building a
system to keep track of many pieces with precise movements such as Chess,
Checkers, or Sokoban.  Here were my main issues with just using the [`CGGeometry`](https://developer.apple.com/library/mac/Documentation/GraphicsImaging/Reference/CGGeometry/index.html)
API:

1. `CGPoint` and related items are just structs.  This means Objective-C can't
   store them in collections without wrapping them inside an `NSValue` or
something similar. Pretty annoying. 
1. The type of methods we are given to compare or manipulate points,
   rectangles, sizes and other structs aren't really what we want for easily
determining relationships we can imagine visually between points on a grid.  It
would be nice to answer some basic things like, "What's to my east?", "What's a
few cells to my east?", or "How many cells will it be if I go north until I hit
some condition?".  
1. `CGPoint` stores `float`s - integers are better for our case.

[Coord](https://github.com/sabajt/Coord) is my solution to these problems.

Here is an example of how the class is used in the game to lay out holes:

```
// place holes on the board
self.holes = [Coord coordsFromArrays:self.puzzleJson[@"holes"]];
for (Coord* coord in self.holes)
{
	NSString* imageName = @"Tilegram-Assets/holeTop.png";
	for (Coord* c in self.holes)
	{
		if ([coord isSouthOf:c])
		{
			imageName = @"Tilegram-Assets/holeBottom.png";
			break;
		}
	}

	CCSprite* tile = [CCSprite spriteWithImageNamed:imageName];
	tile.position = ccpAdd([coord relativeMidpoint], self.gridOrigin);
	[self addChild:tile];
}
  
```

A few features of `Coord` I want to point out in this snippet.  First, it is
very easy to create a collection of `Coord` objects from a json format, as shown
in the line `[Coord coordsFromArrays:self.puzzleJson[@"holes"]];`. 

Second, we make use of the class's context checking in the line `if ([coord
isSouthOf:c])` as an easy way to determine which image a hole should use.  If
this hole is directly below any other hole, it uses a specific image.

Third, we use `tile.position = ccpAdd([coord relativeMidpoint],
self.gridOrigin);` to convert a `Coord` object into a point where we can
position a sprite on a screen.  

One of the problems I wanted to address early on in designing this class was how
to deal with a wide variety of tile movements, which are mostly dependent on
other pieces on the board.  For example, one of the pieces in the game behaves
very similarly to a rook in chess.  This piece may move exactly as far as it can
until it hits either a hole, or another piece.  Here is game code for
determining this piece's movement:

```
BOOL(^rookTest)(Coord*) = ^BOOL(Coord *coord) 
{
	BOOL isHole = [coord isCoordInGroup:self.holes];
	BOOL isOtherPiece = [coord isCoordInGroup:[self allMoveablePieceCoords]];
	BOOL isOutOfBounds = [self isCoordOutOfBounds:coord];
	return isHole || isOtherPiece || isOutOfBounds;
};

// outward until we hit something
for (NSString* direction in [Coord cardinalDirections])
{
	Coord* c = [[startingCoord stepInDirection:direction] stepInDirection:direction until:rookTest];
	if (![c isCardinalNeighbor:startingCoord])
	{
		[targets addObject:[c stepInDirection:[Coord oppositeDirection:direction]]];
	}
}
```

The `Coord` object's method `stepInDirection:until:` allows us to pass in an
Objective-C block  (anonymous function) as a parameter.  This block takes a
parameter of its own (a `Coord` object) and evaluates to a true or false based
on some set of conditions we want to evaluate the Coord against.  In this case,
the block `rookTest` just evaluates a few conditions by finding matching Coord
objects in other pre-defined groups on the board.   This turned out to be a
pretty quick and flexible solution to calculating a bunch of different movement
types based on whatever rules we came up with.

Though modest, `Coord` has proven very useful in this little game so far, but
still has a lot of ways it can be improved and expanded upon.  [Feel free to
take a look!](https://github.com/sabajt/Coord)

Matthew McCroskey
=================

For my Hack Nashville project, I created and open sourced a custom UI element
for iOS called `MMMSwitch`. It's available [over at
GitHub](http://github.com/mmccroskey/MMMSwitch). Let me give some backstory as
to why I created this little element.

For a while now, I've been working on a side project -- a very simple iOS app
that prominently features a large switch as its main piece of UI. The switch
looks just like [the standard iOS 7+
switch](https://raw.githubusercontent.com/xpepermint/angular-ui-switch/master/logo.png),
except *much* bigger.

After attempting to use a different open source switch alternative, I realized I
had several specific needs for my project that weren't covered by the
alternative, and thus I decided to make my own.

One more piece of background info: much in the same way that Ruby has RubyGems,
iOS and Mac OS X development have what are called
[CocoaPods](http://cocoapods.org/). I'd used Pods regularly for quite some time
in projects I'd worked on, but hadn't ever open sourced a Pod of my own, so my
goal for Hack Nashville became to make my code fully available as a Pod.

Overall, my hack was a success -- I created and open sourced the Pod, and have
successfully integrated it into my side project as a proof that it works as
advertised.

There's a lot I'd still like to do -- adjust the repo's project structure so
people can use `pod try` with it (explanation
[here](http://blog.cocoapods.org/CocoaPods-0.29/)), add tests (whoops!), and
improve the documentation a bit. And of course I've already realized it needs
features I left off, so I'd love to add those, too.

This year was my first at Hack Nashville, and in fact my first hackathon ever,
and to be honest, I was pretty intimidated going into it. But overall, I feel
like my Hack Nashville weekend was a success. I created something useful and
made it available to the world, and what's more, I got a glimpse at just how
huge and vibrant the developer/designer/maker community in Nashville really is.
I'll definitely be going back next year.
