---
layout: post
title: Multifactor Authentication with Devise
author: mkunkel
---

Account security is a difficult problem to solve that is of growing importance. With more and more personal information being stored in online services, developers need to provide security options to drastically reduce the likelihood of unauthorized account access. A password on its own provides a very low level of security. This is especially true, since most users won't use a truly strong password. Users tend to be angered by requirements for passwords with adequate entropy. One solution to this issue is multifactor authentication.

Multifactor authentication provides a level of security far beyond what a simple password provides. At its most basic level, it requires at least two different types of data to secure your account:

* Something you know
  * Password
  * Security questions
* Something you have
  * Phone with SMS service
  * App on a mobile device
  * One time password device
* Something you are
  * Fingerprint scan
  * Retina scan

One of the most popular methods for implementing multifactor authentication is [Google Authenticator](http://code.google.com/p/google-authenticator). It is used to provide additional security to services like Gmail, Github and Lastpass. It provides a Time-Based One Time Password (TOTP), a 6-8 digit token that is only good for 30 seconds. A user is able to turn on Google Authenticator for their account, at which time they are presented with a QR code containing an 80 bit security key. When they scan that QR code into their Google Authenticator app, their account will now be listed within the app. Each account in the app will have a unique token and an indicator of how much time is left for that token.

![Google Authenticator app](/img/google_auth.png)

The next time they log in, after they are authenticated with their username and password, they will be prompted for their TOTP token. The flow works like this:

1. Go to login page
2. Enter username and password
  * Repeat until a valid username and password is entered
3. Prompt for TOTP token
  * User will need to open the Google Authenticator app to retrieve a token
  * Repeat until a valid token is entered
4. User is now considered authenticated, `authenticate_user!`
5. Redirect as with normal authentication flow

The real benefit of TOTP is that it helps to prevent [replay attacks](http://en.wikipedia.org/wiki/Replay_attack). Since the TOTP will only remain the same for a maximum of 30 seconds, it drastically limits the amount of time which an attacker can send the same request successfully.

So how do we add this functionality to Rails, especially with Devise? Thankfully, [AsteriskLabs](https://github.com/AsteriskLabs/) has created the [devise_google_authenticator](https://github.com/AsteriskLabs/devise_google_authenticator/) gem which does most of the work for you. It handles all of the crypto and utilizes the [Google Charts API](https://developers.google.com/chart/) to generate the QR code. It's nearly a drop-in solution, with a few caveats.

Devise has a pretty specific authentication flow and this gem counts on that. If you have altered the authentication flow in any way, you'll need to override controller methods. As an example, the gem assumes that an invalid request should redirect to `root_path`, but in our use case for [single sign on](https://auth.lonelyplanet.com), `root_path` is a redirect to an external site. If we redirected off-site when there is an invalid request, it would be a very poor user experience. To handle these redirects we use a method `redirect_to_back_or_default`. In order to handle redirects properly, [`app/controllers/devise/checkga_controller#show`](https://github.com/AsteriskLabs/devise_google_authenticator/blob/master/app/controllers/devise/checkga_controller.rb#L10) must be overridden to replace `root_path` with `redirect_to_back_or_default`.

As of this writing, the account added to the Google Authenticator app is listed using the class name of the Rails application. We wanted any account to show as `username@LonelyPlanet`, so it would be clear to our users at which account they were looking. Overriding [`lib/devise_google_authenticatable/controllers/helpers#google_authenticator_qrcode`](https://github.com/AsteriskLabs/devise_google_authenticator/blob/master/lib/devise_google_authenticatable/controllers/helpers.rb#L6) to not use the class name will allow you to customize the account name. <i>Edit to add: AsteriskLabs has added a configuration option for this and should be pushing a new gem version soon</i>

As you can see, with very little effort, Rails developers can provide their users with significantly more effective account security.
