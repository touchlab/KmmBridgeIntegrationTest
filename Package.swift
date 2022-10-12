// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://api.github.com/repos/touchlab/KmmBridgeIntegrationTest/releases/assets/80807348.zip"
let remoteKotlinChecksum = "f8d8febd01dffee15384f47f2563a799f6f5b560a4dd4d2b30da42152c904afc"
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