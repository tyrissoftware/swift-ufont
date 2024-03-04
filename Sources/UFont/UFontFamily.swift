import Foundation

public enum UFontFamily: Equatable, Hashable, Codable {
	case system(UFontDesign, UFontWeight)
	case custom(String)
}

