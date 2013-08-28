nsmuggler
=========

This is a small database to help discovering ways to bypass naively implemented input filters by taking advantage of database-level multibyte character transformations.

Motivation
----------

Input filtering is one of the most widely used concepts to prevent security problems in web applications. However, many implementations (among other problems) fail to take into consideration the environment of the application that can lead to the bypass of the implemented filters.

One example is the [ValidateRequest filter](http://www.asp.net/whitepapers/request-validation) of the ASP.NET framework, a hardening feature meant to reduce the attack surface of the developed applications. This filter [can be bypassed](http://www.jardinesoftware.net/2011/07/17/bypassing-validaterequest/) if multibyte characters are fed to the persistence layer that uses an ASCII-only charset. In this case the database engine is usually smart enough to convert the multibyte input to ASCII, but as this step usually happens after the input filtering of the business layer, the implemented protections can by bypassed.

Similarly, custom filters based on simple character blacklists or regular expressions can also be circumvented.

TODO
----

More DB engines (and charsets)!

