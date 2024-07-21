// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libdav1d",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "Libdav1d", 
            targets: ["_Libdav1d"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libdav1d",
            dependencies: ["Libdav1d"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libdav1d",
            url: "https://github.com/mpvkit/libdav1d-build/releases/download/1.4.3/Libdav1d.xcframework.zip",
            checksum: "302c5fb745dff774cab1b7b37e7840d8f20abec62f33e919dd1541ccd8146604"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
