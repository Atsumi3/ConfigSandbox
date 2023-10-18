// swift-tools-version:5.9
import PackageDescription

let package = Package(
    // The name of the Swift package.
    // SwiftPackageの名前
    name: "LibraryName",
    // The default localization for resources.
    // デフォルトのローカライズ
    defaultLocalization: "jp",
    // The list of products that this package vends and that clients can use.
    // このパッケージがサポートするプラットフォーム
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .watchOS(.v8),
        .visionOS(.v1),
        .tvOS(.v15),
        .macCatalyst(.v15),
        .driverKit(.v21),
        // .linux,
        // .custom(name: "CustomPlatform", version: "1.0")
    ],
    // The name to use for C modules.
    // Cモジュールの名前
    pkgConfig: nil, // e.g. "libpq"
    // An array of providers for a system target.
    // システムターゲットのプロバイダー
    providers: [
        // .brew(["postgresql"]),
        // .apt(["libpq-dev"]),
        // .yum(["libpq-devel"]),
        // .nuget(["EntityFramework"])
    ],
    // The list of products that this package vends and that clients can use.
    // このパッケージがサポートするプロダクト
    products: [
        // Use an executable product to vend an executable target. Use this only if you want to make the executable available to clients.
        // 実行可能製品を使って実行可能ターゲットをベンダリングする。クライアントに実行ファイルを提供したい場合にのみ使用してください。
        // e.g. .executable(name: "executableName", targets: ["executableTarget"])

        // Use a library product to vend library targets. This makes a target’s public APIs available to clients that integrate the Swift package.
        // ライブラリ製品を使用してライブラリターゲットをベンダリングする。これにより、ターゲットの公開APIがSwiftパッケージを統合するクライアントで利用可能になります。
        // min e.g. .library(name: "libraryName", targets: ["libraryTarget"])
        // full e.g. .library(name: "libraryName", type: .static, targets: ["libraryTarget"])
        // full e.g. .library(name: "libraryName", type: .dynamic, targets: ["libraryTarget"])

        // Use a plugin product to vend plugin targets. This makes the plugin available to clients that integrate the Swift package.
        // プラグイン製品を使用してプラグインターゲットをベンダリングする。これにより、プラグインがSwiftパッケージを統合するクライアントで利用可能になります。
        // e.g. .plugin(name: "pluginName", targets: ["pluginTarget"])
    ],
    // The list of package dependencies.
    // このパッケージの依存関係
    dependencies: [
        // Adds a dependency to a package located at the given path on the filesystem.
        // ファイルシステム上の指定されたパスにあるパッケージに依存関係を追加する。
        // e.g. .package(name: "LibraryName", path: "path/to/dependency")

        // Adds a package dependency that uses the version requirement, starting with the given minimum version, going up to the next major version.
        // 指定された最小バージョンから始まり、次のメジャーバージョンまで、バージョン要件を使用するパッケージ依存関係を追加する。
        // e.g. .package(url: "https://example.com/dependency-1.0.0.zip", from: "1.0.0")

        // Adds a package dependency starting with a specific minimum version, up to but not including a specified maximum version.
        // 指定された最小バージョンから始まり、指定された最大バージョンを含まないまでのパッケージ依存関係を追加する。
        // e.g. .package(url: "https://example.com/dependency-1.0.0.zip", "1.2.3"..<"1.2.6")
        // e.g. .package(url: "https://example.com/dependency-1.0.0.zip", "1.2.3"..."1.2.6")

        // Adds a remote package dependency given a branch requirement.
        // ブランチ要件を指定して、リモートパッケージの依存関係を追加します。
        // e.g. .package(url: "https://example.com/dependency-1.0.0.zip", branch: "main")

        // Adds a remote package dependency given a revision requirement.
        // リビジョン要件を指定して、リモートパッケージの依存関係を追加します。
        // e.g. .package(url: "https://example.com/dependency-1.0.0.zip", revision: "abc123")

        // Adds a package dependency that uses the exact version requirement.
        // 正確なバージョン要件を使用するパッケージ依存関係を追加します。
        // e.g. .package(url: "https://example.com/dependency-1.0.0.zip", exact: "1.0.0")

        // Adds a dependency to a package located at the given path.
        // 指定されたパスにあるパッケージに依存関係を追加します。
        // e.g. .package(path: "path/to/dependency")
    ],
    // The list of targets that are part of this package.
    // このパッケージのターゲット
    targets: [
        // Creates a binary target that references an artifact on disk.
        // ディスク上のアーティファクトを参照するバイナリターゲットを作成します。
        // e.g. .binaryTarget(name: "binaryTarget", path: "path/to/binaryTarget")

        // Creates a binary target that references a remote artifact.
        // リモートアーティファクトを参照するバイナリターゲットを作成します。
        // e.g. .binaryTarget(name: "binaryTarget", url: "https://example.com/binaryTarget-1.0.0.zip", checksum: "abc123")

        // Creates a system library target.
        // システムライブラリターゲットを作成します。
        // min  e.g. .systemLibrary(name: "systemLibraryName")
        // full e.g. .systemLibrary(
        //    name: "systemLibraryName", 
        //    path: "path/to/systemLibraryName", 
        //    pkgConfig: "libpq", 
        //    providers: [
        //      .brew(["postgresql"]), 
        //      .apt(["libpq-dev"]),
        //      .yum(["libpq-devel"]),
        //      .nuget(["EntityFramework"])
        //    ]
        // )

        // Creates an executable target.
        // 実行可能ターゲットを作成します。
        // min  e.g. .executableTarget(name: "executableTargetName", dependencies: ["targetName"], exclude: ["path/to/exclude/file", "path/to/exclude/directory"], packageAccess: true)
        /** full e.g.
          .executableTarget(
            name: "executableTargetName",
            dependencies: [
              .product(name: "LibraryName", package: "LibraryName"),
              .product(name: "LibraryName", package: "LibraryName"),
            ],
            path: "path/to/executableTargetName",
            exclude: [
              "path/to/exclude/file",
              "path/to/exclude/directory"
            ],
            sources: [
              "path/to/source/file",
              "path/to/source/directory"
            ],
            resources: [
              .process("path/to/resource/file", localization: .default),
              .copy("path/to/resource/file"),
              .process("path/to/resource/directory", localization: .default),
              .copy("path/to/resource/directory"),
              .embedInCode("path/to/resource/file"),
            ],
            publicHeadersPath: "path/to/publicHeaders",
            cSettings: [
                .headerSearchPath("path/to/headerSearchPath"),
                .define("DEBUG", to: "1", .when(configuration: .debug)),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ],
            cxxSettings: [
                .headerSearchPath("path/to/headerSearchPath"),
                .define("DEBUG", to: "1", .when(configuration: .debug)),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ],
            swiftSettings: [
                .define("DEBUG", .when(configuration: .debug)),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release)),
                .enableExperimentalFeature("MyExperimentalFeature", .when(configuration: .debug)),
                .enableUpcomingFeature("MyUpcomingFeature", .when(configuration: .debug)),
                .interpoperabilityMode(.c, .when(configuration: .debug)),
            ],
            linkerSettings: [
                .linkedFramework("MyFramework", .when(platforms: [.macOS, .iOS])),
                .linkedLibrary("MyLibrary", .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ],
            plugins: [
              .plugin(name: "pluginName", package: "pluginPackage"),
              .plugin(name: "pluginName", package: "pluginPackage"),
            ]
          )
        **/

        // Creates a Plugin target.
        // プラグインターゲットを作成します。
        // min  e.g. .plugin(name: "pluginTargetName", capability: .buildTool(), dependencies: ["targetName"], exclude: ["path/to/exclude/file", "path/to/exclude/directory"], packageAccess: true)
        /** full e.g.
          .plugin(
            name: "pluginName",
            capability: .buildTool(),
            dependencies: [
              .product(name: "LibraryName", package: "LibraryName"),
              .product(name: "LibraryName", package: "LibraryName"),
            ],
            path: "path/to/pluginName",
            exclude: [
              "path/to/exclude/file",
              "path/to/exclude/directory"
            ],
            sources: [
              "path/to/source/file",
              "path/to/source/directory"
            ],
            packageAccess: true,
          )
        **/

        // Creates a target.
        // ターゲットを作成します。
        // min  e.g. .target(name: "targetName", dependencies: ["targetName"], exclude: ["path/to/exclude/file", "path/to/exclude/directory"])
        /** full e.g.
          .target(
            name: "targetName",
            dependencies: [
              .product(name: "LibraryName", package: "LibraryName"),
              .product(name: "LibraryName", package: "LibraryName"),
            ],
            path: "path/to/targetName",
            exclude: [
              "path/to/exclude/file",
              "path/to/exclude/directory"
            ],
            sources: [
              "path/to/source/file",
              "path/to/source/directory"
            ],
            resources: [
              .process("path/to/resource/file", localization: .default),
              .copy("path/to/resource/file"),
              .process("path/to/resource/directory", localization: .default),
              .copy("path/to/resource/directory"),
              .embedInCode("path/to/resource/file"),
            ],
            publicHeadersPath: "path/to/publicHeaders",
            packageAccess: true,
            cSettings: [
                .headerSearchPath("path/to/headerSearchPath"),
                .define("DEBUG", to: "1", .when(configuration: .debug)),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ],
            cxxSettings: [
                .headerSearchPath("path/to/headerSearchPath"),
                .define("DEBUG", to: "1", .when(configuration: .debug)),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ],
            swiftSettings: [
                .define("DEBUG", .when(configuration: .debug)),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release)),
                .enableExperimentalFeature("MyExperimentalFeature", .when(configuration: .debug)),
                .enableUpcomingFeature("MyUpcomingFeature", .when(configuration: .debug)),
                .interpoperabilityMode(.c, .when(configuration: .debug)),
            ],
            linkerSettings: [
                .linkedFramework("MyFramework", .when(platforms: [.macOS, .iOS])),
                .linkedLibrary("MyLibrary", .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ],
            plugins: [
              .plugin(name: "pluginName", package: "pluginPackage"),
              .plugin(name: "pluginName", package: "pluginPackage"),
            ]
          )
        **/

        // Creates a test target.
        // テストターゲットを作成します。
        // min e.g. .testTarget(name: "testTargetName", dependencies: ["targetName"], exclude: ["path/to/exclude/file", "path/to/exclude/directory"])
        /** full e.g.
          .testTarget(
            name: "testTargetName",
            dependencies: [
              .product(name: "LibraryName", package: "LibraryName"),
              .product(name: "LibraryName", package: "LibraryName"),
            ],
            path: "path/to/testTargetName",
            exclude: [
              "path/to/exclude/file",
              "path/to/exclude/directory"
            ],
            sources: [
              "path/to/source/file",
              "path/to/source/directory"
            ],
            resources: [
              .process("path/to/resource/file", localization: .default),
              .copy("path/to/resource/file"),
              .process("path/to/resource/directory", localization: .default),
              .copy("path/to/resource/directory"),
              .embedInCode("path/to/resource/file"),
            ],
            packageAccess: true,
            cSettings: [
                .headerSearchPath("path/to/headerSearchPath"),
                .define("DEBUG", to: "1", .when(configuration: .debug)),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ],
            cxxSettings: [
                .headerSearchPath("path/to/headerSearchPath"),
                .define("DEBUG", to: "1", .when(configuration: .debug)),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ],
            swiftSettings: [
                .define("DEBUG", .when(configuration: .debug)),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release)),
                .enableExperimentalFeature("MyExperimentalFeature", .when(configuration: .debug)),
                .enableUpcomingFeature("MyUpcomingFeature", .when(configuration: .debug)),
                .interpoperabilityMode(.c, .when(configuration: .debug)),
            ],
            linkerSettings: [
                .linkedFramework("MyFramework", .when(platforms: [.macOS, .iOS])),
                .linkedLibrary("MyLibrary", .when(platforms: [.macOS, .iOS])),
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ],
            plugins: [
              .plugin(name: "pluginName", package: "pluginPackage"),
              .plugin(name: "pluginName", package: "pluginPackage"),
            ]
          )
        **/
    ],
    // The list of Swift versions with which this package is compatible.
    // このパッケージと互換性のあるSwiftバージョンのリスト。
    swiftLanguageVersions: [
        .v5,
        .v4_2,
    ],
    // The C language standard to use for all C targets in this package.
    // 本パッケージのすべてのCターゲットに使用するC言語標準。
    // e.g. .cLanguageStandard(.c99)
    cLanguageStandard: nil,
    // The C++ language standard to use for all C++ targets in this package.
    // 本パッケージのすべてのC++ターゲットに使用するC++言語標準。
    // e.g. .cxxLanguageStandard(.cxx14)
    cxxLanguageStandard: nil
)
