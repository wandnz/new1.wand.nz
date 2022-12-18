---
layout: witset
setname: Auckland I
counts: 7
end: Mon Jul 12 14:14:12 1999
format: ERF, having been converted from the original DAG 2 format.
duration: 6 Days, 23 Hours, 56 Minutes and 21 Seconds
traf_bytes: 8 GB
start: Mon Jul  5 10:37:46 1999
pkts: 169 million
cont: Small gaps between each trace.
rot: No genuine rotation policy but traces are approximately 24 hours long.
size: 2 GB
description: A collection of 24 hour traces captured at the University of Auckland during July 1999.
---

This is a collection of long traces taken using a pair of DAG 2 cards at the
University of Auckland. The traces were targeted at 24 hour runs but the
XILINX image used on the DAG cards did not support fast interrupts nor
reliably reading the PPS timestamp register which meant the timing was not
GPS synchronized. This probably accounts for the slight variations in
trace duration and should be also be taken into account when performing
analysis that relies on the timestamps within the packets.

Unfortunately, documentation about this traceset and how it was captured is
minimal particularly because it has not been previously released to the public 
(to our knowledge, at least). We assume that the capture point was installed
in a similar location to <a href="../02/traceset.html">Auckland II</a> but we cannot confirm
that for certain.

The traces were originally captured using a very early DAG format, which 
libtrace does not understand. We decided it would be easiest if we simply
converted this traceset into the modern ERF format, so the traces described 
here are the ERF conversions of the original traces. We still have copies of 
the traces in their original format. One advantage of the ERF conversion is 
that we have combined together the originally separate traces for each 
direction into a single bidirectional trace.

Each trace file is named using the following format:
yyyymmdd-HHMMSS.erf.gz. The time and date refers to the local time
when the capture was started. 

All non-IP traffic has probably been discarded (again, we don't know for sure),
in which case there will only be TCP, UDP and ICMP traffic present in the 
trace. User payload within the 52 byte capture record has not been zeroed in
these traces. Additionally, the traces have not been anonymized in any other
fashion, although it is likely we will anonymize the contents of any traces
that we make available for public download.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.


