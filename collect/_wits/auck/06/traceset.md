---
layout: witset
setname: Auckland VI
counts: 80
end: Wed Jun 13 08:54:05 2001
format: Some traces are Legacy ATM, others are Legacy Ethernet
traf_bytes: 345 GB
pkts: 844 million
start: Thu May 10 16:23:11 2001
anon: IP addresses replaced using one-to-one mapping into 10.*.*.* address space. Any payload that has not been truncated is zeroed.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/auck/6/
duration: 4 Days, 14 Hours, 54 Minutes and 49 Seconds
cont: Contiguous, aside from the single trace taken in May when the DMZ was 10Mbps
download: ftp://wits.cs.waikato.ac.nz/auckland/6
rot: 6-hourly rotation based on Midnight local time
snap: Fixed-length 64 byte truncation.
size: 17 GB
description: A continuous 4 1/2 day three point trace taken in June 2001 at the University of Auckland.
---

This is a continuous 4 and a half day GPS-synchronized IP header trace taken
using 3 DAG 3 cards to capture traffic simulataneous at three different points
in the University of Auckland Internet
infrastructure.

A router connects the ISP ATM switch to a 100 Mbps Ethernet hub (Allied Telesyn
CentreCOM FH812u V2i), which is linked via the firewall to a second identical
hub. The very first trace, however, was taken when the DMZ was still working at
10 Mbps utilizing two 3Com hubs instead of the Allied Telesyn types. One pair
of DAG 3 ATM cards tapped the link between the ISP and the ATM switch. A DAG 3
Ethernet card was connected with its port 0 to a hub outsize DMZ and with its
port 1 to a hub inside DMZ. With this configuration, the entirety of the
University's Internet traffic is being monitored.

Each trace file is named using the following format:
yyyymmdd-HHMMSS-[format][direction].gz. The time and date refers to the local
time when the capture was started. The direction refers to which half of the
link is contained within the trace. Direction 0 is traffic coming into the
University and direction 1 is traffic originating from the University.
The Ethernet traces have their direction prefixed with the letter 'e' to
signify their capture format. The ATM traces have no such letter.

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
<a href="http://pma.nlanr.net/Traces/long/auck6.html">NLANR page</a> about this
traceset.

