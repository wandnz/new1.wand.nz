---
layout: sections
name: maji
topic: Projects
description: Maji is an implementation of an IPFIX meter based on the libtrace packet capture and processing library. IPFIX itself is a standardised method for performing and exporting flow measurement data, similar to the Cisco NetFlow standard.
title: maji
---

# maji

Maji is an implementation of an [IPFIX](http://www.ietf.org/html.charters/ipfix-charter.html) meter based on the [libtrace](https://github.com/LibtraceTeam/libtrace/wiki) packet capture and processing library. IPFIX itself is a standardised method for performing and exporting flow measurement data, similar to the Cisco NetFlow standard.

**The current version of Maji is [1.0.2](../downloads/maji-1.0.2.tar.gz) --- released 2011/07/18**

Maji is still relatively new software - we've put a lot of effort into ensuring that the code builds and executes correctly, but there will inevitably be many bugs and glitches that we haven't caught yet. Therefore, we apologise in advance if maji does not perform as well as might be expected. If you do encounter a bug or inaccuracy in maji, **please let us know** so that we can fix them before we do a proper release! Send your bug reports to [contact@wand.net.nz](mailto:contact@wand.net.nz) or post them on the [maji bug tracker](https://secure.wand.net.nz/trac/traceflow_ipfix/wiki).

A complete list of changes in the most recent release of Maji can be found [here](https://secure.wand.net.nz/trac/traceflow_ipfix/wiki/ChangeLog) .

Maji is open-source software and has been released under version 2 of the GPL. One of the aims of releasing maji is that other researchers will utilise some of the code for their own IPFIX-related projects. We will be quite happy to provide assistance to anyone looking to borrow or extend the maji codebase.

## Features

- Measure flows based on packet input provided via any libtrace-supported input format, including live PCAP interfaces, DAG capture cards and most common trace file formats
- Create your own custom template using any combination of over 50 standard IPFIX information elements
- No limit on the number of templates that can be active at any given time
- Export IPFIX messages via SCTP, TCP, UDP, stdout or to an SQLite database
- Pluggable information element modules make it easy to add new information elements.
- Support for Enterprise information elements and dynamic-length elements
- Create and export IPFIX messages containing option template records
- Configure the frequency that flow records for expired flows are exported

Maji acts as an IPFIX meter only. A small set of simple collectors have been implemented and are included with the maji distribution, but these are primarily intended for testing and verification of the maji exporters. The collection service they provide is very limited in its usefulness. However, as the IPFIX messages exported by the maji meter are entirely IPFIX compliant, it should be relatively easy to implement a collector to suit your own requirements. The simple collectors included with maji would serve as an excellent starting point and the documentation also includes notes on how one might go about extend the existing collectors.

## Supported IPFIX Templates

Unlike most existing IPFIX implementations, which only support a limited pre-defined set of flow definitions (or templates), maji allows users to specify their own custom templates using almost any combination of IPFIX information elements. This offers an impressive amount of flexibility in terms of what can be measured using the maji meter. For example, maji can be used to measure packet size distributions simply by specifying a template where ipTotalLength is the key and packetTotalCount is the flow data.

## Exporting Methods

Maji supports the following export mechanisms:

- Network over SCTP (requires a listening collector to be running)
- Network over TCP (requires a listening collector to be running)
- Network over UDP (requires a listening collector to be running)
- SQLite database (requires SQLite to be installed)
- Terminal via stdout

## Requirements

Maji requires the following libraries:

- [libtrace](https://github.com/LibtraceTeam/libtrace/wiki)
- [libconfuse](https://github.com/martinh/libconfuse)
- [libwandevent](../downloads/libwandevent-2.0.0.tar.gz)

The following libraries are optional, but required if you wish to use the associated exporter:

- libsctp - required for SCTP export
- libsqlite3 - required for SQLite export

Maji has been developed and tested on the Linux operating system (specifically Debian Squeeze). We doubt that it will build on any other operating system, but you're welcome to try it. Support for other operating systems, e.g. FreeBSD, may be added in future releases but is not a high priority at this stage.

## Interoperability

Maji has been implemented to conform to our understanding of the various IPFIX RFCs and drafts. Our interpretation of the specifications may not have always been correct and this could lead to interoperability issues with IPFIX collectors developed by other people. Regretably, we have spent little time on interoperability testing thus far, but would be very keen to hear of any incompatibilities encountered by our users.

## Usage

Detailed usage instructions for maji are included in the README file.

## Feedback

We are very interested in hearing feedback on maji. If you have any requests or comments, or wish to report a bug, please email [contact@wand.net.nz](contact@wand.net.nz)

## Supported Information Elements

The following is a list of all the information elements that have been implemented within maji thus far.

- destinationIPv4Address
- destinationIPv6Address
- destinationMacAddress
- destinationTransportPort
- flowDirection
- flowEndMicroseconds
- flowEndMilliseconds
- flowEndSeconds
- flowKeyIndicator
- flowStartMicroseconds
- flowStartMilliseconds
- flowStartSeconds
- fragmentFlags
- fragmentIdentification
- fragmentOffset
- icmpCodeIPv4
- icmpCodeIPv6
- icmpTypeCodeIPv4
- icmpTypeCodeIPv6
- icmpTypeIPv4
- icmpTypeIPv6
- ipClassOfService
- ipHeaderLength
- ipPayloadLength
- ipTotalLength
- ipTTL
- ipv4IHL
- ipVersion
- isMulticast
- maximumIpTotalLength
- maximumTTL
- meteringProcessId
- minimumIpTotalLength
- minimumTTL
- nextHeaderIPv6
- octetTotalCount
- octetTotalSumOfSquares
- packetTotalCount
- payloadLengthIPv6
- protocolIdentifier
- sourceIPv4Address
- sourceIPv6Address
- sourceMacAddress
- sourceTransportPort
- tcpAcknowledgementNumber
- tcpAckTotalCount
- tcpDestinationPort
- tcpFinTotalCount
- tcpHeaderLength
- tcpPshTotalCount
- tcpRstTotalCount
- tcpSequenceNumber
- tcpSourcePort
- tcpSynTotalCount
- tcpUrgentPointer
- tcpUrgTotalCount
- tcpWindowScale
- tcpWindowSize
- templateId
- totalLengthIPv4
- udpDestinationPort
- udpMessageLength
- udpSourcePort
