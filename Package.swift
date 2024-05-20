// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "CVorbis",
	products: [
		.library(
			name: "vorbis",
			targets: [
				"vorbis",
			]),
	],
	dependencies: [
		.package(url: "https://github.com/sbooth/COgg", from: "1.3.5"),
	],
	targets: [
		.target(
			name: "vorbis",
			dependencies: [
				.product(name: "ogg", package: "COgg")
			],
			cSettings: [
				.headerSearchPath("."),
			]),
		.testTarget(
			name: "CVorbisTests",
			dependencies: [
				"vorbis"
			])
	]
)
