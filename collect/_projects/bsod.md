---
layout: sections
name: BSOD
topic: Archived projects
description: The bsod visualisation tool uses the libtrace framework to transform network traffic into a graphical format that can be viewed in real time. Capturing from a live network interface, or from a saved trace file, bsod visualises the flow of network data between hosts, providing (at a glance) information about network usage.
title: BSOD
---

# BSOD

The bsod visualisation tool uses the [libtrace](https://github.com/LibtraceTeam/libtrace/wiki) framework to transform network traffic into a graphical format that can be viewed in real time. Capturing from a live network interface, or from a saved trace file, bsod visualises the flow of network data between hosts, providing (at a glance) information about network usage.

[![](../assets/images/projects/bsod2_01.png# content-quart-span)](../assets/images/projects/bsod2_01.png) [![](../assets/images/projects/bsod2_02.png# content-quart-span)](../assets/images/projects/bsod2_02.png) [![](../assets/images/projects/bsod2_03.png# content-quart-span)](../assets/images/projects/bsod2_03.png) [![](../assets/images/projects/bsod2_04.png# content-quart-span)](../assets/images/projects/bsod2_04.png)

**NEW:** We now have a bug tracker and wiki up and running for BSOD, which can be accessed [here](http://wand.net.nz/trac/bsod/wiki).

<!--split-->

## Changes!

**May 15 2013**

A new version of the server (2.0.3) has been released. This release fixes a small number of bugs:

- Fixed timer assertion failure when running the server in a resource-constrained environment.
- Fixed the invalid free crash when using the lpicolour module.
- Fixed bugs relating to running various plugins with an unspecified parameter.
- Avoid wasting time removing and reinserting client events when nothing about that event has changed.
- Fixed minor memory leaks when looping over trace files

We've also added a new config option: client_wait. This will prevent the server from processing any packets until a client has connected, which can be handy if you are visualising trace files.

**February 28 2012**

A new version of the client (2.0.2) has been released. This release fixes the following bugs / issues:

- Fixed bug that caused packet particles to continue past the planes rather than stopping upon reaching the plane.
- Added the ability to move through the 3D space using the WASD keys.
- The Windows client now uses an MSI installer.

**February 24 2012**

Trace looping in BSOD server has been broken for quite a while now. We've tracked the problem down to a bug in libwandevent and managed to fix it successfully. If this has been a problem for you, updating to the new version of [libwandevent](https://github.com/wanduow/libwandevent) should fix it. The list of dependencies below has also been updated to link to the fixed version of libwandevent.

If looping input is still not working for you, please get in touch [with us](mailto:contact@wand.net.nz) and we will do our best to help you out.

**February 17 2012**

A new version of the server has been released. This release fixes a couple of bugs:

- Fixed build problem caused by a failure to correctly link against libdl.
- Fixed bug that would cause connected clients to crash or not display any packets when using recent versions of libprotoident.

**March 18 2011**

New versions of both the client and the server have been released. Major changes include:

- New colouring module for the server, based on [libprotoident](https://github.com/wanduow/libprotoident/wiki) .
- The client now runs on Mac OS X (10.5 or later) - it can be built from source or you can use the pre-built app bundle.
- Shaders are now correctly detected and utilised on ATI graphics cards.
- Both the client and server now provide a configure script that will check for dependencies, etc.
- Added support for CEGUI 0.7.
- Libdevil is no longer required - libpng is used instead. All images must be .png files now.
- Added a "reconnect" button to the disconnected dialog.
- Server list now remembers servers that have been previously described by the user.
- Text in the protocol dialog box is now readable if dark colours are used.
- Added a maximum frame rate option to the client, so that it does not consume excessive CPU.
- Numerous other little bug fixes, UI tweaks and enhancements.

**May 27 2009**:

The client now works on windows 7! This version fixes a few problems (esp with textures being upside down). No changes were made to the server.

**January 27 2009**:

This version introduces a complete rewrite of the client by Paul Hunkin. This allows for particles rendering and movement to be offloaded entirely onto the graphics card, has a server browser and several other new features. The server now can push a left and right image, so that images can be selected by source. The server now has configurable maximum sendq sizes.

**Febuary 28 2008**:

New versions of both the client and the server. This version should perform better under load. Also a fix to the server so it doesn't lockup occasionally.

**March 1 2007**:

New versions of both the client and the server. The config file format for the client has been changed since the last version. A new version of libtrace will be required. Dependancies that were built as part of the client and the server have been removed from the distribution and will need to be installed seperately.

**June 30 2006**:

New versions of both the client and the server. The networking protocol has changed since the last version. New features include a menu in the client to change the display, more efficient cpu and memory utilisation in both the client and the server. This version requires libtrace 3.  
This new release by default uses a new graphics card feature called "point sprites." Not all graphics cards have this feature. If you don't see any packets, try disabling "billboarding" in the config file.

**March 23 2005**:

New versions of both the server and client have been released. The packet format has changed since the last release, and so the new versions of client and server are incompatable with the old ones.

- Vastly better performance when a lot of flows are created and destroyed in a short period of time.
- Performance improvements across the board.
- Several new options to play with in the config file (see below).
- Added help page (press F1 while the client is running).
- P2P ports have their own colour now (for common ports only).
- Particles are jittered in low framerate situations making the visualization look more pleasing.
- New particle alpha map (looks nicer and creates dots, not squares, when particles are piled on top of each other).
- Added the ability to toggle between all traffic and darknet (traffic going to addresses which have been the source of no traffic)traffic, allowing you to see scans and other "garbage" traffic more easily.
- The server should now compile fine on FreeBSD

<!--split-->

## bsod Server

One half of the bsod visualisation is the server. This is responsible for the processing of captured packet headers, extracting the necessary information and packaging it for display by the client(s). The bsod server is known to compile and run on Linux and Mac OS X. Source code, along with instructions on how to build/run the server, is available for download:

- [bsod-server-2.0.3.tar.gz](../downloads/bsod-server-2.0.3.tar.gz)
- [bsod-server-2.0.2.tar.gz](../downloads/bsod-server-2.0.2.tar.gz)
- [bsod-server-2.0.1.tar.gz](../downloads/bsod-server-2.0.1.tar.gz)
- [bsod-server-1.6.0.tar.gz](../downloads/bsod-server-1.6.0.tar.gz)
- [bsod-server-1.5.1.tar.gz](../downloads/bsod-server-1.5.1.tar.gz)
- [bsod-server-1.5.0.tar.gz](../downloads/bsod-server-1.5.0.tar.gz)
- [bsod-server-1.4.0.tar.gz](../downloads/bsod-server-1.4.0.tar.gz)
- [bsod-server-1.3.0.tar.gz](../downloads/bsod-server-1.3.0.tar.gz)
- [bsod-server-1.2.2.tar.gz](../downloads/bsod-server-1.2.2.tar.gz)
- [bsod-server-1.1.0.tar.gz](../downloads/bsod-server-1.1.0.tar.gz)

#### Requirements

The following libraries are required to build bsod server 2.0.2:

- [libtrace](https://github.com/LibtraceTeam/libtrace/wiki)
- [libconfuse](https://github.com/martinh/libconfuse)
- [libwandevent](https://github.com/wanduow/libwandevent)
- [libprotoident](https://github.com/wanduow/libprotoident/wiki)

  (libprotoident is not strictly required, but the new protocol colouring module will not be available if you do not have it).

  Older versions of bsod server have slightly different requirements. Consult the documentation included with that version for more information.

<!--split-->

## bsod Client

The other half of bsod is the client. Taking the flow, packet and addressing information supplied by the server, it displays data travelling from source to destination. Source is available for download as well as precompiled Win32 and Mac OS X binaries.

- [bsod-client-2.0.2.tar.gz](../downloads/bsod-client-2.0.2.tar.gz) ([bsod-client-2.0.2-win32.msi](../downloads/bsod-client-2.0.2-win32.msi)) ([bsod-client-macosx-binary-2.0.2.dmg](/downloads/bsod-client-macosx-binary-2.0.2.dmg))
- [bsod-client-2.0.1.tar.gz](../downloads/bsod-client-2.0.1.tar.gz) ([bsod-client-win32-binary-2.0.1.zip](../downloads/bsod-client-win32-binary-2.0.1.zip)) ([bsod-client-macosx-binary-2.0.1.dmg](../downloads/bsod-client-macosx-binary-2.0.1.dmg))
- [bsod-client-1.6.2.tar.gz](../downloads/bsod-client-1.6.2.tar.gz) ([bsod-client-win32-binary-1.6.1.zip](../downloads/bsod-client-win32-binary-1.6.1.zip))
- [bsod-client-1.6.0.tar.gz](../downloads/bsod-client-1.6.0.tar.gz) ([bsod-client-win32-binary-1.6.0.zip](../downloads/bsod-client-win32-binary-1.6.0.zip))
- [bsod-client-1.5.0.tar.gz](../downloads/bsod-client-1.5.0.tar.gz) ([bsod-client-win32-binary-1.5.0.zip](/..downloads/bsod-client-win32-binary-1.5.0.zip))
- [bsod-client-1.4.0.tar.gz](../downloads/bsod-client-1.4.0.tar.gz) ([bsod-client-win32-binary-1.4.0.zip](../downloads/bsod-client-win32-binary-1.4.0.zip))
- [bsod-client-1.3.0.tar.gz](../downloads/bsod-client-1.3.0.tar.gz) ([bsod-client-win32-binary-1.3.1.zip](../downloads/bsod-client-win32-binary-1.3.0.zip))
- [bsod-client-1.2.1.tar.gz](../downloads/bsod-client-1.2.1.tar.gz) ([bsod-client-win32-binary-1.2.1.zip](../downloads/bsod-client-win32-binary-1.2.1.zip))
- [bsod-client-1.1.0.tar.gz](../downloads/bsod-client-1.1.0.tar.gz) ([bsod-client-win32-binary-1.1.0.zip](../downloads/bsod-client-win32-binary-1.1.0.zip))

#### Requirements

The following libraries are required to build bsod client 2.0.2:

- [libSDL 1.2](http://www.libsdl.org/download-1.2.php)
- [libSDL_net 1.2](http://www.libsdl.org/projects/SDL_net/)
- [libSDL_ttf 2.0](http://www.libsdl.org/projects/SDL_ttf/)
- [libpng](http://www.libpng.org/pub/png/libpng.html)
- [GLEW](http://glew.sourceforge.net/)
- [libconfuse](https://github.com/martinh/libconfuse)
- [CEGUI](http://www.cegui.org.uk/wiki/index.php/Downloads)

## Acknowledgements

The old bsod client software was based on the BuNg 3d engine written by Sam Jansen and Jesse Baker. See [http://www.wand.net.nz/~stj2/bung/](http://www.wand.net.nz/~stj2/bung/) for more information.

## Contact

If you have any requests, comments or bug reports, please email contact@wand.net.nz.
