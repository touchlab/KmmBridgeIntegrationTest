// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest/co/touchlab/shared-kmmbridge/1.4.42/shared-kmmbridge-1.4.42.zip"
let remoteKotlinChecksum = "b475784ff169e20809f57cba9b2b2453d7a4d7bb09dd56ef3878f203e9eaa5e1"
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