---
layout: post
title: Heartbleed
author: mriddle
---

In response to the OpenSSL vulnerability (known as [Heartbleed](http://heartbleed.com/) and labelled [CVE-2014-0160](https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-0160)), Lonely Planet conducted a thorough review of our infrastructure and where necessary, updated software with the appropriate security patches, replaced affected infrastructure, and replaced our Lonely Planet SSL certificate.

This vulnerability would allow an attacker to steal the keys that protect communication, user passwords, even the system memory of a vulnerable server. This represents a major risk to large portions of private traffic on the Internet, including lonelyplanet.com.

Our tech team took steps to secure the site and remove this vulnerability. We also reached out to our partners and providers to ensure that they're aware of the vulnerability. Lonely Planet would like to remind members that it is best practice to [update your password](https://www.lonelyplanet.com/thorntree/forums/announcements/topics/heartbleed-aedcaba1-0ee4-4337-8005-efeaca192ea5) after such an event and strongly encourage you to do so.

Because OpenSSL is used in so many places, we recommend checking to see if your other online services are affected before logging into them again. We recommend resetting your password on those services, too.

You can [use this service](https://www.ssllabs.com/ssltest/analyze.html) to see if a site is vulnerable.
