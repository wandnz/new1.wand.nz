---
layout: sections
name: libtcpcsm
topic: Archived projects
description: The libtcpcsm software is designed to facilitate the analysis of TCP sending behaviour, i.e. detecting loss and reordering events or tracking congestion window size, in packet header traces. It is based on the libtrace trace processing library. 
title: libtcpcsm
---

# libtcpcsm

The libtcpcsm software is designed to facilitate the analysis of TCP sending behaviour, i.e. detecting loss and reordering events or tracking congestion window size, in packet header traces. It is based on the [libtrace](https://github.com/LibtraceTeam/libtrace/wiki) trace processing library.

The software consists of both libtcpcsm, a library that passively detects TCP congestion events in network traffic traces, and a series of tools built using libtcpcsm.

**The latest version is [1.0.3](../downloads/libtcpcsm-1.0.3.tar.gz)** - Released on 2013/05/28

Libtcpcsm correctly deals with variation in TCP implementations across different operating systems and recognises TCP features such as DSACK and F-RTO which can affect the size of congestion window. It has been extensively validated against a variety of systems - see [here for more details](http://www.wand.net.nz/~salcock/tcpcsm/valid.php).

Libtcpcsm and any tools built using it are licensed under the GPL v2.

## Recent changes

*   Fixed missing header in librtt.h that would prevent compilation when using recent versions of gcc.

## Requirements

Libtcpcsm requires the following libraries:

*   [libtrace](https://github.com/LibtraceTeam/libtrace/wiki)
*   [libflowmanager](https://github.com/wanduow/libflowmanager)
*   [libtcptools](libtcptools.html)

Libtcpcsm and the bundled tools have been developed and tested to run on the Linux operating system only. This software is not currently supported for other Unix-based operating systems, but may still build and run successfully.

## Usage

There are three tools currently shipped with libtcpcsm:

*   tcpcsm, which reports congestion events only.
*   flight_cwnd, which reports congestion events and flight sizes.
*   psh_analyser, which reports congestion events and PSH flights. A PSH flight is defined as the amount of data sent between TCP PSH flags.

Each tool can be run with the -h flag on the command-line to provide full usage information. Alternatively, there is also a README in the source directory for each tool which explains the tool in more detail.

The output format for events detected by libtcpcsm is documented in the README file, which is included with the libtcpcsm. Tool-specific events are documented in individual READMEs that are provided with each tool.

## Feedback

We are very interested in hearing feedback on libtcpcsm. If you have any requests or comments, or wish to report a bug, please email contact@wand.net.nz.