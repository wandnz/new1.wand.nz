---
layout: sections
name: NSC
topic: Projects
description: The Network Simulation Cradle (NSC) is a framework which allows real world TCP/IP network stacks to be used inside a network simulator. More information here.
title: NSC
---

# Network Simulation Cradle

## Abstract

The Network Simulation Cradle (NSC) is a framework which allows real world TCP/IP network stacks to be used inside a network simulator. More information [here](http://www.wand.net.nz/~stj2/nsc/).

## About

Currently NSC allows using the following network stacks in the network simulator [ns-2](http://www.isi.edu/nsnam/ns/):

- [Linux](http://www.kernel.org)
- [FreeBSD](http://www.freebsd.org)
- [OpenBSD](http://www.openbsd.org)
- [lwIP](http://savannah.nongnu.org/projects/lwip/)

## Development version

The development version is available via [mercurial](http://www.selenic.com/mercurial/wiki/), and can be found [here](https://secure.wand.net.nz/mercurial/nsc). To obtain a working copy of the repository use the following command:

<pre>hg clone https://secure.wand.net.nz/mercurial/nsc
</pre>

## Releases

**May 8 2012** - [Download version 0.5.3](../downloads/nsc-0.5.3.tar.bz2) - [ChangeLog](../downloads/ChangeLog-0.5.3.txt)

Further bug fixes including support for newer gcc.

**August 12 2010** - [Download version 0.5.2](../downloads/nsc-0.5.2.tar.bz2) - [ChangeLog](../downloads/ChangeLog-0.5.2.txt)

More minor bug fixes.

**September 21 2009** - [Download version 0.5.1](../downloads/nsc-0.5.1.tar.bz2) - [ChangeLog](../downloads/ChangeLog-0.5.1.txt)

Minor bug fixes and a gcc-4.4 support contributed by Florian Westphal.

**November 19 2008** - [Download version 0.5.0](../downloads/nsc-0.5.0.tar.bz2) - [ChangeLog](../downloads/ChangeLog-0.5.0.txt)

Minor bug fixes and a getsockname/getpeername rework.

**October 10 2008** - [Download version 0.4.1](../downloads/nsc-0.4.1.tar.bz2) - [ChangeLog](../downloads/ChangeLog-0.4.1.txt)

New build system, better 64-bit support, and new testing infrastructure.

**August 26 2008** - [Download version 0.4.0](../downloads/nsc-0.4.0.tar.bz2) - [ChangeLog](../downloads/ChangeLog-0.4.0.txt)

Add Linux 2.6.26, 64-bit support, major changes to the globaliser, and many other changes. Thanks goes to the Google Summer of Code student Florian Westphal for his work on this version.

**January 10 2008** - [Download version 0.3.0](../downloads/nsc-0.3.0.tar.bz2) - [ChangeLog](../downloads/ChangeLog-0.3.0.txt)

Add Linux 2.6.18, including support for net/sched code and the "tc" utility. Upgrade to globaliser version 1.1.0\. Many other changes, see the changelog for details.

**November 22 2006** - [Download version 0.2.3](../downloads/nsc-0.2.3.tar.bz2)

Add support for ns 2.30\. Fix bug in NSCAgent::gettime(). Use globaliser version 1.0.1\. Add very early support for OMNeT++ (not really usable yet).

**April 20 2006** - [Download version 0.2.2](../downloads/nsc-0.2.2.tar.bz2)

Minor release. Fix some small memory leaks in Linux 2.6 and the ns-2 agent. Fix a compile error in the ns-2 agent that stopped NSC 0.2.1 from compiling.

**April 10 2006** - [Download version 0.2.1](../downloads/nsc-0.2.1.tar.bz2)

Minor release. Fix Linux stacks to allow MTUs of greater than 1500 bytes. Update the ns-2 agent with fixes from Fred De Backer to allow setting some Linux sysctls (tcp_congestion_control, tcp_rmem, tcp_wmem).

**April 4 2006** - [Download version 0.2.0](../downloads/nsc-0.2.0.tar.bz2) - [ChangeLog](../downloads/ChangeLog-0.2.0.txt)

New release featuring many bugfixes over the initial release. The stacks have been validated much more. The stacks are still the older versions, though a newer (and somewhat unvalidated) version of Linux is additionaly included - 2.6.14.2\. Thanks to Fred de Backer for his work on this.

**May 23 2005** - [Download version 0.0.1](../downloads/nsc-0.0.1.tar.bz2)

Initial release. It is not very polished from an installation point of view. Information on how to compile and install is in the INSTALL file in the archive. Please the the README file also. One sample script is included to perform a simple simulation.

## Author

This software was written by Sam Jansen.
