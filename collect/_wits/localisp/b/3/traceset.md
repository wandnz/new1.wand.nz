---
layout: witset
setname: Local ISP B-III
size: 1,319 GB
start: Thu Feb  8 11:53:28 2007
end: Mon Feb 12 21:17:37 2007
duration: 4 Days, 9 Hours, 24 Minutes and 9 Seconds
pkts: 33,089 million
traf_bytes: 16,599 GB
counts: 212
cont: Totally contiguous
rot: File is rotated every 30 minutes, based on the start of the hour.
format: ERF, captured using a DAG 3.7G
anon: None
snap: Packets truncated four bytes after the end of the transport header, except for DNS.
description: A continuous 4 1/2 day trace taken from an unnamed New Zealand ISP during February 2007.
---

This is a continuous packet header trace captured at a New Zealand ISP.
Due to NDA requirements, we cannot disclose the name of the ISP, nor can we
offer these traces for public download.
The traces were captured using a single DAG 3.7G card and the 
<a href="../../../../projects/wdcap.html">WDCap</a> trace
capture software. The version of WDCap used was version 3.0.5 and the
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>
version was 3.0.0.

The capture point was connected to a SPAN port on a switch that carried some,
but not all, of the ISP's traffic. The switch was located between an LNS and
a core router. It is important to note that 
the location of this capture point is different to that which was used to
capture previous tracesets at this ISP. The location allowed us to capture
both incoming and outgoing traffic for a subset of customers. This means that
bidirectional flow analysis is possible with this traceset. Unlike the Waikato
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

Regular file rotation (code 0) occurs twice every hour, starting at the
beginning of the hour. All traces, aside from the very first and the
very last, are 30 minutes in length. The entire traceset is contiguous - there
are no gaps in the capture whatsoever.

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

