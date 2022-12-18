---
layout: witset
setname: NZIX-I
counts: 228
end: Sun Apr 11 14:11:12 1999
traf_bytes: 73 GB
pkts: 238 million
start: Thu Nov 12 10:56:44 1998
duration: 1 Days, 13 Hours, 48 Minutes and 6 Seconds
size: 7 GB
cont: None.
format: Legacy NZIX
anon: IP address all mapped non-reversibly into 0.X.X.X address space
rot: No genuine rotation, although each trace is approximately 10 minutes in length.
snap: All records are 54 bytes long - data beyond the transport header has not been zeroed
description: A collection of 10 minute traces taken between November 1998 and April 1999 from the New Zealand Internet Exchange hosted by the ITS department at the University of Waikato.
---

This is a collection of 10 minute traces captured using a proprietary software
solution at the New Zealand Internet Exchange. NZIX was hosted by the ITS
department at the University of Waikato and served as a peering point among
a number of larger New Zealand ISPs. Unfortunately, we do not have a record
of which ISPs were connected to NZIX during the capture period.

The traces were captured using a proprietary software solution running on a
Debian Linux system equipped with a DE500 Ethernet card. A customized trace
format was used that recorded a timestamp, the packet wire length and a CRC.
The first 54 bytes of the packet starting from the Ethernet header was 
captured. The ability to read this format has been added to libtrace and
is present in Libtrace 3.0.3 (and later).

Each trace file is named using the following format: yyyymmdd-HHMMSS.mngd.gz.
The time and date refers to the local time when the capture was started.
However, the time used in the filename only appears to be loosely related to
the timestamps for the packets in the trace. The timestamps were not
synchronized to UTC and not corrected for clock drift. However, relative 
timestamps within the traces are believed to have an accuracy of better than
one millisecond. 

The traces have been anonymized by mapping the IP addresses into network
0.X.X.X in a non-reversible way. This mapping is preserved across all the
traces in the dataset, so IP addresses that are identical in the real world are
identical in different traces. Checksums are not anonymized in any way. 
Additionally, any packet payload after the transport header has not been
anonymized - this usually equates to 12 bytes of payload for UDP packets and
no payload for TCP. In fact, TCP headers are truncated prior to any TCP
options.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.
