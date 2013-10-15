---
layout: post
title: lonelyplanet.com Performance Baseline
categories: []
tags: []
status: publish
type: post
published: true
meta:
  _publicize_pending: '1'
  _elasticsearch_indexed_on: '2012-12-09 12:10:20'
---
In our<a href="http://devops.lonelyplanet.com/a-history-of-web-performance-lonely-planet" target="_blank">first post</a>on site performancewe promised to share some figures baselining our current performance. Since then, weve been preparing for<a href="http://velocityconf.com/velocityeu2012/public/schedule/detail/26634" target="_blank">our presentation at Velcoity EU</a>so it's taken longer than hoped to share these figures.

To baseline our performance, weve gathered figures for August on major areas of our site. These are full page load times using backbone tests in IE8 averaged across US, UK and Australia:

<strong>Homepage: 8.757</strong>

<strong>Forum: 4.236</strong>

<strong>Destination: 5.454</strong>

<strong>Shop homepage: 5.513</strong>

<strong>Shop details: 4.918</strong>

<strong>Things to do list: 5.671</strong>

This list is far from exhaustive. From here, the most important thing we're doing is working on improving these numbers and expect to make great progress over the coming months.

We're also really excited about the tools we're building to help us understand how our site performs for real users in all locations, on all browsers. More to come on that! In the interim, weve started monitoring more areas of the site with backbone tests so we can give a more complete picture.
