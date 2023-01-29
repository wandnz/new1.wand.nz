---
layout: sections
name: libconfig
topic: Archived projects
description: libconfig is a simple library for dealing with parsing config files. It's used for several of WAND's projects.
title: libconfig
---

# libconfig

libconfig is a simple library for dealing with parsing config files. It's used for several of WAND's projects.

**The latest version is [1.0.5](../downloads/libconfig-1.0.5.tar.gz)**  
The latest version can always be retrieved from [here](../downloads/libconfig-latest.tar.gz)

## Installation instructions

Download the tarball, unpack, and run

<pre style="margin-left: 40px;">./configure ; make ; make install</pre>

libconfig will install into /usr/local by default. Bearing that in mind, you will probably need to update your library search path to point at /usr/local/lib, if it doesn't already:

<pre style="margin-left: 40px;">echo /usr/local/lib >> /etc/ld.so.conf
ldconfig
</pre>
