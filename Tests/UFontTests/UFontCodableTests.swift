import XCTest
@testable import UFont

final class UFontCodableTests: XCTestCase {
	func testUFontSystemCodable() throws {
		let font = UFont.system(size: 14, weight: .bold, design: .monospaced)
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .sortedKeys
		
		let encoded = try encoder.encode(font)
		
		let encodedString = String(data: encoded, encoding: .utf8)!
		
		print(encodedString)
		
		let decoded = try JSONDecoder().decode(UFont.self, from: encoded)
		
		XCTAssertEqual(font, decoded)
		
		XCTAssertEqual(
			encodedString,
			"""
			{"family":{"design":"monospaced","type":"system","weight":"bold"},"size":14}
			"""
		)
	}
	
	func testUFontCustomCodable() throws {
		let font = UFont.custom("MyFont", size: 14)
		
		let encoder = JSONEncoder()
		encoder.outputFormatting = .sortedKeys

		let encoded = try encoder.encode(font)
		
		let decoded = try JSONDecoder().decode(UFont.self, from: encoded)
		
		XCTAssertEqual(font, decoded)
		
		let encodedString = String(data: encoded, encoding: .utf8)!

		XCTAssertEqual(
			encodedString,
			"""
			{"family":{"name":"MyFont","type":"custom"},"size":14}
			"""
		)
	}
}
