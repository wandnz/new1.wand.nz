---
layout: witset
setname: Auckland II
counts: 85
end: Mon Jul  3 18:34:36 2000
format: Legacy ATM, captured using a DAG 2 card.
duration: 24 Days, 7 Hours, 0 Minutes and 15 Seconds
traf_bytes: 359 GB
start: Mon Nov 29 13:42:58 1999
anon: IP addresses replaced using one-to-one mapping into 10.*.*.* address space
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/auck/2/
pkts: 996 million
cont: None
download: ftp://wits.cs.waikato.ac.nz/auckland/2
rot: No file rotation
snap: Fixed-length 64 byte truncation.
size: 27 GB
description: A collection of 24 hour traces captured at the University of Auckland between December 1999 and June 2000.
---

<b>NOTE:</b> The traces released here are NOT the traces that were originally 
released by NLANR. The NLANR release featured a bug in the anonymisation 
technique that meant that multiple real-world IP addresses were mapped to the 
same anonymised address. The traces on this page have been re-anonymised from 
the original captures using a corrected anonymisation tool.

We have retained the traces that were released by NLANR, although we strongly
recommend against using them. They can be accessed from <a 
href="ftp://wits.cs.waikato.ac.nz/auckland/archive/2"> here</a>.

<hr>

This is a collection of long GPS-synchronized traces taken using a pair of
DAG 2 cards at the University of Auckland. Most traces were targeted at 24 hour
runs, but hardware failures have resulted in most traces being significantly
shorter. The first trace taken is much longer, with over 1 and a half days of
traffic.

The tap was installed at an OC3 link carrying various Classical-IP-over-ATM,
LANE and POTS services. The trace contains all the IP headers of a single
VPI/VCI pair, which connects the University to its ISP. A cap for 2MBits/sec
peak packet rate is set in each direction. All external connections from the
University have to pass through the measurement point. Additionally, traffic
across a LANE connection to an offsite campus is included in the trace.

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
<a href="http://pma.nlanr.net/Traces/long/auck2.html">NLANR page</a> about this
traceset.


