#if canImport(AppKit)
import XCTest
import AppKit

@testable import UFont

final class UFontWeightAppKitTests: XCTestCase {
	
	func testAppKitCaseWeights(){
		
		let fontUltraLight = UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit
		
		XCTAssertEqual(fontUltraLight, UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit)
		
		let fontThin = UFont.system(size: 32, weight: .thin, design: .serif).appKit
		
		XCTAssertEqual(fontThin, UFont.system(size: 32, weight: .thin, design: .serif).appKit)
		
		let fontLight = UFont.system(size: 32, weight: .light, design: .serif).appKit
		
		XCTAssertEqual(fontLight, UFont.system(size: 32, weight: .light, design: .serif).appKit)
		
		let fontRegular = UFont.system(size: 32, weight: .regular, design: .serif).appKit
		
		XCTAssertEqual(fontRegular, UFont.system(size: 32, weight: .regular, design: .serif).appKit)
		
		let fontMedium = UFont.system(size: 32, weight: .medium, design: .serif).appKit
		
		XCTAssertEqual(fontMedium, UFont.system(size: 32, weight: .medium, design: .serif).appKit)
		
		let fontSemiBold = UFont.system(size: 32, weight: .semibold, design: .serif).appKit
		
		XCTAssertEqual(fontSemiBold, UFont.system(size: 32, weight: .semibold, design: .serif).appKit)
		
		let fontBold = UFont.system(size: 32, weight: .bold, design: .serif).appKit
		
		XCTAssertEqual(fontBold, UFont.system(size: 32, weight: .bold, design: .serif).appKit)
		
		let fontHeavy = UFont.system(size: 32, weight: .heavy, design: .serif).appKit
		
		XCTAssertEqual(fontHeavy, UFont.system(size: 32, weight: .heavy, design: .serif).appKit)
		
		let fontBack = UFont.system(size: 32, weight: .black, design: .serif).appKit
		
		XCTAssertEqual(fontBack, UFont.system(size: 32, weight: .black, design: .serif).appKit)
	}
	
}
#endif
