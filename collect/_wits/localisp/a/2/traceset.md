---
layout: witset
setname: Local ISP A-II
size: 3 GB
start: Fri Dec 10 16:09:05 1999
end: Fri Dec 17 14:51:48 1999
duration: 6 Days, 11 Hours, 16 Minutes and 0 Seconds
pkts: 75 million
traf_bytes: 24 GB
counts: 4
cont: First three traces are contiguous - the last trace is standalone.
anon: None
format: PCAP file captured using tcpdump.
rot: File is rotated every 2 million packets.
snap: tcpdump snaplen set to 120 bytes.
description: A collection of traces taken from an unnamed New Zealand ISP during December 1999.
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

These traces were captured using a script that rotated the trace file after
20 million packets had been captured. When the file was rotated, the clock
on the capture box was resynchronised. An interesting side-effect of this
is that the end time of a trace and the start time of the next trace will
overlap due to clock drift during the trace's capture. Because of the 
inaccurate timing, we can only assume that traces that overlap are contiguous
but we cannot be 100% certain.

Timestamping within the traces themselves was taken using the system clock.
As a result, the timing will be affected by clock drift and a lack of
sub-microsecond accuracy, particularly considering that these traces were
captured back in 1999. Timing accuracy that we take for granted now was not
as readily available or widespread as when this traceset was captured.

The tcpdump snaplen for this traceset was set to 120 bytes, significantly 
smaller than that used in the previous traceset from this ISP. Obviously,
there will be less layer 7 payload available in this traceset.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.

