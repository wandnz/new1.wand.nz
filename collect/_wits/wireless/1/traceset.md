---
layout: witset
setname: Wireless I
count: 1
end: Sun Mar  9 13:28:50 2008
format: PCAP, captured using tcpdump.
traf_bytes: 6 GB
pkts: 38 million
start: Fri Mar  7 22:52:16 2008
anon: IP addresses anonymised using Crypto-Pan AES encryption, user payloads replaced with zeros.
duration: 1 Days, 14 Hours, 36 Minutes and 34 Seconds
cont: A passive wireless trace, so there will likely be gaps where packets were not received.
rot: N/A
snap: Full packets (no snapping), but with user payload replaced with zeros.
size: 871 MB
description: A 1 1/2 day 802.11 wireless trace taken in March 2008 from a busy site on CRCnet.
---

This is a 38 hour passive wireless trace captured at a busy site on CRCnet. The
trace was captured using a Soekris net5501 single-board computer using an
Atheros 5212 IEEE 802.11bg wireless NIC connected to a 10 dBi omni-directional
antenna. The trace was captured using MadWiFi version 0.9.4, tcpdump 3.8.3 and
libpcap 0.8.3. 

The capture point was situated next to a busy site on CRCnet which houses an AP
and is the end point of several point-to-point links. The MadWiFi driver was set
to monitor mode and was set to capture all frames, including those which failed
their IEEE 802.11 frame check sequence. Due to the nature of passive wireless
capture, there may be gaps in the trace where packets were not received by the
capture point but were received by the intended receiver. Additionally,
frames may be truncated or received off-channel.

Each packet in the trace is pre-pended with a <a
href="http://www.radiotap.org">Radiotap</a> wireless monitoring header which
includes information such as signal, noise and bitrate. The IEEE 802.11 MAC
header is also captured, followed by the entire packet payload (IP, TCP, etc).
The final four bytes of each packet make up the IEEE 802.11 Frame Check
Sequence (FCS) field.

Anonymisation of this trace is as follows: For frames that failed their FCS,
all data past the length of a standard 802.11 3-address data header is zeroed,
but the final four bytes are left as is. Note that for frames that failed their
FCS, these bytes may be four contiguous bytes from the user payload due to
truncation.

For frames that passed their FCS, non-data 802.11 frames (control and
management) are left as-is. Data frames are anonymised by zeroing all user
payload after the IP, ICMP, TCP or UDP headers. The final four bytes are left
intact and represent the IEEE 802.11 Frame Check Sequence field. Additionally,
IP addresses are anonymised using Crypto-Pan AES encryption, which is a
prefix-preserving anonymisation method.

The recommended method for processing these traces is to use <a
href="https://github.com/LibtraceTeam/libtrace">Libtrace</a>, which we
have developed. There are a number of tools included with libtrace such as a
packet dumping utility, a trace format converter (for example, to convert to
pcap), a trace splitting/filtering tool and a few statistic generators. We
suggest you examine the <a href="https://github.com/LibtraceTeam/libtrace/wiki">Libtrace
Wiki</a> for more details on the Libtrace tools and the library itself.

