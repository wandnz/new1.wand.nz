---
layout: witset
setname: Auckland VIII
counts: 312
end: Mon Dec 15 23:59:59 2003
format: ERF, captured using a DAG 3 card.
traf_bytes: 698 GB
pkts: 1,654 million
start: Wed Dec  3 00:00:00 2003
anon: IP addresses replaced using one-to-one mapping into 10.*.*.* address space.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/auck/8/
duration: 12 Days, 23 Hours, 23 Minutes and 37 Seconds
cont: Mostly contiguous, but there is one gap.
download: ftp://wits.cs.waikato.ac.nz/auckland/8
rot: File is rotated every hour.
snap: Truncated 20 bytes after start of both TCP and UDP headers. Payload for UDP DNS packets is NOT zeroed, all other UDP payload is zeroed.
size: 33 GB
description: A mostly continuous 13 day packet header trace taken in December 2003 at the University of Auckland.
---

This is a mostly continuous 2 week GPS-synchronized IP header trace taken
using a DAG3.5E Ethernet network measurement card at the University of Auckland.
Unlike previous Auckland tracesets, this capture was performed by
<a href="http://pma.nlanr.net">NLANR</a> rather than the WAND Group.

Each trace file is named using the following format: yyyymmdd-HHMMSS.gz.
The time and date refers to the local time when the capture was started.
The traces are bidirectional, in that both incoming and outgoing traffic
have been captured and written into the same trace file.

All non-IP traffic has been discarded and only TCP, UDP and ICMP traffic is
present in the trace. TCP and UDP packets are truncated 20 bytes after the
start of the transport header. Any retained UDP payload is zeroed, except in
the case of port 53 packets (DNS) which are not altered at all. 

The IP addresses in the traces have been replaced using a one-to-one mapping
into the 10.0.0.0/8 address space. Each anonymised address was assigned
sequentially so the first real-world address observed is mapped to 10.0.0.1,
the next new address is 10.0.0.2 and so on. The mapping database was preserved
across the entire trace set.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

Acknowledgements:
Some of the information presented on this page has been sourced from the
now defunct NLANR page about this traceset.

