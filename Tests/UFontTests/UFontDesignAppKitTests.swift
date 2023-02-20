#if canImport(AppKit)
import XCTest
import AppKit
@testable import UFont

final class UFontDesignAppKitTests: XCTestCase {

	func testAppKitCaseDesigns() {
		let letraSerif = UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit
		
			XCTAssertEqual(letraSerif, UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit)
		let letraRounded = UFont.system(size: 32, weight: .ultraLight, design: .rounded).appKit
		
		XCTAssertEqual(letraRounded, UFont.system(size: 32, weight: .ultraLight, design: .rounded).appKit)
		
		let letraMonospaced = UFont.system(size: 32, weight: .ultraLight, design: .monospaced).appKit
		
		XCTAssertEqual(letraMonospaced, UFont.system(size: 32, weight: .ultraLight, design: .monospaced).appKit)
		
		let letraDefault = UFont.system(size: 32, weight: .ultraLight, design: .default).appKit
		
		XCTAssertEqual(letraDefault, UFont.system(size: 32, weight: .ultraLight, design: .default).appKit)
	}

}
#endif
