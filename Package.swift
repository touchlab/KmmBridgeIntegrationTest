// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest/co/touchlab/shared-kmmbridge/1.4.31/shared-kmmbridge-1.4.31.zip"
let remoteKotlinChecksum = "ae7c43fb724c22a032f6e1debb5a1a056c4444a115e560acb7dd659bbfdb0c4e"
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