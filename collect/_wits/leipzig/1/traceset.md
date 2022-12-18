---
layout: witset
setname: Leipzig I
counts: 38
end: Tue Nov 26 13:59:59 2002
format: Legacy POS
traf_bytes: 1,615 GB
pkts: 3,429 million
start: Thu Nov 21 20:00:00 2002
anon: IP addresses replaced using one-to-one mapping into 10.0.0.0/8 address space. Any payload beyond the transport header has been replaced with zeroes.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/leip/1
duration: 4 Days, 18 Hours, 0 Minutes and 0 Seconds
cont: Entirely contiguous
download: ftp://wits.cs.waikato.ac.nz/pma/long/leip/1
rot: Trace files were rotated on 6 hourly boundaries, based on the start of the day.
snap: 64 byte fixed-length capture.
size: 64 GB
description: A continuous 4 1/2 day packet header trace taken in November 2002 at the University of Leipzig.
---

This is a continuous short capture taken from the University of Leipzig Internet
access link. A pair of DAG 3.2 cards were used to monitor the OC3 
Packet-over-Sonet connection to the German research network (G-WiN). A diagram
of the capture configuration can be found
<a href="../../../assets/images/wits/leipzig/gmwin.png">here</a>.

Each trace file is named using the following format: 
yyyymmdd-HHMMSS-[direction].gz. The time and date refers to the local
time when the capture was started. The direction refers to the half of the
link that was monitored. It is not clear which directions correlate to incoming
and outgoing traffic, unfortunately. Both traces can be combined to create a
full bidirectional trace.

All non-IP traffic has been discarded and only TCP, UDP and ICMP traffic is
present in each trace. Any user payload within the capture record has been
zeroed.

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
NLANR page about this trace, which no longer exists.

