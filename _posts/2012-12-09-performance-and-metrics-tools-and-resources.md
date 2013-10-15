---
layout: post
title: Performance and metrics tools and resources
categories: []
tags: []
status: publish
type: post
published: true
meta:
  _publicize_pending: '1'
  _elasticsearch_indexed_on: '2012-12-09 12:10:55'
---
As promised, here are all the tools and resources mentioned in our (<a href="https://twitter.com/mjenno">@mjenno</a>and<a href="https://twitter.com/davenolan">@davenolan</a>)<a href="http://velocityconf.com/velocityeu2012/public/schedule/detail/26634">talk at VelocityConf today</a>.

Graphite and friends
<ul>
	<li><a title="graphite, scalable reatime metrics" href="http://graphite.wikidot.com/">graphite</a>: scalable realtime metrics</li>
</ul>
Alternative frontends
<ul>
	<li><a href="https://github.com/paperlesspost/graphiti">graphiti</a></li>
	<li><a href="https://github.com/obfuscurity/tasseo">tasseo</a></li>
	<li><a href="https://github.com/ripienaar/gdash">gdash</a></li>
	<li><a href="https://github.com/obfuscurity/descartes">descartes</a></li>
</ul>
Related tools
<ul>
	<li><a href="https://github.com/etsy/statsd">statsd</a></li>
	<li><a href="https://github.com/lonelyplanet/fozzie">fozzie</a></li>
	<li><a href="https://github.com/lonelyplanet/fozzie">flamsteed</a></li>
	<li><a href="https://github.com/zebrafishlabs/nginx-statsd">statsd plugin for nginx</a></li>
</ul>
Holt-Winters
<ul>
	<li><a href="http://en.wikipedia.org/wiki/Exponential_smoothing">Exponential smoothing</a></li>
	<li><a href="http://forecasters.org/pdfs/foresight/free/Issue19_goodwin.pdf">Introductory article [pdf]</a></li>
	<li><a href="http://www.evanmiller.org/poisson.pdf">Paper evaluating H-W applied to real-time time series [pdf]</a></li>
	<li><a href="http://graphite.readthedocs.org/en/0.9.10/functions.html#graphite.render.functions.holtWintersAberration">It's built into Graphite!</a></li>
</ul>
Also
<ul>
	<li><a href="http://square.github.com/cubism/">cubism</a></li>
	<li><a href="http://d3js.org/">d3 js viz lib</a></li>
	<li><a href="http://jedi.be/blog/2012/01/03/monitoring-wonderland-metrics-api-gateways/">Patrick's excellent 'Monitoring Wonderland' posts</a></li>
</ul>
Continuous experimentation
<ul>
	<li><a href="https://gist.github.com/3833637">Our continuous experimentation chef cookboook</a></li>
	<li><a href="http://openresty.org/">openresty</a>turns Nginx into a Swiss-Army knife</li>
</ul>
And there will be more posts on CE here soon (if there aren't, please harass me on Twitter).
