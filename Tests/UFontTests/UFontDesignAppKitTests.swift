#if canImport(AppKit)
import XCTest
import AppKit
@testable import UFont

final class UFontDesignAppKitTests: XCTestCase {
	
	func testAppKitCaseDesigns() {
		let fontSerif = UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit
		
		XCTAssertEqual(fontSerif, UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit)
		let fontRounded = UFont.system(size: 32, weight: .ultraLight, design: .rounded).appKit
		
		XCTAssertEqual(fontRounded, UFont.system(size: 32, weight: .ultraLight, design: .rounded).appKit)
		
		let fontMonospaced = UFont.system(size: 32, weight: .ultraLight, design: .monospaced).appKit
		
		XCTAssertEqual(fontMonospaced, UFont.system(size: 32, weight: .ultraLight, design: .monospaced).appKit)
		
		let fontDefault = UFont.system(size: 32, weight: .ultraLight, design: .default).appKit
		
		XCTAssertEqual(fontDefault, UFont.system(size: 32, weight: .ultraLight, design: .default).appKit)
	}
	
}
#endif
