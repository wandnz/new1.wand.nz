---
layout: witset
setname: Auckland VII
counts: 126
end: Wed Jul 25 01:45:00 2001
format: ATM cell header capture.
cont: Mostly contiguous, but there are a number of gaps.
traf_bytes: 297 GB
pkts: 6,040 million
anon: No anonymization is required for ATM cell header captures.
ripedownload: https://data-repository.ripe.net/datasets/wits-archive/pma/long/auck/7/
duration: 0 Days, 15 Hours, 29 Minutes and 46 Seconds
snap: All records are 12 bytes long, containing 4 bytes of the ATM cell header.
download: ftp://wits.cs.waikato.ac.nz/auckland/7
rot: Files were rotated every 15 minutes.
start: Tue Jul 24 10:00:00 2001
size: 18 GB
description: A mostly continuous 15 1/2 hour ATM cell header trace taken in July 2001 at the University of Auckland.
---

This is a mostly continuous 15 and a half hour GPS-synchronized ATM cell
header trace captured using a DAG 3 card at the University of Auckland.
As this is an ATM cell header capture, there are no IP headers and, in
fact, very little information at all aside from a timestamp and most (but not
all) of the ATM cell header.

<b>Important:</b> Converting these traces to PCAP will result in the ATM cell
header being discarded for each packet, as there is no matching PCAP DLT for 
that link header. Please try to process these traces using their native format
wherever possible - most tools that require PCAP input would struggle with an
ATM cell capture anyway.

The tap was installed at an OC3c link carrying various Classical-IP-over-ATM,
LANE and POTS services. All cells were captured and immediately processed to
extract only the timestamp and header data. All other information was
discarded. Details regarding the types of traffic represented by each
VPI/VCI were saved, but our copies of the traces do not appear to have come
with that information.

A few of the traces in the set appear to have been prematurely aborted. We
do not know whether these breaks were caused by a hardware fault or a
network failure as there does not appear to be any documentation that
explains them. Additionally, we cannot produce any graphs or counts of the
traffic represented by the traces due to the lack of any such detail in the
records.

Each trace file is named using the following format:
yyyymmdd-HHMMSS-[direction].hdr.gz. The time and date refers to the local time
when the capture was started. The direction refers to which half of the link
is contained within the trace. Traditionally, Auckland traces have set
direction 0 as traffic coming into the University and direction 1 as traffic
originating from the University. However, without IP headers in the trace we
have not been able to confirm that this still holds for this traceset.

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
now defunct NLANR page about this traceset.

