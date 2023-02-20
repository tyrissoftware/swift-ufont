import XCTest
@testable import UFont

final class UFontWeightAppKitTests: XCTestCase {

	func testAppKitCaseWeights(){
		
		let letraUltraLight = UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit
		
		XCTAssertEqual(letraUltraLight, UFont.system(size: 32, weight: .ultraLight, design: .serif).appKit)
		
		let letraThin = UFont.system(size: 32, weight: .thin, design: .serif).appKit
		
		XCTAssertEqual(letraThin, UFont.system(size: 32, weight: .thin, design: .serif).appKit)
		
		let letraLight = UFont.system(size: 32, weight: .light, design: .serif).appKit
		
		XCTAssertEqual(letraLight, UFont.system(size: 32, weight: .light, design: .serif).appKit)
		
		let letraRegular = UFont.system(size: 32, weight: .regular, design: .serif).appKit
		
		XCTAssertEqual(letraRegular, UFont.system(size: 32, weight: .regular, design: .serif).appKit)
		
		let letraMedium = UFont.system(size: 32, weight: .medium, design: .serif).appKit
		
		XCTAssertEqual(letraMedium, UFont.system(size: 32, weight: .medium, design: .serif).appKit)
		
		let letraSemiBold = UFont.system(size: 32, weight: .semibold, design: .serif).appKit
		
		XCTAssertEqual(letraSemiBold, UFont.system(size: 32, weight: .semibold, design: .serif).appKit)
		
		let letraBold = UFont.system(size: 32, weight: .bold, design: .serif).appKit
		
		XCTAssertEqual(letraBold, UFont.system(size: 32, weight: .bold, design: .serif).appKit)
		
		let letraHeavy = UFont.system(size: 32, weight: .heavy, design: .serif).appKit
		
		XCTAssertEqual(letraHeavy, UFont.system(size: 32, weight: .heavy, design: .serif).appKit)
		
		let letraBack = UFont.system(size: 32, weight: .black, design: .serif).appKit
		
		XCTAssertEqual(letraBack, UFont.system(size: 32, weight: .black, design: .serif).appKit)
	}

}
