// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest/co/touchlab/shared-kmmbridge/1.4.57/shared-kmmbridge-1.4.57.zip"
let remoteKotlinChecksum = "69d3b88371a002248458fd18b780208b507d5ac28043cbdd4aad013bd813794b"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)