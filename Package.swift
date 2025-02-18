// swift-tools-version: 6.0
import PackageDescription

let package = Package(
	name: "swift-ufont",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_15),
		.tvOS(.v13)
	],
	products: [
		.library(
			name: "UFont",
			targets: ["UFont"]
		)
	],
	dependencies: [],
	targets: [
		.target(
			name: "UFont",
			dependencies: []
		),
		.testTarget(
			name: "UFontTests",
			dependencies: ["UFont"]
		)
	]
)
