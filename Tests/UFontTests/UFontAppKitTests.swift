#if canImport(AppKit)
import XCTest
import AppKit
@testable import UFont

final class UFontAppKitTests: XCTestCase {

	func testUFontAppKitSystem(){
		
		let letra = UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit
		
		XCTAssertEqual(letra, UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit)
		}
	
	func testUFontAppKitCustom(){
			
			let letra = UFont.custom("Raleway-ExtraBold", size: 32).appKit
			
			XCTAssertEqual(letra, UFont.custom("Raleway-ExtraBold", size: 32).appKit)
			}
}
#endif
