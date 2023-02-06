import Foundation

public struct UFont: Equatable, Hashable {
	public var family: UFontFamily
	public var size: CGFloat
	
	public init(
		family: UFontFamily,
		size: CGFloat
	) {
		self.family = family
		self.size = size
	}
}

extension UFont {
	public static func custom(
		_ name: String,
		size: CGFloat
	) -> Self {
		.init(family: .custom(name), size: size)
	}
	
	public static func system(
		size: CGFloat,
		weight: UFontWeight,
		design: UFontDesign
	) -> Self {
		.init(family: .system(design, weight), size: size)
	}
}

import SwiftUI

extension UFont {
	public var swiftUI: Font {
		switch family {
		case let .system(design, weight):
			return Font.system(size: size, weight: weight.swiftUI, design: design.swiftUI)
			
		case let .custom(name):
			return Font.custom(name, size: size)
		}
	}
}

