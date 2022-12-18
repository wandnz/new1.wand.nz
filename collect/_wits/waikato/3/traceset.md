---
layout: witset
setname: Waikato III
counts: 185
cont: Mostly contiguous, but there are a few gaps.
format: ERF, captured using DAG 3.
duration: 160 Days, 11 Hours, 48 Minutes and 50 Seconds
traf_bytes: 9,144 GB
start: Mon Sep 25 16:48:32 2006
anon: IP addresses anonymized using Crypto-Pan AES encryption.
pkts: 21,984 million
end: Thu Mar  8 13:00:00 2007
rot: Daily rotation at Midnight UTC. Also rotate on AES key change.
snap: Packets truncated four bytes after the end of the transport header, except for DNS.
size: 545 GB
description: A mostly continuous 5 1/2 month trace taken between September 2006 and March 2007 at the University of Waikato uplink.
---

This is a continuous 5 1/2 month packet header trace captured at the
border of the University of Waikato network. The traces were captured using
a single DAG3 card and the
<a href="../../../projects/wdcap.html">WDCap</a> trace
capture software. The version of WDCap used was version 3.0.2 and the
<a href="https://github.com/LibtraceTeam/libtrace">
Libtrace</a> version was 3.0.0.

The capture point was located between the University's network infrastructure
and the commodity Internet. This allowed access to all the traffic that was
coming into and exiting the University. However, no internal traffic would
have been observed and captured by our capture point.
The capture machine performed all the anonymization and truncation before
exporting the packets via the network to a second machine. That machine
was also running WDCap which would read the packets off the network and
write the traces.

Each trace file is named using the following format: yyyymmdd-HHMMSS-[code].gz.
The time and date refers to the time in UTC when the first packet in the file
was captured. The code refers to the event which caused the previous file to be
closed and this new file to be created.

Codes of interest for this traceset are as follows:
<ul>
<li>0 - Rotation boundary was reached</li>
<li>1 - Encryption key was changed</li>
</ul>

Regular file rotation (code 0) occured daily at Midnight (UTC). Note that there
were a few software glitches when the capture of this traceset began,
resulting in some small gaps in the capture. However, from October 2 through
to February 7 the following year
the traceset is completely contiguous without any gaps whatsoever.

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
We change the encryption key once a week on Sunday midnight (local time).
This key change causes a file rotation, with a rotation code of 1.

The TCP and IP checksums have also been validated and anonymized. If the
checksum was correct, it has been replaced with 0. If the checksum was
incorrect, it has been replaced with 1.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.


