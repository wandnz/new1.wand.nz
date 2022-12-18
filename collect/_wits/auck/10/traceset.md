---
layout: witset
setname: Auckland X
size: 869 GB
start: Tue Oct 20 15:09:45 2009
end: Thu Oct 29 15:08:16 2009
duration: 8 Days, 23 Hours, 58 Minutes and 30 Seconds
pkts: 35,965 million
traf_bytes: 26,447 GB
counts: 10
format: ERF, captured using a DAG 4.3 card.
cont: One trace was truncated very slightly for an unknown reason.
rot: Daily rotation at midnight UTC.
anon: No anonymisation has been performed on these traces, hence they are unavailable for download.
snap: Packets truncated four bytes after the end of the transport header, except for DNS which retains 12 bytes of payload.
description: A mostly continuous 9 day packet header trace taken in October 2009 at the University of Auckland.
---

This is a contiguous packet header trace captured from a passive monitor located
within the University of Auckland network. The traces were captured using a 
single DAG 4.3 card and the 
<a href="../../../projects/wdcap.html">WDCap</a> trace capture
software. The version of WDCap used was version 3.1.1 and the 
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>
version was 3.0.6.

The passive monitor was located near the edge of the University network and
captured all traffic that was coming into existing the University. However, 
internal traffic that did not pass near the edge would not have been observed 
at the capture point.
The passive monitor performed all of the capture tasks itself, including
packet truncation and writing the capture to disk. 

Each trace file is named using the following format: yyyymmdd-HHMMSS-[code].gz.
The time and date refers to the time in UTC when the first packet in the file
was captured. The code refers to the event which caused the previous file to be
closed and this new file to be created.

Codes of interest for this traceset are as follows:
<ul>
<li>0 - Rotation boundary was reached</li>
</ul>

Regular file rotation (code 0) occured daily at Midnight (UTC).

One of the trace files (20091024-000000-0) appeared to have been truncated
slightly prematurely, meaning that at least one packet was not correctly 
written to disk. This means that the trace set is not entirely contiguous and
there may be a small number of packets missing between the end of that trace
and the start of the next one. We do not know what caused this, but have
repaired the trace file to remove the partial packet that was written at the
end of the trace file.

Packet records are truncated four bytes after the end of the transport header
except in the case of DNS traffic, which is snapped twelve bytes after the
end of the transport header. This means that many packets will contain a
small amount of user payload - enough to perform some rudimentary layer 7
analysis without seriously threatening the privacy of the network users.
ICMP packets which are truncated after any IP and transport
headers that may be present in the packet payload.

The IP addresses contained within the packets have not been anonymised. We hope
to release an anonymised version of the trace set at some point in the future.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

