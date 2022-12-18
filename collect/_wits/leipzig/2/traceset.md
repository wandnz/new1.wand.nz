---
layout: witset
setname: Leipzig II
counts: 18
end: Sat Feb 22 21:00:00 2003
format: Some traces are Legacy POS, others are ERF.
duration: 1 Days, 8 Hours, 46 Minutes and 1 Seconds
traf_bytes: 907 GB
start: Fri Feb 21 12:13:59 2003
anon: IP addresses replaced using one-to-one mapping into 10.0.0.0/8 address space. Any payload beyond the transport header has been replaced with zeroes.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/leip/2
pkts: 2,115 million
cont: Entirely contiguous
download: ftp://wits.cs.waikato.ac.nz/pma/long/leip/2
rot: Trace files were rotated on 6 hourly boundaries, based on the start of the day.
snap: 
Fixed length capture: 64 bytes for Legacy POS traces, 54 bytes for ERF.
size: 45 GB
description: A continuous 1 and a bit day packet header trace taken in February 2003 at the University of Leipzig.
---

This is a continuous short capture taken from the University of Leipzig Internet
access link. A pair of DAG 3 cards were used to monitor the OC3 
Packet-over-Sonet connection to the German research network (G-WiN). Also, 
a DAG 4.2GE card was used to monitor the 1000BaseSX link to the central campus
switch. A diagram of the capture configuration can be found 
<a href="../../../assets/images/wits/leipzig/gmwin.png">here</a>.

Each trace file is named using the following format: 
yyyymmdd-HHMMSS-[source].gz. The time and date refers to the local
time when the capture was started. The source refers to the interface that
was used to capture the traffic. A source of 0 or 1 indicates that the trace
is a legacy POS trace. Each legacy POS trace only contains either incoming or
outgoing traffic for the University; both traces must be combined to create a
bidirectional trace. If the source is 'e', then the trace was captured via an 
Ethernet interface and is in the ERF format. The ERF traces are bidirectional.

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
