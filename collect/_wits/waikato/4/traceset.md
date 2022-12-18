---
layout: witset
setname: Waikato IV
counts: 65
end: Wed May 23 21:35:38 2007
format: ERF, captured using a DAG 3 card.
traf_bytes: 4,588 GB
pkts: 10,128 million
start: Wed Mar 28 16:53:13 2007
anon: IP addresses anonymized using Crypto-Pan AES encryption.
duration: 56 Days, 4 Hours, 42 Minutes and 24 Seconds
cont: No gaps whatsoever.
rot: Daily rotation at Midnight UTC. Also rotate on AES key change.
snap: Packets truncated four bytes after the end of the transport header, except for DNS
size: 255 GB
description: A continuous 2 month trace taken between March 2007 and May 2007 at the University of Waikato uplink.
---

This is a contiguous packet header trace captured at the border of the
University of Waikato network. The traces were captured using a single DAG 3
card and the <a href="../../../projects/wdcap.html">WDCap</a>
trace capture software. The version of WDCap used was version 3.0.6 and the
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>
version was 3.0.1.

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
closed and this new file to be created. Note that new codes have been added
in this edition of WDCap.

Codes of interest for this traceset are as follows:
<ul>
<li>0 - Rotation boundary was reached</li>
<li>1 - Encryption key was changed</li>
<li>4 - The capture process has been restarted</li>
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

