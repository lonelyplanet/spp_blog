---
layout: post
title: A History of Web Performance @ Lonely Planet
---

Screamingly fast is now a requirement of all our projects. Weve only made incremental improvements to our page performance over the past couple of years but this is about to change dramatically. Ill be sharing our progress on this blog. Were also experimenting with tools to help us capture performance data in real time and well share some of this data when we can.

If youre in London and want to know more about what were doing at Lonely Planet, were presenting at the London Web Performance Meetup on [Metrics Driven Engineering](http://www.meetup.com/London-Web-Performance-Group/events/69285112/). Come down and check us out, we'd love to see you!

**Turn the clock back 2 years**

Web performance became a hot topic at LP when our then Director of IT,<a href="http://linkd.in/MZ6dZI" target="_blank">Ed Cortis</a>, returned from Velocity 2010 a changed man. Ed made web performance a focus at Lonely Planet and is largely responsible for my passion. Soon after Ed's return, graphs like the one below were being hotly discussed around the office in Melbourne.

![Conversion](http://getfile4.posterous.com/getfile/files.posterous.com/temp-2012-08-06/hzgvrlfjmEqIkdpxnGsujxoBmqEbnjonEkFsmwJqHgbEcpkqkvazysCHklGc/conversion.jpeg.scaled699.jpg)

(From an<a href="http://bit.ly/PAnjaO" target="_blank">excellent piece</a>written by Josh Bixby of Strangeloop)

If our site adhered to Joshuas model, this graph showed us that Lonely Planet was potentially losing 40% of our conversions due to poor page performance.

Many believed the delays were caused by third party content and thats where improvements were needed. This presented a challenge to business owners as it meant changing revenue generating features.

My favourite suggestion for performance improvement was removing some ads to speed up the page and calculating whether the net increase in conversion made up for the loss in ad revenue. This was a bit too radical for our tastes.

We ran an A/B test asynchronously loading some ads in iFrames.But<a href="http://en.wikipedia.org/wiki/Lazy_loading" target="_blank">lazy loading</a>some ads on non-eCommerce areas of the site did not make much difference to conversion. We had designed a poor proof of concept.
<div>

Page speed was never viewed as a feature, rather as<a href="http://en.wikipedia.org/wiki/Technical_debt" target="_blank">technical debt</a>. Presented with a choice of developing new features or improving page performance, new features were always made a priority. It was extremely difficult to make improvements.

<strong>Fast forward to today</strong>

In the past 12 months, weve been busy moving our online operations from Melbourne to London. But now that were up and running, the importance of web performance is back in a big way. New team, new focus and weve learnt from our previous endeavours.

Weve recently completed a series of experiments on driving traffic to eCommerce areas of our site. The blue line below depicts the success of various experiments. The orange line is the control.The only difference between the big dip in experiment E and surrounding weeks D &amp; F is that we intentionally slowed down the user experience.

&nbsp;
<div><a href="http://devops.lonelyplanet.com/?page=1#"><img id="mainImage" alt="" src="http://getfile1.posterous.com/getfile/files.posterous.com/temp-2012-08-06/bzvJHGpCIelmtgsJwrrJtJcckphkJipmBEbnGugFfBlldpcgyuGcmpHhmjJt/Experiments.png.scaled699.png" height="251" width="699" /></a></div>
&nbsp;

There it was staring us in the face  the first hard evidence from<strong>our own site</strong>that page performance has a significant impact. Hardly a shock, but the magnitude of impact on our own users was now clear and undeniable.

My next blog post will benchmark our current performance. If you have any questions post them in the comments or email: engineering @lonelyplanet.com.

Finally, dont forget to check out our presentation on<a href="http://www.meetup.com/London-Web-Performance-Group/events/69285112/" target="_blank">Metrics Driven Engineering</a>at the London Web Performance Meetup. If youre not in London Ill catch you up on what happens in another blog post. Stay tuned!

</div>
