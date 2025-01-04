// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "VLOptionalKit",
                      platforms: [ .macOS(.v12), .iOS(.v17) ],
                      products:
                      [
                       .library(name: "VLOptionalKit",
                                targets: [ "VLOptionalKit" ])
                      ],
                      dependencies:
                      [
                       .package(url: "https://github.com/VLstack/VLStringKit", from: "2.2.3")
                      ],
                      targets:
                      [
                       .target(name: "VLOptionalKit",
                               dependencies: [ "VLStringKit" ])
                      ])
