import XCTest
@testable import UFont

final class UFontTests: XCTestCase {
	
	func testUFontBasicInit(){
		let font = UFont.custom("Raleway-ExtraBold", size: 32)
		XCTAssertEqual(font,UFont.custom("Raleway-ExtraBold", size: 32))
	}
	
	func testUFontSystem(){
		let font = UFont.system(size: 32, weight: .ultraLight, design: .serif)
		
		XCTAssertEqual(font,UFont.system(size: 32, weight: .ultraLight, design: .serif))
	}
}
