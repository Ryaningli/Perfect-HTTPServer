// swift-tools-version:4.1
// Generated automatically by Perfect Assistant 2
// Date: 2018-03-28 18:54:02 +0000
import PackageDescription

let package = Package(
	name: "PerfectHTTPServer",
	products: [
		.library(name: "PerfectHTTPServer", targets: ["PerfectHTTPServer"])
	],
	dependencies: [
		.package(url: "https://github.com/PerfectlySoft/Perfect-Net.git", from: "3.1.2"),
		.package(url: "https://github.com/Ryaningli/Perfect-HTTP.git", .branch("master")),
		.package(url: "https://github.com/PerfectlySoft/Perfect-CZlib-src.git", from: "0.0.0")
	],
	targets: [
		.target(name: "PerfectCHTTPParser", dependencies: []),
		.target(name: "PerfectHTTPServer", dependencies: ["PerfectCHTTPParser", "PerfectNet", "PerfectHTTP", "PerfectCZlib"]),
		.testTarget(name: "PerfectHTTPServerTests", dependencies: ["PerfectHTTPServer"])
	]
)
