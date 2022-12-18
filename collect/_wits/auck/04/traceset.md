---
layout: witset
setname: Auckland IV
counts: 94
end: Mon Apr  9 22:31:44 2001
format: Legacy ATM, captured using a DAG 3 card.
duration: 45 Days, 17 Hours, 29 Minutes and 59 Seconds
traf_bytes: 1,269 GB
start: Tue Feb 20 21:01:22 2001
anon: IP addresses replaced using one-to-one mapping into 10.*.*.* address space. Any payload that has not been truncated is zeroed.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/auck/4/
pkts: 3,157 million
cont: Contiguous from March 1 onwards, missing one VPI/VCI pair in earlier traces
download: ftp://wits.cs.waikato.ac.nz/auckland/4
rot: Daily rotation at 1pm UTC
snap: Fixed-length 64 byte truncation.
size: 63 GB
description: A continuous 6 1/2 week trace captured between February and April 2001 at the University of Auckland uplink.
---

This is a continuous 6 and a half week GPS-synchronized IP header trace taken
using a pair of DAG 3 cards at the University of Auckland Internet access link.

The tap was installed at an OC3 link carrying various Classical-IP-over-ATM,
LANE and POTS services. The trace contains all the IP headers of a pair of
redundant VPI/VCI's, which connect the University to its ISP. However, for
the last week in February the system was only configured to monitor one of
the VPI/VCI's so traces prior to March 1 do not include the second ATM channel.
This is also the cause for the gap between February 26 and March 1.

Each trace file is named using the following format:
yyyymmdd-HHMMSS-[direction].gz. The time and date refers to the local time
when the capture was started. The direction refers to which half of the link
is contained within the trace. Direction 0 is traffic coming into the University
and direction 1 is traffic originating from the University.

All non-IP traffic has been discarded and only TCP, UDP and ICMP traffic is
present in the trace. Any user payload within the 64 byte capture record has
been zeroed.

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
<a href="http://pma.nlanr.net/Traces/long/auck4.html">NLANR page</a> about this 
traceset.
