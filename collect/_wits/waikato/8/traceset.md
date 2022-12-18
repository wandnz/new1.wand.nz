---
layout: witset
setname: Waikato VIII
size: 624 GB
start: Thu Apr  7 12:00:01 2011
end: Sat Nov  5 13:00:00 2011
duration: 86 Days, 17 Hours, 19 Minutes and 50 Seconds
pkts: 27,870 million
traf_bytes: 16,576 GB
counts: 99
download: ftp://wits.cs.waikato.ac.nz/waikato/8/
format: ERF, captured using a DAG 3 card.
anon: IP addresses anonymized using Crypto-Pan AES encryption.
cont: Mostly discontiguous, but there is a small series of traces that are contiguous.
rot: Daily rotation at Midnight UTC. Also rotate on AES key change.
snap: Packets truncated four bytes after the end of the transport header, except for DNS
description: A selection of traces taken between April 2011 and November 2011 at the University of Waikato uplink.
---

This is a selection of packet header traces captured at the border of the
University of Waikato network. The traces were captured using a single DAG 3
card and the <a href="../../../projects/wdcap.html">WDCap</a>
trace capture software. The version of WDCap used was version 3.1.2 and the
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>
version was a subversion build between 3.0.7 and 3.0.8.

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
<li>5 - Client reconnected after disappearing without notifying the server</li>
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

Unlike some previous Waikato datasets, this dataset was not intended to be
entirely contiguous. Instead, we have saved one day's worth of trace per week
during the capture process as well as occasionally retaining a fortnight's
worth of traces. There was a bug in the trace-retention script, however, that
meant that the first trace after a key change was not saved so most of these
fortnightly blocks also have a gap in them.

If you require a large contiguous block of traces, your best bets are the 
20111021 to 20111104 series (but even that has a potential break on 20111027)
or the 20110601 to 20110620 series.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

