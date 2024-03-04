import Foundation

public enum UFontWeight: String, Equatable, Hashable, Codable {
	case ultraLight
	case thin
	case light
	case regular
	case medium
	case semibold
	case bold
	case heavy
	case black
}

import SwiftUI

extension UFontWeight {
	public var swiftUI: Font.Weight {
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
