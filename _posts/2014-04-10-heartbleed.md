---
layout: post
title: Heartbleed
author: mriddle
---

On April 7, 2014 information was released about a new vulnerability (CVE-2014-0160) in OpenSSL, the cryptography library that powers the vast majority of private communication across the Internet. This library is key for maintaining privacy between servers and clients, and confirming that Internet servers are who they say they are.

On April 7, 2014 information was released about a severe vulnerability in [OpenSSL's](http://en.wikipedia.org/wiki/OpenSSL) implementation of the TLS/DTLS (transport layer security protocols) heartbeat extension (RFC6520). This a serious vulnerability which has been assigned the CVE identifier [CVE-2014-0160](https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-0160).

This [vulnerability](http://en.wikipedia.org/wiki/Heartbleed_bug), known as [Heartbleed](http://heartbleed.com/), would allow an attacker to steal the keys that protect communication, user passwords, even the system memory of a vulnerable server. This represents a major risk to large portions of private traffic on the Internet, including lonelyplanet.com.

In order to eliminate the vulnerability, all of our systems have been patched and all of our SSL certificates have been replaced. As of now, we are no longer affected.

We are not aware of any malicious behavior, but due to the nature of the vulnerability, it can be difficult to determine. As a precaution, we've logged out all sessions. That means you'll need to log back in, which is an inconvenient but necessary step. We're sorry for the trouble.

Because OpenSSL is used in so many places, we recommend checking to see if your other online services are affected before logging into them again. We recommend resetting your password on those services, too.

You can [use this service](http://filippo.io/Heartbleed/) to run the heartbleed test against a site.

![heartbleed](http://imgs.xkcd.com/comics/heartbleed.png)
