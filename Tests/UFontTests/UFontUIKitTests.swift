#if canImport(UIKit)
import XCTest
import UIKit
@testable import UFont

class UFontUIKitTests: XCTestCase {
	func testUFontDesign() {
		XCTAssertEqual(UIFontDescriptor.SystemDesign.default, UFontDesign.default.uiKit)
		XCTAssertEqual(UIFontDescriptor.SystemDesign.serif, UFontDesign.serif.uiKit)
		XCTAssertEqual(UIFontDescriptor.SystemDesign.rounded, UFontDesign.rounded.uiKit)
		XCTAssertEqual(UIFontDescriptor.SystemDesign.monospaced, UFontDesign.monospaced.uiKit)
	}
	
	func testUFontWeight() {
		XCTAssertEqual(UIFont.Weight.ultraLight, UFontWeight.ultraLight.uiKit)
		XCTAssertEqual(UIFont.Weight.thin, UFontWeight.thin.uiKit)
		XCTAssertEqual(UIFont.Weight.light, UFontWeight.light.uiKit)
		XCTAssertEqual(UIFont.Weight.regular, UFontWeight.regular.uiKit)
		XCTAssertEqual(UIFont.Weight.medium, UFontWeight.medium.uiKit)
		XCTAssertEqual(UIFont.Weight.semibold, UFontWeight.semibold.uiKit)
		XCTAssertEqual(UIFont.Weight.bold, UFontWeight.bold.uiKit)
		XCTAssertEqual(UIFont.Weight.heavy, UFontWeight.heavy.uiKit)
		XCTAssertEqual(UIFont.Weight.black, UFontWeight.black.uiKit)
	}
}
#endif
