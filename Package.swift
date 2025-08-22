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
    dependencies: [
        .package(url: "https://github.com/SDWebImage/libwebp-Xcode", from: "1.5.0")
    ],
    targets: [
        .target(
            name: "YYImage",
            dependencies: [
                .product(name: "libwebp", package: "libwebp-Xcode")
            ],
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




