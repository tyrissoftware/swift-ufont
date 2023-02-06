#if canImport(UIKit)
import UIKit

extension UFont {
	public var uiKit: UIFont {
		switch family {
		case let .system(design, weight):
			let font = UIFont.systemFont(ofSize: size, weight: weight.uiKit)
			if let descriptor = font.fontDescriptor.withDesign(design.uiKit) {
				 return UIFont(descriptor: descriptor, size: size)
			} else {
				 return font
			}
			
		case let .custom(name):
			let descriptor = UIFontDescriptor(name: name, size: size)
			return UIFont(descriptor: descriptor, size: size)
		}
	}
}
#endif
