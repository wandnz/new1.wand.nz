---
layout: witset
setname: IPLS III
counts: 50
end: Tue Jun  1 23:40:00 2004
format: ERF, captured using a DAG 6 card.
traf_bytes: 2,733 GB
pkts: 3,310 million
start: Tue Jun  1 19:31:21 2004
anon: IP addresses mapped into 10.*.*.* address space. Any payload after the transport header has been zeroed. Checksums have also been replaced.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/ipls/3
duration: 0 Days, 4 Hours, 8 Minutes and 39 Seconds
cont: Mostly contiguous, but a couple of gaps due to trace corruption.
download: ftp://wits.cs.waikato.ac.nz/pma/long/ipls/3
rot: Files were rotated on 10 minute boundaries.
snap: Fixed-length 64 byte truncation.
size: 62 GB
description: Also known as Abilene III. A mostly continuous 4 hour packet header trace taken in June 2004 from the Indianapolis router node on the Abilene network.
---

This trace set is also known as Abilene III.

This is a (mostly) contiguous passive trace set taken the Indianapolis router
node on the Abilene network, instrumenting the 10 Gigabit backbone. This
particular trace set measures an OC192c Packet-over-SONET link towards Kansas
City (KSCY) using a DAG 6.1 capture card.

When processing the traces to generate data for these webpages, we found that
two of the traces appeared to be corrupted, i.e. invalid values were present
in important fields such as the capture length or link type. As a result, we 
have truncated those traces at the point where we encountered the corrupt
packet. It is not clear where the corruption has arisen from - there is no
documentation to suggest that the traces were previously damaged. The original
copies of the truncated traces have been placed in the archive/ directory on
the FTP server. However, this does mean that the trace set is not completely
contiguous.

Each trace file is named using the following format:
yyyymmdd-HHMMSS-[direction].gz. The time and date refers to the local time
when the capture was started. The direction refers to which half of the link is
recorded in the trace. Direction 0 is westbound and direction 1 is eastbound.

The IP addresses in the traces have been replaced using a one-to-one mapping
into the 10.0.0.0/8 address space. Each anonymised address is assigned
sequentially so the first real-world address observed is mapped to 10.0.0.1,
the next new address is 10.0.0.2 and so on. The mapping database is preserved
across the entire trace set as far as we can tell.

Checksums have been replaced with zeroes in each packet and any retained payload
following the transport header has also been zeroed.

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

