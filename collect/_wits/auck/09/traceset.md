---
layout: witset
setname: Auckland IX
counts: 56
cont: One gap early in the trace set. Another trace appears to be missing.
format: ERF, captured using a DAG 4.3 card.
duration: 2 Days, 6 Hours, 4 Minutes and 12 Seconds
traf_bytes: 1,427 GB
start: Thu Mar 27 15:36:18 2008
anon: IP addresses anonymised using Crypto-Pan AES encryption.
pkts: 2,249 million
end: Sat Mar 29 22:40:31 2008
download: ftp://wits.cs.waikato.ac.nz/auckland/9
rot: Hourly rotation at the beginning of each hour.
snap: Packets truncated four bytes after the end of the transport header, except for DNS which retains 12 bytes of payload.
size: 0 MB
description: A mostly continuous 2 day packet header trace taken in March 2008 at the University of Auckland.
---

<b>NOTE: There is a major bug in this trace set.</b> Due to a libtrace bug, 
WDCap was incorrectly truncating some TCP packets prior to the TCP header. In
particular, packets that contained TCP options but no payload, e.g. SYN packets,
are affected. Obviously, this will severely inhibit any TCP-related analysis
using these traces. We apologise for this error.

This is a mostly contiguous packet header trace captured from a passive monitor located within the University of Auckland network. The traces were captured 
using a single DAG 4.3 card and the
<a href="../../../projects/wdcap.html">WDCap</a> trace capture
software. The version of WDCap used was version 3.0.9 and the
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>
version was 3.0.3.

The passive monitor was located near the edge of the University network and
captured all traffic that was coming into existing the University. However,
internal traffic that did not pass near the edge would not have been observed
at the capture point.
The passive monitor performed all of the capture tasks itself, including
packet truncation and writing the capture to disk.

There is no useful direction tagging in this traceset as both directions were
captured using the same DAG interface. This is in contrast to some other ERF
captures, e.g. Waikato, where each direction has a dedicated interface.

The traces have been subsequently anonymised using the traceanon tool included
with <a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
using the prefix-preserving Crypto-Pan encryption algorithm. The checksums
for each packet have also been replaced with zero.

Each trace file is named using the following format: yyyymmdd-HHMMSS-[code].gz.
The time and date refers to the time in UTC when the first packet in the file
was captured. The code refers to the event which caused the previous file to be
closed and this new file to be created.

Codes of interest for this traceset are as follows:
<ul>
<li>0 - Rotation boundary was reached</li>
<li>2 - DAG dropped packets</li>
</ul>

Regular file rotation (code 0) occured at the beginning of each hour.

There was one file rotation (20080327-040051-2) that occured due to the DAG
packet buffer overflowing and therefore some packets were not successfully
captured between that trace and the end of the previous one. 

There is also a trace that appears to be missing from the set between
20080327-220000-0 and 20080328-000000-0. Unfortunately, we have no idea what
happened to the missing trace.

Packet records are truncated four bytes after the end of the transport header
except in the case of DNS traffic, which is snapped twelve bytes after the
end of the transport header. This means that many packets will contain a
small amount of user payload - enough to perform some rudimentary layer 7
analysis without seriously threatening the privacy of the network users.
ICMP packets which are truncated after any IP and transport
headers that may be present in the packet payload.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

