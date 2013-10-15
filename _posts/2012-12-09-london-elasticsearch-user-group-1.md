---
layout: post
title: ! 'London ElasticSearch user group #1'
categories: []
tags: []
status: publish
type: post
published: true
meta:
  _publicize_pending: '1'
  _elasticsearch_indexed_on: '2012-12-09 12:11:54'
---
One of the great things about working for Lonely Planet is the opportunity to get out and about at meetups and conferences. Last week we organised and sponsored the first London ElasticSearch user group meetup.

We had two talks.<a href="https://twitter.com/andrew_clegg">Andrew Clegg</a>introduced his<a href="https://github.com/ptdavteam/elasticsearch-approx-plugin">ElasticSearch plugin for fast approximations</a>, which builds on the probabilistic data structures provided by<a href="https://github.com/clearspring/stream-lib">Clearspring's stream-lib</a>. As well as a clever piece of work in its own right, I think it shows one of the strengths of ES, its extensibility.<a href="http://bit.ly/andrew-clegg-cardinality-es">Check out the slides.</a>

Next up was our very own<a href="https://github.com/marckysharky">Marc Watts</a>. Marc introduced some of the tools and techniques we've employed at LP to roll out ElaticSearch as fast as possible. Marc picked up on some of the speed bumps we found with integration testing, Tire, and monitoring. He also showed some live metrics showing a healthy, happy ElasticSearch cluster.

At LP, we use ElasticSearch as our primary document store, and it's the source of truth for our 'view of the world'. By building the whole site on a search engine, we can scale our editorial team and enable them to curate an enormous amount of content. (A different kind of scalability challenge from the ones we normally talk about on this blog.)

Finally, we were lucky enough to have a Q&amp;A with<a href="https://twitter.com/kimchy">Shay Bannon</a>and<a href="https://twitter.com/uboness">Uri Hoeness</a>from ElasticSearch. They were in town to deliver training (highly recommended if you're looking for a deep dive in ES internals and production usage). Their session covered a ton of interesting and useful information, some of which I've tried to prcis here (any inaccuracies are down to my note-taking skill, not Shay or Uri):
<ul>
	<li>The team aim for consistency across languages for the client libs, e.g. standard names and data structures for low-level methods. Look out for an overhaul for Tire and others.</li>
	<li>Replacing HTTP with another standard e.g. protobufs or Thrift would not be a huge win: the important thing is realy the quality of the underlying HTTP client libs. For example, not all Ruby HTTP libs support<code>keep-alive</code>, parsing headers in Perl takes sooo long</li>
	<li>For 1.0, some good things to have would be (a) no full restarts for major upgrades (b) better story for loading data into memory (Lucene 4.0 will help) (c) backoffs (d) better story for snapshot/restore</li>
	<li>New in 0.20 are warmers: on refresh, just before results are available, the warmer searches are run so first users won't hit disk</li>
	<li>0.21+ will focus on upgrade to Lucene 4.0</li>
	<li>Field data cache loads all fields even if all queries are restricted to tight filter. This is because other queries might need theproper data</li>
	<li>Nested queries are much faster than parent/child queries (and probably faster than any B-tree-based document store). Parent/child allows for documents with different lifecycles, but the docs have to be joined in memory</li>
	<li>Shay doesn't believe that SSL between nodes is the full story for thorough node security. Right now, you can maybe do something with nginx proxies in front of each node.</li>
	<li>You can use ES as primary doc store. But recommendation is to have the ability to reindex everything. At least one ES user has PBs of data in ES but also flat files on S3</li>
	<li>Will there be a way of splitting shards? Well, just 10 shards will get you way far. Also if you don't identify your partitioning key, you're in trouble anyway e.g. MongoDB clusters die cos folks add nodes when they're at 80% capacity, but splitting is expensive and takes more than the remaining 20%... Shay gave a<a href="http://vimeo.com/album/1968418/video/44716955">talk on this at BerlinBuzzwords</a>.</li>
</ul>
The next #lesug meetup will probably take place end of January 2013. For updates and more information:
<ul>
	<li>follow<a href="https://twitter.com/elastic_london">@elastic_london</a></li>
	<li>check the<a href="https://groups.google.com/forum/#!forum/elasticsearch">ElasticSearch mailing list</a>for announcements</li>
</ul>
At some point soon we'll get set up on MeetUp.com, too.

So thanks very much to our speakers, and Shay and Uri, and everyone who came along for a chat.

Thanks also to Lonely Planet for sponsoring the evening's pizza and drinks. (This was the first meetup I've organised so I was mighty relieved to find I'd ordered enough pizza.)

One last thing. If you're interested in working with ElasticSearch, we're hiring.
