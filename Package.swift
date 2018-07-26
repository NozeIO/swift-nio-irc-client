// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "swift-nio-irc-client",
    products: [
        .library(name: "IRC", targets: [ "IRC" ])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", 
                 from: "1.8.0"),
        .package(url: "https://github.com/SwiftNIOExtras/swift-nio-irc.git",
                 from: "0.6.0")
    ],
    targets: [
        .target(name: "IRC", dependencies: [ "NIOIRC" ])
    ]
)
