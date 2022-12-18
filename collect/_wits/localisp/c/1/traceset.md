---
layout: witset
setname: Local ISP C-I
counts: 479
end: Fri Jan 16 10:00:02 2009
traf_bytes: 10,351 GB
pkts: 18,740 million
start: Tue Jan  6 10:54:11 2009
duration: 9 Days, 21 Hours, 32 Minutes and 42 Seconds
size: 718 GB
cont: Two gaps, but there is a long contiguous section in the middle.
rot: File is rotated every 30 minutes, based on the start of the hour.
format: ERF, captured using a DAG 3.7G.
anon: None
snap: Packets truncated four bytes after the end of the transport header, except for DNS.
description: A mostly continuous 10 day trace taken from an unnamed New Zealand ISP during January 2009.
---

This is a mostly continuous packet header trace captured from a New Zealand ISP.
Due to NDA requirements, we cannot disclose the name of the ISP, nor can we 
offer these traces for public download in their current unanonymised format.
The traces were captured using a single DAG 3.7G card and the 
<a href="../../../projects/wdcap.html">WDCap</a> trace
capture software. The version of WDCap used was version 3.1.0 and the
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>
version was 3.0.6.

The capture point was connected to a mirrored port on a switch that carried
traffic to and from the core routers for the ISP. This configuration enabled us
to capture all the traffic for the ISP's customers (and some internal stuff as 
well) in both directions. As a result of this configuration, the monitoring 
covers a variety of different Internet services. These include residential DSL 
subscribers using dynamically allocated IP addresses, commercial customers 
using static IP addresses and Ethernet and users connecting through wireless 
hotspots. Fortunately, these different classes of user can be identified and
filtered if necessary using the VLAN tags present in the packet headers. 

No network export was involved in the capture process - all packets were
captured and written to disk using the same WDCap process.

Each trace file is named using the following format: yyyymmdd-HHMMSS-[code].gz.
The time and date refers to the time in UTC when the first packet in the file
was captured. The code refers to the event which caused the previous file to be
closed and this new file to be created.

Codes of interest for this traceset are as follows:
<ul>
<li>0 - Rotation boundary was reached</li>
<li>2 - DAG card dropped packets</li>
</ul>

Regular file rotation (code 0) occurs twice every hour, starting at the
beginning of the hour. There are two gaps in the trace set. The first gap
(between 20090106-010000-0 and 20090106-024703-0) marks the end of a short
set of traces that were saved when testing the capture setup. The capture 
proper began with 20090106-024703-0 and ran uninterrupted until 
20090114-004658-2, when an unknown error caused the capture buffer on the DAG
card to overflow. As a result, some packets that passed the capture point were
not captured and recorded to disk. Shortly afterward, the WDCap process was
able to catch up and resumed writing traces normally until the end of the 
trace set.

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

