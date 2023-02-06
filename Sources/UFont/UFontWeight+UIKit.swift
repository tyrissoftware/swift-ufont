#if canImport(UIKit)
import UIKit

extension UFontWeight {
	public var uiKit: UIFont.Weight {
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
