#if canImport(AppKit)
import AppKit

extension UFontWeight {
	public var appKit: NSFont.Weight {
		switch self {
		case .ultraLight:
			return .ultraLight
		case .thin:
			return .thin
		case .light:
			return .light
		case .regular:
			return .regular
		case .medium:
			return .medium
		case .semibold:
			return .semibold
		case .bold:
			return .bold
		case .heavy:
			return .heavy
		case .black:
			return .black
		}
	}
}

#endif
