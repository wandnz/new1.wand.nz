---
layout: witset
setname: Auckland V
counts: 30
end: Fri Jan 26 00:59:59 2001
format: ATM cell header capture.
traf_bytes: 133 GB
pkts: 2,710 million
start: Thu Jan 25 17:30:00 2001
anon: No anonymization is required for ATM cell header captures.
duration: 0 Days, 7 Hours, 30 Minutes and 0 Seconds
cont: No gaps whatsoever.
rot: Files rotated every 30 minutes.
snap: All records are 12 bytes long, containing 4 bytes of the ATM cell header.
size: 8 GB
description: A continuous 7 1/2 hour ATM cell header trace taken in January 2001 at the University of Auckland.
---

This is a continuous 7 and a half hour GPS-synchronized ATM cell
header trace captured using a DAG 3 card at the University of Auckland.
As this is an ATM cell header capture, there are no IP headers and, in
fact, very little information at all aside from a timestamp and most (but not
all) of the ATM cell header.

The tap was installed at an OC3c link carrying various Classical-IP-over-ATM,
LANE and POTS services. All cells were captured and immediately processed to
extract only the timestamp and header data. All other information was
discarded. 
We assume, but do not know for certain, details regarding the types of traffic 
represented by each VPI/VCI were saved, but our copies of the traces do not 
appear to have come with that information.

This traceset was withdrawn from NLANR's Special Traces Archive in favour
of Auckland VII. We do not know the reasons for the withdrawal. Until we
can ascertain that there is nothing wrong with this traceset,
recommend that you use <a href="../07/traceset.html">Auckland VII</a>
if you need to study an ATM cell header trace. However, Auckland V will 
remain part of the WITS project, even if it is for purely historical purposes.

Each trace file is named using the following format:
yyyymmdd-HHMMSS-[direction].gz. The time and date refers to the local time
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



