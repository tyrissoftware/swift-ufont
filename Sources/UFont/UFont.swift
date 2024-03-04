import Foundation

public struct UFont: Equatable, Hashable, Codable {
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

