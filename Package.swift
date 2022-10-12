// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://api.github.com/repos/touchlab/KmmBridgeIntegrationTest/releases/assets/80818390.zip"
let remoteKotlinChecksum = "84af109519c7f8788fe6e1d849788e726b453ffd82d743e20d2de8bf4ec777c6"
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