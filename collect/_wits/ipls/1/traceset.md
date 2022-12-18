---
layout: witset
setname: IPLS I
counts: 48
cont: Entirely contiguous.
format: Legacy POS, captured using DAG 4.23 cards
duration: 0 Days, 2 Hours, 0 Minutes and 0 Seconds
traf_bytes: 1,458 GB
start: Wed Aug 14 09:00:00 2002
anon: IP addresses mapped into 10.*.*.* address space. Any payload after the transport header has been zeroed. Checksums have also been replaced.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/ipls/1
pkts: 2,046 million
end: Wed Aug 14 11:00:00 2002
download: ftp://wits.cs.waikato.ac.nz/pma/long/ipls/1
rot: Files were rotated every 10 minutes.
snap: Fixed-length 64 byte truncation.
size: 36 GB
description: Also known as Abilene I. A continuous 2 hour packet header trace taken in August 2002 from the Indianapolis router node on the Abilene network.
---

This trace set is also known as Abilene I.

This is a continuous 2 hour bidirectional packet trace set taken from the
Indianapolis router node on the Abilene network. Two OC48c links were measured:
the link to Cleveland (CLEV) and the link to Kansas City (KSCY). The captures
were performed using DAG 4.23 cards.

Each trace file is named using the following format: 
IPLS-[link]-yyyymmdd-HHMMSS-[direction].gz. The link describes the link that
was measured by the trace, either CLEV or KSCY. The time and date refers to the 
local time when the capture was started. The direction refers to which half of
the link is contained within the trace. Direction 0 is westbound and direction
1 is eastbound.  

The IP addresses in the traces have been replaced using a one-to-one mapping 
into the 10.0.0.0/8 address space. It is not clear how this anonymisation was
performed, however. It appears that the mapping database was preserved across
the entire trace set. 

Checksums have been replaced with zeroes in each packet and any retained payload
following the transport header has also been zeroed.

<b>Important note</b>: The old NLANR page about this trace set suggests that
there may be a bug with the wire length recorded for the packets in these 
traces, resulting in values that are incorrect by small amounts. As it is not
clear whether this was resolved, please avoid relying on the wire length for
any analysis performed using these traces.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

Acknowledgements: Some of the information presented on this page has bee
sourced from the old NLANR page about this traceset.
