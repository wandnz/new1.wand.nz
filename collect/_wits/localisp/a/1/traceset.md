---
layout: witset
setname: Local ISP A-I 
size: 4 GB
start: Tue Nov  2 14:04:18 1999
end: Wed Nov 10 06:56:16 1999
duration: 4 Days, 21 Hours, 7 Minutes and 23 Seconds
pkts: 52 million
traf_bytes: 17 GB
counts: 5
cont: None
anon: None
format: PCAP file captured using tcpdump.
rot: No file rotation.
snap: tcpdump snaplen was set to 256 bytes.
description: A collection of traces taken from an unnamed New Zealand ISP during November 1999.
---

This is a collection of traces taken at a New Zealand ISP using tcpdump on a
Linux box located inside the ISP's internal network. Due to NDA requirements,
we cannot disclose the name of the ISP, nor can we offer these traces for
public download. Each trace is approximately 24 hours in length.

Each trace file is named using the following format:
yyyymmdd-HHMMSS.tcpd.gz. The time and date refers to the local time
when the capture was started. Both directions are contained within the
single trace; however, the pcap format does not contain any information 
about a packet's direction so it is not possible to ascertain which direction
a packet was travelling in the trace.

This traceset does feature some timestamp-related anomalies. The first is
that packets that originated from the capture box itself would cause the
timestamps to warp backwards due to a problem with the Linux kernel. 
Another problem is that in the second trace, 19991103-182803.tcpd.gz, the
time was reset on the capture box.  

Timestamping within the traces themselves was taken using the system clock. 
As a result, the timing will be affected by clock drift and a lack of 
sub-microsecond accuracy, particularly considering that these traces were
captured back in 1999. Timing accuracy that we take for granted now was not
as readily available or widespread as when this traceset was captured.

The tcpdump snaplen was set to 256 bytes. This means that many packets will
contain a significant quantity of layer 7 payload. This may make these traces
useful for analysing layer 7 protocol behaviour - particularly those protocols
that typically send packets shorter than the snap length used here.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

