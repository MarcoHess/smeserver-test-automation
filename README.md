SME Server Test Automation
==========================

This repository is a series of tests build on the Robot Framework 
(http://robotframework.org) for performing a series of tests on 
SME Server (http://contribs.org).

There are some further instructions on how to operate these 
tests in SME Server here http://wiki.contribs.org/Robotframework.

The current status of these test suites is that it mainly 
excersize the server manager pages and are able to access the
server under test using SSH and FTP but at this stage there is
not a lot of real testing going on.

We hope to expand on that soon and would welcome contributions
towards this (even if it is only some suggested test sequences).


Robot Framework
---------------

Follow the instructions from 
https://code.google.com/p/robotframework/wiki/Installation to install 
the Robot Framework on the development machine where you run the tests from.

Assuming that after you installed the framwork you have the Python 
package installer 'pip' available, install the following additional
robotframework libraries using 'pip':

```
pip install robotframework-selenium2library
pip install robotframework-ftplibrary
pip install robotframework-sshlibrary
```

Clone the test repository
-------------------------

```
git clone https://github.com/MarcoHess/smeserver-test-automation.git
```

Configure test for target machine
---------------------------------

There are a few minimal configuration parameters that need to be set to 
allow the Robot Framework to find your test server.

The "resource.robot" file in the top "sme" directory contains a number 
of variables and macros that are used by the test scripts.

The key ones that you need to change are:

```
${SERVER NAME}       sme9-64
${SERVER DOMAIN}     through-ip.com
${VALID PASSWORD}    Admin-Test-1234
```

Note that the URL must be same as the FQDN for the server, as it uses this 
as a test on the title of the logged server manager web page.

The tests assume that the ${SERVER NAME}.${SERVER DOMAIN} resolve to the 
correct IP of that server. I typically setup entries for test servers with 
a host name entry on my main server.

Running Tests
-------------

The tests are setup in an hierarchical fashion. To run all tests:

```
pybot sme
```

To run a subset of the tests use:

```
pybot sme/02__server-manager
```

or for the ftp tests:

```
pybot sme/03__remote_access/02__ftp/
```

and ssh by

```
pybot sme/03__remote_access/03__ssh/
```

Contributing to SME Server Test Automation
------------------------------------------

It would be great if you could add and expand on these tests to build these tests
towards a comprehensive acceptance test suite for SME Server releases.

There is a great description on GitHub for the process of contributing to a project:
https://help.github.com/articles/fork-a-repo


