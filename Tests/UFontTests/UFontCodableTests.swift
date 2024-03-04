import XCTest
@testable import UFont

final class UFontCodableTests: XCTestCase {
	func testUFontSystemCodable() throws {
		let font = UFont.system(size: 14, weight: .bold, design: .monospaced)
		
		let encoded = try JSONEncoder().encode(font)
		
		print(String(data: encoded, encoding: .utf8)!)
		
		let decoded = try JSONDecoder().decode(UFont.self, from: encoded)
		
		XCTAssertEqual(font, decoded)
	}
	
	func testUFontCustomCodable() throws {
		let font = UFont.custom("MyFont", size: 14)
		
		let encoded = try JSONEncoder().encode(font)
		
		let decoded = try JSONDecoder().decode(UFont.self, from: encoded)
		
		XCTAssertEqual(font, decoded)
	}
}
