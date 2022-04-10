// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let package = Package(
    name: "CPlist",
    products: [
        .library(
            name: "CPlist",
            targets: ["CPlist"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CPlist",
            dependencies: [],
            path: "Sources/plist/",
            /*exclude: [
                "libplist/cython",
                "libplist/tools",
                "libplist/fuzz",
                "libplist/docs",
                "libplist/m4",
                "libplist/test",
            ],*/
            sources: [
                "libplist/src/base64.c",
                "libplist/src/bplist.c",
                "libplist/src/bytearray.c",
                "libplist/src/hashtable.c",
                "libplist/src/jplist.c",
                "libplist/src/jsmn.c",
                "libplist/src/plist.c",
                "libplist/src/ptrarray.c",
                "libplist/src/time64.c",
                "libplist/src/xplist.c",
                "libplist/libcnary/cnary.c",
                "libplist/libcnary/node.c",
                "libplist/libcnary/node_list.c"
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("libplist/include"),
                .headerSearchPath("libplist/src"),
                .headerSearchPath("libplist/libcnary/include"),
                .define("HAVE_STRNDUP")
            ]
        )
    ]
)
