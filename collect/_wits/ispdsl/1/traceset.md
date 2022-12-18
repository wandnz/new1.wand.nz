---
layout: witset
setname: ISPDSL I
counts: 478
end: Fri Jan 16 10:00:02 2009
format: ERF, captured using a DAG 3.7 GE card
traf_bytes: 5,311 GB
pkts: 9,815 million
start: Tue Jan  6 10:54:11 2009
anon: IP addresses anonymised using Crypto-Pan AES encryption.
duration: 9 Days, 21 Hours, 2 Minutes and 42 Seconds
cont: Mostly contiguous. Two gaps at either end of the set, but contiguous
download: ftp://wits.cs.waikato.ac.nz/ispdsl/1
rot: File is rotated on 30 minute boundaries, based on the start of the hour.
snap: Packets truncated four bytes after the end of the transport header, except for DNS.
size: 296 GB
description: A mostly continuous 10 day capture of residential DSL customer traffic from an unnamed New Zealand ISP. Capture was taken in January 2009.
---

This is a mostly continuous packet header trace captured from a New Zealand
ISP (which must remain unnamed). The traces were captured using a single DAG
3.7G card and the <a href="../../../projects/wdcap.html">
WDCap</a> trace capture software. The version of WDCap used was version 3.1.0
and the <a href="https://github.com/LibtraceTeam/libtrace">Libtrace
</a> version was 3.0.6.

The capture point was connected to a mirrored port on a switch that carried 
traffic to and from the core routers for the ISP. This configuration enabled us 
to capture all the traffic for the ISP's customers (and some internal stuff as 
well) in both directions. This particular traceset has been created by
filtering the <a href="../../localisp/c/1/traceset.html">original 
capture</a> to only include traffic involving the ISP's residential DSL 
subscribers. 

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

The IP addresses contained within the packets have been anonymised using
Crypto-Pan AES encryption, which is a prefix-preserving anonymisation method.
This means that unanonymised IP addresses that were on the same subnet will
also be identifiable as on the same subnet when the addresses are anonymized.
The same encryption key has been used throughout the entire traceset, so IP
anonymisation is consistent in all trace files. 

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

