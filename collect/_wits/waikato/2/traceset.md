---
layout: witset
setname: Waikato II
counts: 345
end: Mon Sep 25 14:54:57 2006
start: Mon Nov 28 15:09:05 2005
traf_bytes: 15,789 GB
duration: 301 Days, 0 Hours, 45 Minutes and 52 Seconds
pkts: 34,712 million
size: 839 GB
cont: No gaps whatsoever
anon: IP addresses anonymized using Crypto-Pan AES encryption.
format: ERF, captured using a DAG 3 card.
rot: Daily rotation at Midnight UTC. Also rotate on AES key change.
snap: Packets truncated four bytes after the end of the transport header, except for DNS.
description: A continuous 10 month trace taken between November 2005 and September 2006 at the University of Waikato uplink.
---

This is a continuous 10 month packet header trace captured at the
border of the University of Waikato network. The traces were captured using
a single DAG3 card and the
<a href="../../../projects/wdcap.html">WDCap</a> trace
capture software. The version of WDCap used was version 2.0.13 and the
<a href="https://github.com/LibtraceTeam/libtrace">
Libtrace</a> version was 2.0.26.

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

Regular file rotation (code 0) occured daily at Midnight (UTC).

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

The IP checksums have been validated and anonymized. If the
checksum was correct, it has been replaced with 0. If the checksum was
incorrect, it has been replaced with 1. The TCP checksums have also been
validated and anonymized - however, the version of WDCap used had a bug where
the TCP checksum was set to 512 when correct and 0 when incorrect. This
should be taken into account by anyone studying packet errors and checksums.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

