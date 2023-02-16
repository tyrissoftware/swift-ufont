import Foundation
import XCTest
import SwiftUI
@testable import UFont

class UFontSwiftUITests: XCTestCase {
	func testUFontDesign() {
		XCTAssertEqual(Font.Design.default, UFontDesign.default.swiftUI)
		XCTAssertEqual(Font.Design.serif, UFontDesign.serif.swiftUI)
		XCTAssertEqual(Font.Design.rounded, UFontDesign.rounded.swiftUI)
		XCTAssertEqual(Font.Design.monospaced, UFontDesign.monospaced.swiftUI)
	}
	
	func testUFontWeight() {
		XCTAssertEqual(Font.Weight.ultraLight, UFontWeight.ultraLight.swiftUI)
		XCTAssertEqual(Font.Weight.thin, UFontWeight.thin.swiftUI)
		XCTAssertEqual(Font.Weight.light, UFontWeight.light.swiftUI)
		XCTAssertEqual(Font.Weight.regular, UFontWeight.regular.swiftUI)
		XCTAssertEqual(Font.Weight.medium, UFontWeight.medium.swiftUI)
		XCTAssertEqual(Font.Weight.semibold, UFontWeight.semibold.swiftUI)
		XCTAssertEqual(Font.Weight.bold, UFontWeight.bold.swiftUI)
		XCTAssertEqual(Font.Weight.heavy, UFontWeight.heavy.swiftUI)
		XCTAssertEqual(Font.Weight.black, UFontWeight.black.swiftUI)
	}
	
	func testUFontSwiftSystem(){
		
		let letra = UFont.system(size: 32, weight: .ultraLight, design: .serif).swiftUI
		
		XCTAssertEqual(letra,UFont.system(size: 32, weight: .ultraLight, design: .serif).swiftUI)
		}
	
	func testUFontSwiftCustom(){
		
		let letra = UFont.custom("Raleway-ExtraBold", size: 32).swiftUI
		
		XCTAssertEqual(letra,UFont.custom("Raleway-ExtraBold", size: 32).swiftUI)
			
		}

}
