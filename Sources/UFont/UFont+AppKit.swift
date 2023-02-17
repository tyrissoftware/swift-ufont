#if canImport(AppKit)
import AppKit

extension UFont {
	public var appKit: NSFont {
		switch family {
		case let .system(design, weight):
			let font = NSFont.systemFont(ofSize: size, weight: weight.appKit)
			let descriptor = font.fontDescriptor.withDesign(design.appKit)

			return descriptor
					.flatMap { descriptor in
						NSFont(descriptor: descriptor, size: size)
					} ?? font

		case let .custom(name):
			return NSFont(name: name, size: size) ?? NSFont.systemFont(ofSize: size)
		}
	}
}
#endif
