// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YYImage",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "YYImage",
            targets: ["YYImage"]
        )
    ],
    targets: [
        .target(
            name: "YYImage",
            publicHeadersPath: "",
            cSettings: [
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release))
            ],
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedFramework("UIKit"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("AssetsLibrary"),
                .linkedFramework("ImageIO"),
                .linkedFramework("Accelerate"),
                .linkedFramework("MobileCoreServices")
            ]
        )
    ]
)


