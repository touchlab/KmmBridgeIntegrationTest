// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest/co/touchlab/shared-kmmbridge/1.4.83/shared-kmmbridge-1.4.83.zip"
let remoteKotlinChecksum = "9d727d6f301c841e4e48c5d8f1f9967caa38c601bce65ad0ebcbd43284089508"
let packageName = "shared"
// END KMMBRIDGE BLOCK

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