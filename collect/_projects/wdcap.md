---
layout: sections
name: WDCap
topic: Projects
description: WDCap is a tool for capturing packet traces. It is heavily based on the libtrace library.
title: WDCap
---

# WDCap

WDCap is a tool for capturing packet traces. It is heavily based on the [libtrace](https://github.com/LibtraceTeam/libtrace/wiki) library. WDCap is currently not available for release but anyone interested in using it should contact us at [contact@wand.net.nz](mailto:contact@wand.net.nz) and we may be able to provide you with a copy of the current beta version.

## Input

WDCap accepts input from any libtrace input format including DAG, PCAP (from both live interface and trace file), ERF and the RT protocol. Multiple inputs may be used within a single WDCap instance - for example, reading from multiple DAG cards.

## Processing

WDCap features a modular design which allows users to specify which particular processing modules they wish to apply to the packets they capture. This design also allows programmers to create new modules if the provided ones do not meet their requirements. Multiple processing modules may be used within a single WDCap instance. The same module may be even be used multiple times.

The provided modules are as follows:

**Packet Processing**

A generic processing module that performs IP anonymization, header truncation and checksum verification.

**Direction Tagging**

Tags packets as incoming or outgoing based on a series of user-provided bpf filters.</dd>

**Packet Reordering**

Ensures packets arriving from multiple input sources are passed to subsequent modules in the correct order.

**Disk Output**

Writes packets to disk as packet traces. Supports all libtrace output formats including ERF and PCAP.

**RT Output**

Creates an RT protocol server which clients may connect to using any libtrace-based program (including WDCap). The server will then send the captured packets to the clients. RT Output can operate in both reliable and unreliable modes (see below).

## Requirements

WDCap requires the following libraries, all of which have been developed by WAND and will be made available (if they aren't already) upon WDCap's release:

- [libtrace](https://github.com/LibtraceTeam/libtrace/wiki)
- [libconfuse](https://github.com/martinh/libconfuse)
- libfifo
- libwandevent

WDCap compiles and runs under both Linux 2.4 and 2.6.

## File Rotation

The disk output module supports a trace file rotation feature which will close an existing output file and create a new trace file once a packet is observed that has been captured after a particular time. This allows a large long-term capture to be divided into smaller manageable traces that each cover a specific time period. All rotation times are in UTC.

The user may specify either a daily or hourly rotation period and the number of times to rotate within that period. For example, rotating 4 times within a daily period will result in file rotations at 12am, 6am, 12pm and 6pm. Rotating once within the same period will result in a file rotation at 12am only, creating separate trace files for each day. The rotation time is always determined from the start of the period rather than when WDCap was started.

The disk output module will also perform file rotation if any error occurs during capture, such as the capture device losing a packet or the connection between an RT server and client failing temporarily.

## Reliable vs Unreliable RT Output

The RT output module offers two methods for managing the internal fifo which is used to store packets prior to sending them out on the network.

The differences between the two modes are as follows:

**Reliable Mode**

- Only one client may be connected at any given time.
- An ack must be received for a packet before it is removed from the fifo.
- Packets are always inserted into the fifo, even if there is no client.
- Messages about the fifo's status (e.g. how full it is) are periodically sent to the client.

**Unreliable Mode**

- Any number of clients are allowed (although a large number may degrade performance).
- Once a packet is sent to a client, the fifo internal pointers for that client are updated past that packet (no ack is required).
- If there are no clients, packets are not inserted into the fifo.
- No fifo status messages are sent.

Essentially, reliable mode is recommended for transporting data between critical instances of WDCap, e.g. between a capture point and a machine writing the trace to disk. Unreliable mode is best when you want to allow general libtrace-based applications access to live packet data, e.g. BSOD visualizations.

The internal fifo itself may be disk-backed or memory-backed. Memory-backed fifos are faster but are limited by the amount of RAM available and do not persist outside of the WDCap instance. A disk-backed fifo can be much larger and will remain on disk after WDCap has exited, meaning that if some error should occur that causes WDCap to abort the contents of the fifo will still be available and those packets will not be lost. A disk-backed fifo is strongly recommended when using reliable mode.

## Example Usage

![WDcap image](../assets/images/projects/wdcap_fig.png# content-full-span)

The above example features three different computers, each running WDCap. The Capture Point is using libtrace to capture packets via the DAG card. The packets then pass through the packet processing module where the IP addresses are anonymized and the packets are truncated. The direction tagging module determines the direction the packet was travelling. The RT output module will then send those packets over the network to the Storage Machine. The RT output module is running in reliable mode to ensure no packets are lost before they are written to disk on the Storage Machine.

The Storage Machine receives the packets via libtrace's RT input format. They are then passed to the disk output module where the packet is written to disk. The packet is also passed to a unreliable RT output module which will send it to a third computer which is acting a general purpose RT server. The WDCap on the third machine is running only the RT output module in unreliable mode. This allows multiple libtrace-based clients, e.g. [BSOD](bsod.html) to connect and disconnect at will without disrupting the capture process. Those clients will have access to live packet capture data simultaneously without needing to interface directly with the capture device.

## Feedback

We're always interested in hearing feedback about WDCap. Feel free to send any suggestions, comments or complaints to [contact@wand.net.nz](mailto:contact@wand.net.nz)
