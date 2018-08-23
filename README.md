# SwiftNIO IRC Client

![Swift4](https://img.shields.io/badge/swift-4-blue.svg)
![iOS](https://img.shields.io/badge/os-iOS-green.svg?style=flat)
![macOS](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
![tuxOS](https://img.shields.io/badge/os-tuxOS-green.svg?style=flat)
<a href="https://travis-ci.org/NozeIO/swift-nio-irc-client"><img src="https://travis-ci.org/NozeIO/swift-nio-irc-client.svg?branch=develop" /></a>

SwiftNIO-IRC is a Internet Relay Chat 
[protocol implementation](Sources/NIOIRC) for
[SwiftNIO](https://github.com/apple/swift-nio)
and a simple 
[IRC client](Sources/IRC).

This module contains a simple IRC client library. We also
provide:
- [swift-nio-irc](https://github.com/SwiftNIOExtras/swift-nio-irc) -
  the raw Swift NIO IRC protocol implementation
- [swift-nio-irc-webclient](https://github.com/NozeIO/swift-nio-irc-webclient) -
  a simple IRC webclient + WebSocket gateway based on this module,
- [swift-nio-irc-eliza](https://github.com/NozeIO/swift-nio-irc-eliza) -
  a cheap yet scalable therapist,
- [swift-nio-irc-server](https://github.com/NozeIO/swift-nio-irc-server) -
  a framework to build IRC servers, and MiniIRCd, a small sample server.
  
To get started with this, pull 
[swift-nio-irc-server](https://github.com/NozeIO/swift-nio-irc-server) -
a module to rule them all and in the darkness bind them.

NIOIRC is a SwiftNIO port of the
[Noze.io miniirc](https://github.com/NozeIO/Noze.io/tree/master/Samples/miniirc)
example from 2016.


## Importing the module using Swift Package Manager

An example `Package.swift `importing the necessary modules:

```swift
// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "IRCTests",
    dependencies: [
        .package(url: "https://github.com/NozeIO/swift-nio-irc-client.git",
                 from: "0.6.0")
    ],
    targets: [
        .target(name: "MyIRCClient",
                dependencies: [ "IRC" ])
    ]
)
```


### Who

Brought to you by
[ZeeZide](http://zeezide.de).
We like
[feedback](https://twitter.com/ar_institute),
GitHub stars,
cool [contract work](http://zeezide.com/en/services/services.html),
presumably any form of praise you can think of.
