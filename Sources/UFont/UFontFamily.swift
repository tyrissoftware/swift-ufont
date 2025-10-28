import Foundation

public enum UFontFamily: Equatable, Hashable, Sendable {
	case system(UFontDesign, UFontWeight)
	case custom(String)
}

extension UFontFamily {
	enum CodingKeys: String, CodingKey {
		case type
		case design
		case weight
		case name
	}

	enum CaseKey: String, Codable {
		case system
		case custom
	}

	var type: CaseKey {
		switch self {
		case .system:
			return .system
		case .custom:
			return .custom
		}
	}
}

extension UFontFamily: Encodable {
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		
		try container.encode(type, forKey: .type)
		
		switch self {
			case let .system(design, weight):
				try container.encode(design, forKey: .design)
				try container.encode(weight, forKey: .weight)
			case let .custom(name):
				try container.encode(name, forKey: .name)
		}
	}
}

extension UFontFamily: Decodable {
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		
		let key = try container.decode(CaseKey.self, forKey: .type)
		switch key {
			case .system:
				let design = try container.decode(UFontDesign.self, forKey: .design)
				let weight = try container.decode(UFontWeight.self, forKey: .weight)
				self = .system(design, weight)
			case .custom:
				let name = try container.decode(String.self, forKey: .name)
				self = .custom(name)
		}
	}
}


