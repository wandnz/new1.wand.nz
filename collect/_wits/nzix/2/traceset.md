---
layout: witset
setname: NZIX-II
counts: 21
end: Mon Jul 10 14:56:27 2000
format: Legacy Ethernet, captured using a DAG 3 card.
duration: 4 Days, 23 Hours, 27 Minutes and 27 Seconds
traf_bytes: 200 GB
start: Wed Jul  5 15:29:00 2000
anon: IP addresses all mapped non-reversibly into 10.X.X.X address space
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/nzix/2
pkts: 835 million
cont: 5 days of contiguous trace
download: ftp://wits.cs.waikato.ac.nz/pma/long/nzix/2
rot: Files rotated every 12 hours, based on Midnight local time
snap: All records are 64 bytes long, but any data beyond the transport header is zeroed.
size: 22 GB
description: A continuous 5 day trace taken in July 2000 from the New Zealand Internet Exchange hosted by the ITS department at the University of Waikato.
---

This is a collection of GPS-synchronized IP header traces captured using a 
DAG32E at the New Zealand Internet Exchange. NZIX was hosted by the ITS
department at the University of Waikato and served as a peering point among
a number of larger New Zealand ISPs. When the measurements were taken in
July 2000, the following parties were connected:

<ul>
<li>Telecom New Zealand</li>
<li>Clear Communications</li>
<li>Telstra New Zealand</li>
<li>Asia Online New Zealand (ICONZ)</li>
<li>AT&T New Zealand</li>
<li>University of Waikato, including a number of smaller organizations</li>
</ul>

At the time, NZIX consisted of two Cisco 2926 26 port 10/100 autosensing 
Ethernet switches running spanning tree for redundancy. Each ISP had their own 
WAN circuits back to their respective locations, either in Auckland or 
Wellington. The DAG monitor was connected to a SPAN port via 100BaseTx 
FastEthernet. 

As a result, timestamps in the traces are skewed compared to their
arrival or departure times at the input/output ports of the switch as the
total capacity of the switch is higher than the monitoring uplink. Packets
arriving from different ports at the same time needed to be queued (or
dropped) before being delivered to the SPAN port. It is possible that traffic
was lost before being monitored, but we estimate that the chance of this is
fairly low because the total bandwidth at the switch peaked at around 10-12 
MBits/sec. 

Each trace file is named using the following format: yyyymmdd-HHMMSS.gz.
The time and date refers to the local time when the capture was started.
Both directions are contained within the trace but the legacy DAG formats
do not support differentiating between directions.

All non-IP traffic has been discarded and only TCP, UDP and ICMP traffic is
present in the trace. Any user payload within the 64 byte capture record has
been zeroed.

The traces have been anonymized by mapping the IP addresses into network
10.X.X.X in a non-reversible way. This mapping is preserved across all the
traces in the dataset, so IP addresses that are identical in the real world are
identical in different traces. Checksums are not anonymized in any way.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

