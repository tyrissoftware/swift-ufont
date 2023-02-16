#if canImport(AppKit)
import AppKit

extension UFont {
	public var appKit: NSFont {
		switch family {
		case let .system(design, weight):
			let font = NSFont.systemFont(ofSize: size, weight: weight.appKit)
			if let descriptor = font.fontDescriptor.withDesign(design.appKit) {
				return NSFont(descriptor: descriptor, size: size)!
			} else {
				 return font
			}
			
		case let .custom(name):
			let descriptor = NSFontDescriptor(name: name, size: size)
			return NSFont(descriptor: descriptor, size: size)!
		}
	}
}
#endif
