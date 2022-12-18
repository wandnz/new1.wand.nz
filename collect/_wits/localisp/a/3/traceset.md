---
layout: witset
setname: Local ISP A-III
counts: 7
end: Wed Jan  5 18:35:40 2000
format: PCAP file captured using tcpdump.
duration: 13 Days, 5 Hours, 19 Minutes and 28 Seconds
traf_bytes: 43 GB
start: Mon Dec 20 16:02:30 1999
anon: None
pkts: 140 million
cont: Mostly contiguous - one trace lost to media corruption. 
rot: Files were rotated every 20 million packets.
snap: tcpdump snaplen was set to 100 bytes.
size: 5 GB
description: A collection of traces taken from an unnamed New Zealand ISP between December 1999 and January 2000.
---

This is a collection of traces taken at a New Zealand ISP using tcpdump on a
Linux box located inside the ISP's internal network. Due to NDA requirements,
we cannot disclose the name of the ISP, nor can we offer these traces for
public download.

Each trace file is named using the following format:
yyyymmdd-HHMMSS.tcpd.gz. The time and date refers to the local time
when the capture was started. Both directions are contained within the
single trace; however, the pcap format does not contain any information
about a packet's direction so it is not possible to ascertain which direction
a packet was travelling in the trace.

One of the traces that belonged to this set is not included in these pages, as
the trace appeared to have been corrupted when we restored it from tape. The
trace was 19991229-141228.tcpd.gz. We still have the corrupted version of the
trace which contained approximately 14 million packets prior to the point
where the trace was damaged, if required.

The previous traceset taken at this ISP used a script to synchronise the clock
after every file rotation. This caused some overlap in trace start and end
times. This overlapping is not present in this traceset but we do not know
whether this is because clock synchronisation was not performed at all during
the capture or because clock synchronisation was done in a better and less
obvious fashion. The trace files themselves are rotated every 20 million 
packets, just as they were in the previous traceset. However, there is a gap
of over a day between the first two traces in the set, which we cannot account
for. 

Timestamping within the traces themselves was taken using the system clock.
As a result, the timing will be affected by clock drift and a lack of
sub-microsecond accuracy, particularly considering that these traces were
captured back in 1999. Timing accuracy that we take for granted now was not
as readily available or widespread as when this traceset was captured.

The tcpdump snaplen for this traceset was set to 100 bytes, which is less than
that used in the previous tracesets captured at this ISP.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.
