#if canImport(AppKit)
import XCTest
import AppKit
@testable import UFont

final class UFontAppKitTests: XCTestCase {
	
	func testUFontAppKitSystem(){
		
		let font = UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit
		
		XCTAssertEqual(font, UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit)
	}
	
	func testUFontAppKitCustom(){
		
		let font = UFont.custom("Raleway-ExtraBold", size: 32).appKit
		
		XCTAssertEqual(font, UFont.custom("Raleway-ExtraBold", size: 32).appKit)
	}
}
#endif
