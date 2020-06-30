// swift-tools-version:5.0

import PackageDescription

var packageDependencies : [ Package.Dependency ] = [
    .package(url:  "https://github.com/apple/swift-nio.git",
             from: "2.18.0"),
    .package(url:  "https://github.com/SwiftNIOExtras/swift-nio-irc.git",
             from: "0.7.1")
]
var targetDependencies : [ Target.Dependency ] = [ "NIO", "NIOIRC" ]
if #available(OSX 10.14, iOS 12.0, tvOS 12.0, watchOS 6.0, *) {
    packageDependencies += [
        .package(url:  "https://github.com/apple/swift-nio-transport-services",
                 from: "1.5.1")
    ]
    targetDependencies += [ "NIOTransportServices" ]
}

let package = Package(
    name: "swift-nio-irc-client",
    products: [
        .library(name: "IRC", targets: [ "IRC" ])
    ],
    dependencies: packageDependencies,
    targets: [
        .target(name: "IRC", dependencies: targetDependencies)
    ]
)
