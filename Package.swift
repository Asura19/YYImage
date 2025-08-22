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
            path: "YYImage",
            publicHeadersPath: "",
            cSettings: [
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release)),
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

/*
 let package = Package(
     name: "YYImage",
     platforms: [
         .iOS(.v12)
     ],
     products: [
         .library(
             name: "YYImage",
             targets: ["YYImage"]
         ),
         .library(
             name: "YYImage_libwebp",
             targets: ["YYImage", "YYImage_libwebp"]
         )
     ],
     dependencies: [
         .package(url: "https://github.com/SDWebImage/libwebp-Xcode", from: "1.5.0")
     ],
     targets: [
         .target(
             name: "YYImage",
             path: "YYImage",
             publicHeadersPath: "",
             cSettings: [
                 .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release)),
                 .define("YYIMAGE_WEBP_ENABLED", to: "1")
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
         ),
         .target(
             name: "YYImage_libwebp",
             dependencies: [
                 "YYImage",
                 .product(name: "libwebp", package: "libwebp-Xcode")
             ],
             path: "YYImage_libwebp",
             cSettings: [
                 .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release)),
                 .define("YYIMAGE_WEBP_ENABLED", to: "1")
             ]
         )
     ]
 )

*/
