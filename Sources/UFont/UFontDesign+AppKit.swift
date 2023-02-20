#if canImport(AppKit)
import AppKit

extension UFontDesign {
	public var appKit: NSFontDescriptor.SystemDesign {
		switch self {
		case .default:
			return .default
		case .serif:
			return .serif
		case .rounded:
			return .rounded
		case .monospaced:
			return .monospaced
		}
	}
}
#endif
