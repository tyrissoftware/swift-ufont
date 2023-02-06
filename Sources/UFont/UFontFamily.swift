import Foundation

public enum UFontFamily: Equatable, Hashable {
	case system(UFontDesign, UFontWeight)
	case custom(String)
}

