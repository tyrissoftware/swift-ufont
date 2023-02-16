import XCTest
@testable import UFont

final class UFontTests: XCTestCase {

	func testUFontBasicInit(){
		let letra = UFont.custom("Raleway-ExtraBold", size: 32)
		XCTAssertEqual(letra,UFont.custom("Raleway-ExtraBold", size: 32))
	}
	
	func testUFontSystem(){
		let letra = UFont.system(size: 32, weight: .ultraLight, design: .serif)
		
		XCTAssertEqual(letra,UFont.system(size: 32, weight: .ultraLight, design: .serif))
	}
}
