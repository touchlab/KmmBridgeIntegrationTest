// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest/co/touchlab/shared-kmmbridge/1.1.6/shared-kmmbridge-1.1.6.zip"
let remoteKotlinChecksum = "6f0f312123d807486edf5ea8e71ef35fde487d1eea1bdf035fbbd1aa876bd887"
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