---
layout: witset
setname: Local ISP B-II
counts: 108
end: Fri Jun 10 19:45:00 2005
format: ERF, captured using a DAG 3
duration: 1 Days, 2 Hours, 51 Minutes and 11 Seconds
traf_bytes: 3,282 GB
start: Thu Jun  9 16:53:50 2005
anon: None
pkts: 8,149 million
cont: Totally contiguous
rot: File is rotated every 15 minutes, based on the start of the hour
snap: Packets truncated eight bytes after the end of the transport header, except for DNS.
size: 364 GB
description: A continuous 26 hour trace taken from an unnamed New Zealand ISP during June 2005.
---

This is a continuous packet header trace captured at a New Zealand ISP. 
Due to NDA requirements, we cannot disclose the name of the ISP, nor can we
offer these traces for public download.
The traces were captured using a single DAG 3 card and the 
<a href="../../../../projects/wdcap.html">WDCap</a> trace
capture software. The version of WDCap used was version 2.0.0 and the
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>
version was 2.0.17.

The capture point was connected to a SPAN port on a switch that carried some,
but not all, of the ISP's traffic. All the traffic that passed through that
switch was captured. The location of the capture point allowed us to capture
both incoming and outgoing traffic for a subset of customers. This means that
bidirectional flow analysis is possible with these traces. Unlike the Waikato
tracesets that were also captured using WDCap, packets were captured and
written to disk using a single WDCap process - there was no network export
involved.

Each trace file is named using the following format: yyyymmdd-HHMMSS-[code].gz.
The time and date refers to the time in UTC when the first packet in the file
was captured. The code refers to the event which caused the previous file to be
closed and this new file to be created.

Codes of interest for this traceset are as follows:
<ul>
<li>0 - Rotation boundary was reached</li>
</ul>

Regular file rotation (code 0) occurs 4 times every hour, starting at the
beginning of the hour. All traces, aside from the very first and possibly the 
very last, are 15 minutes in length. The entire traceset is contiguous - there
are no gaps in the capture whatsoever.

Packet records are truncated eight bytes after the end of the transport header
except in the case of DNS traffic, which is snapped sixteen bytes after the
end of the transport header. This means that many packets will contain a
small amount of user payload - enough to perform some rudimentary layer 7
analysis without seriously threatening the privacy of the network users.
ICMP packets which are truncated four bytes after any IP and transport
headers that may be present in the packet payload.
The snap lengths are four bytes more than those used in other tracesets 
captured using WDCap 2. This is because the version of WDCap used in this
capture had a bug that was adding an extra four bytes to the snap length.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.
