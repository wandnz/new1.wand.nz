---
layout: witset
setname: Waikato I
counts: 717
end: Wed Aug 17 22:02:39 2005
format: ERF, captured using a DAG 3 card.
traf_bytes: 21,434 GB
pkts: 53,263 million
start: Sun Dec  7 00:00:01 2003
anon: IP addresses anonymized using Crypto-Pan AES encryption.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/waikato/1
duration: 619 Days, 23 Hours, 0 Minutes and 34 Seconds
cont: Capture interface was disconnected a couple of times, but otherwise contiguous.
download: ftp://wits.cs.waikato.ac.nz/waikato/1
rot: Daily rotation at Midnight UTC. Also rotate on AES key change.
snap: Packets truncated after the end of the transport header.
size: 1,329 GB
description: A continuous 20 month trace taken between December 2003 and August 2005 at the University of Waikato uplink.
---

<b>This trace set is available for public download. See the above download
links.</b> 


This is a 600 day long packet header trace captured at the border of the
University of Waikato network. The traces were captured using a single DAG3
card and the <a href="../../../projects/wdcap.html">WDCap</a>
trace capture software. The version of WDCap used was version 1.0.0 and the
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a> 
version was 1.0.6.

The capture point was located between the University's network infrastructure
and the commodity Internet. This allowed access to all the traffic that was
coming into and exiting the University. However, no internal traffic would
have been observed and captured by our capture point. At one point during
the capture of this traceset, the hub that the capture point was connected to
was upgraded from 10 Mbit to 100 Mbit. This resulted in a small period where
no packets were captured and was also possibly the cause of one of the
connection resets that occurred during the capture of this traceset.

The capture machine performed all the anonymization and truncation before
exporting the packets via the network to a second machine. That machine 
was tasked with writing the packets to disk and rotating the trace files as
required.

Each trace file is named using the following format: yyyymmdd-HHMMSS-[code].gz.
The time and date refers to the time in UTC when the first packet in the file
was captured. The code refers to the event which caused the previous file to be
closed and this new file to be created. Note that the codes used for this
traceset are very different to those used in subsequent Waikato tracesets.

Codes of interest for this traceset are as follows:
<ul>
<li>0 - Rotation boundary was reached</li>
<li>64 - Connection to collector was restarted</li>
<li>128 - Encryption key was changed</li>
</ul>

Regular file rotation (code 0) occured daily at Midnight (UTC).

There were a few occasions where the connection between the collector and
the disk exporter was lost. 
Due to the reliable nature of our collection
process, no packets should have been lost as a result of such failures. 
However, it may be possible that a few duplicate packets may appear in the
traces both immediately before and after the connection was lost.

Additionally, the capture interface was accidentally disconnected on at least 
two occasions which resulted in gaps in the capture. The capture itself 
continued without any problem - just no packets were captured during the time
period where the interface was disconnected.

The packets have been truncated at the end of the transport header. No user
payload is included in any of the packets. However, ICMP packets are truncated
after 8 bytes of ICMP header - the IP header for the original datagram is not
included.

The IP addresses contained within the packets have been anonymised using
Crypto-Pan AES encryption, which is a prefix-preserving anonymisation method.
This means that unanonymised IP addresses that were on the same subnet will
also be identifiable as on the same subnet when the addresses are anonymized.
We change the encryption key once a week on Sunday midnight (local time).
This key change causes a file rotation, with a rotation code of 128.

The IP checksums have been validated and anonymized. If the
checksum was correct, it has been replaced with 0. If the checksum was
incorrect, it has been replaced with 1. TCP checksums have not been
anonymized, however.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.


