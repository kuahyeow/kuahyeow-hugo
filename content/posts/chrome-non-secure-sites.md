+++
date = "2017-01-15T08:28:57+13:00"
title = "Non-secure sites in Chrome"
tags = ["chrome", "security", "internet"]

+++

Sometime in the future, possibly in 2017, Chrome is seeking to mark *all* non-secure sites with a bold and loud warning.
For website administrators and server operators, this is one to watch out for.

<!--more-->

> Beginning in January 2017 (Chrome 56), we’ll mark HTTP pages that collect passwords or credit cards as non-secure, as part of a long-term plan to mark all HTTP sites as non-secure.
>
> <cite>From [Google Online Security Blog](https://security.googleblog.com/2016/09/moving-towards-more-secure-web.html), published September 2016</cite>

As that blog post and others mention on the internet, we are increasingly moving to HTTPS with good reason.
It should be cheap and easy as well to secure your website.

For the tinkerers, you can preview what the changes will look like in Chrome 55 (_caveat emptor_, flags are experimental)

Go to `chrome://flags/` and find the `mark-non-secure-as` flag. There will be several options to choose from.

![Mark non-secure site flag](/images/mark-non-secure-flag-in-chrome.png)

![Non-secure indicator options](/images/non-secure-options.png)

The last option should make Chrome behave as it would be in Chrome 56.
I prefer the third option personally as it clearly shows which sites are HTTP, ie sites that could be modified by anyone in transit
or monitored (think stealing passwords).
"Always mark HTTP as actively dangerous" is also presumably the future state of Chrome in an unspecified date.

This seems to be me, a good way to transition to a more secure web, and it's good to see someone shepherding the enormity that is the Internet towards that goal.

