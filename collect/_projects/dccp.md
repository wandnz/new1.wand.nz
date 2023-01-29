---
layout: sections
name: DCCP
topic: Archived projects
description: DCCP (Datagram Congestion Control Protocol) is a transport level protocol designed to transport data over unreliable sessions using congestion control. It has been released as a series of RFCs (4340-4342) and has an IETF working group tracking it's progress.
title: DCCP
---

# DCCP

DCCP (Datagram Congestion Control Protocol) is a transport level protocol designed to transport data over unreliable sessions using congestion control. It has been released as a series of RFCs (4340-4342) and has an IETF working group tracking it's progress.

This protocol was developed by the [DCCP working group](https://datatracker.ietf.org/wg/dccp/about/) of the IETF.

WAND have been working on an implementation of DCCP for the Linux kernel. This has been used for various internal projects in the WAND lab and as a basis for research on the DCCP protocol.

This work has been based on the [work of Patrick McManus](http://www.ducksong.com/DCCP.php) and the work of Lulea University of Technology.

## Status

This is the first public release of the DCCP source code from the WAND lab. This release runs on Linux 2.4.27 and runs as a kernel module. The code at present conforms to the 0.1 spec of DCCP. It has been developed and tested on [User Mode Linux](http://user-mode-linux.sourceforge.net/)

At present there are some stability issues with the module but it is usable for research purposes.

Arnaldo Carvalho de Melo has merged parts of our release into the 2.6.x kernel tree and this was first released in 2.6.14, although it is recommended to use the latest version possible to get improvements to the codebase. This is a new code base which shares much of it's code with the Linux TCP implementation and draws upon WAND code for CCID3 implementation.

## Source code

The code for 2.4.27 is accompanied by install instructions, sample programs and a list of work to do (features and bugs).

The code can be downloaded by clicking on the below URL:

- [dccp-0.1.tar.gz](../downloads/dccp-0.1.tar.gz)

If you wish to use a version of the WAND code which has been ported to 2.6.11.4 please contact [Ian McDonald](http://wand.net.nz/~iam4) although it is recommended to use the code in the Linux kernel instead.

## Release Announcements

If you would like to receive notifications of future changes to DCCP for Linux the best way to receive these is to subscribe to the [kernel.org DCCP list](http://vger.kernel.org/vger-lists.html#dccp)
