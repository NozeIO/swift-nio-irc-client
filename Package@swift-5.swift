// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "swift-nio-irc-client",
    products: [
        .library(name: "IRC", targets: [ "IRC" ])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-nio.git", 
                 from: "2.0.0"),
        .package(url: "https://github.com/SwiftNIOExtras/swift-nio-irc.git",
                 from: "0.7.0")
    ],
    targets: [
        .target(name: "IRC", dependencies: [ "NIOIRC" ])
    ]
)
