import PackageDescription

let package = Package(
    name: "POSIXRegex",
    dependencies: [
        .Package(url: "https://github.com/Zewo/Data.git", majorVersion: 0, minor: 4)
    ]
)
