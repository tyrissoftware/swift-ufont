import Foundation

public enum UFontFamily: Equatable, Hashable, Codable, Sendable {
	case system(UFontDesign, UFontWeight)
	case custom(String)
}

