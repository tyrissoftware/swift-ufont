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

extension View {
	public func font(
		_ font: UFont
	) -> some View {
		self.font(font.swiftUI)
	}
}
