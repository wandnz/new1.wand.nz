---
layout: sections
name: libtcptools
topic: Archived projects
description: Libtcptools is a library that leverages libtrace to perform several useful TCP analysis tasks, including RTT estimation, classification of reordering events and bandwidth estimation. 
title: Libtcptools
---

# libtcptools

Libtcptools is a library that leverages [libtrace](https://github.com/LibtraceTeam/libtrace) to perform several useful TCP analysis tasks, including RTT estimation, classification of reordering events and bandwidth estimation.

**The latest version is [1.0.1](../downloads/libtcptools-1.0.1.tar.gz)** - Released on 2009/11/29

All releases of libtcptools are licensed under the GPL v2.

## Recent changes:

*   Increased size of timer queue to support traces with high flow rates.
*   Fixed bug where the queue sizes can wrap.
*   Fixed missing header files that were causing compilation errors on newer versions of gcc.

## Requirements

Libtcptools requires the following libraries:

*   [libtrace](https://github.com/LibtraceTeam/libtrace)

Libtcptools has been developed and testing on the Linux operation system only. It may run on other Unix-based operating systems, but we cannot offer any guarantees that it will build or run successfully.

## Usage

Basic usage instructions are included in the README that accompanies the source code. Additional detailed documentation can be found within the source code itself.

## Feedback

We are always interested in hearing feedback about software projects such as libtcptools. If you have any requests or comments, or wish to report a bug, please email contact@wand.net.nz