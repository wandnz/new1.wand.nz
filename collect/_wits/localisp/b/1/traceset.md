---
layout: witset
setname: Local ISP B-I
counts: 4
end: Thu Feb 24 21:15:00 2005
duration: 0 Days, 1 Hours, 0 Minutes and 0 Seconds
traf_bytes: 125 GB
start: Thu Feb 24 10:45:00 2005
pkts: 310 million
size: 10 GB
format: ERF, captured using a DAG 3
cont: First 3 traces are contiguous, the last is standalone.
anon: None
rot: File is rotated every 15 minutes, based on the start of the hour.
snap: Packets truncated four bytes after the end of the transport header.
description: A collection of traces taken from an unnamed New Zealand ISP during February 2005.
---

This is a small collection of traces captured at a New Zealand ISP.
Due to NDA requirements, we cannot disclose the name of the ISP, nor can we
offer these traces for public download.
The traces were captured using a single DAG 3 card and the
<a href="../../../../projects/wdcap.html">WDCap</a> trace
capture software. The version of WDCap used was version 2.0.0 and the
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>
version was 2.0.13.

This traceset should be regarded as somewhat experimental as it consists of
traces taken during the deployment of the first capture point at the ISP.
The traceset is very small and probably shouldn't be used for serious
trace analysis - instead, we recommend using <a href="../2/traceset.html">Traceset II</a>
that we captured using a similar setup.

The capture point was connected to a SPAN port on a switch that carried some,
but not all, of the ISP's traffic. All the traffic that passed through that
switch was captured. The location of the capture point allowed us to capture
both incoming and outgoing traffic for a subset of customers. 
However, it appears that we only have a single direction available with this
traceset and the traces contain many records that have been truncated prior
to the Ethernet header. We suspect that those records are for the second
direction. As a result, bidirectional flow analysis is NOT possible with
these traces. 

Unlike the Waikato
tracesets that were also captured using WDCap, packets were captured and
written to disk using a single WDCap process - there was no network export
involved.

Each trace file is named using the following format: yyyymmdd-HHMMSS-[code].gz.
The time and date refers to the time in UTC when the first packet in the file
was captured. The code refers to the event which caused the previous file to be
closed and this new file to be created.

Codes of interest for this traceset are as follows:
<ul>
<li>0 - Rotation boundary was reached</li>
</ul>

Regular file rotation (code 0) occurs 4 times every hour, starting at the
beginning of the hour. All traces are 15 minutes in length. The traceset is
not totally contiguous - the last trace in the set is a standalone 15 minute
trace that was taken nearly 12 hours after the previous one.

The packets have truncated four bytes after the end of the transport header.
This means each packet record will contain four bytes of user payload.
ICMP packets which are truncated four bytes after any IP and transport
headers that may be present in the packet payload.

The recommended method for processing these traces is to use
<a href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>,
which we have developed. There are a number of tools included with libtrace
such as a packet dumping utility, a trace format converter (for example, to
convert to pcap), a trace splitting/filtering tool and a few statistic
generators. We suggest you examine the
<a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace Wiki</a> for more details
on the Libtrace tools and the library itself.
