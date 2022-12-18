---
layout: witset
setname: IPLS II
counts: 334
end: Wed Oct  9 04:14:25 2002
format: Legacy POS, captured using DAG 4.23 cards
traf_bytes: 238,539,476 GB
pkts: 12,327 million
start: Tue Aug 27 05:40:05 2002
anon: IP addresses mapped into 10.*.*.* address space. Any payload after the transport header has been zeroed. Checksums have also been replaced.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/ipls/2
duration: 0 Days, 13 Hours, 58 Minutes and 22 Seconds
cont: Not contiguous at all.
download: ftp://wits.cs.waikato.ac.nz/pma/long/ipls/2
rot: 5 minute samples starting at a random time once per 3 hour period.
snap: Fixed-length 64 byte truncation.
size: 252 GB
description: Also known as Abilene II. A set of 5 minute traces taken between August and October 2002 from the Indianapolis router node on the Abilene network.
---

This trace set is also known as Abilene II.

This is a series of 5 minute traces taken from the Indianapolis router node on
the Abilene network. Two OC48c links were measured: the link to Cleveland
(CLEV) and the link to Kansas City (KSCY). The captures were performed using
the same infrastructure as <a href="../1/traceset.html">IPLS I</a>, including
the same DAG 4.23 capture cards.

The main difference between this and the previous IPLS capture is that this
is not a continuous capture. Rather, each trace covers a randomly selected
5 minute block from each 3 hour period. The random time is selected separately
for the two links, i.e. the time selected for CLEV will not match the one 
chosen for KSCY.

Some of the traces do not cover the full 5 minutes, but there is no
documentation to explain what occured in these instances. In some cases, both
directions are affected but there are also occasions where only one of the
traces is truncated.

Each trace file is named using the following format:
IPLS-[link]-yyyymmdd-HHMMSS-[direction].gz. The link describes the link that
was measured by the trace, either CLEV or KSCY. The time and date refers to the
local time when the capture was started. The direction refers to which half of
the link is contained within the trace. Direction 0 is westbound and direction
1 is eastbound.

The IP addresses in the traces have been replaced using a one-to-one mapping
into the 10.0.0.0/8 address space. Each anonymised address is assigned 
sequentially so the first real-world address observed is mapped to 10.0.0.1,
the next new address is 10.0.0.2 and so on. The mapping database is reset for
each capture; however, the two traces covering each direction will share the 
same mapping database. For example, IPLS-CLEV-20020827-054005-0 and
IPLS-CLEV-20020827-054005-1 share the same IP address mappings.

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

