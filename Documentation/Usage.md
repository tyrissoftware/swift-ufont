# Usage

There are many ways to use this library, but this is the way we use it.

Define a struct to hold all the fonts in your theme:

```swift
struct ThemeFont {
	var title1: UFont
	var title2: UFont
	[…]
}
```

And now you can initialize it with the font hierarchy defined by your style guide.

## SwiftUI

If you are using SwiftUI, you can conform to EnvironmentKey so you can easily access your fonts in any view:

```swift
extension ThemeFont: EnvironmentKey {
	public static let defaultValue = ThemeFont()
}

extension EnvironmentValues {
	public var fonts: ThemeFont {
		get {
			return self[ThemeFont.self]
		}
		set {
			self[ThemeFont.self] = newValue
		}
	}
}

struct MyView: View {
	@Environment(\.fonts.title1.swiftUI) var font
	
	var body: some View {
		Text("Hello, World!").font(font)
	}
}
```

## UIKit

You can pass your Theme manually, define a Singleton or you can use the [UIAppearance](https://developer.apple.com/documentation/uikit/uiappearance) and apply your styles globally.

```swift
UILabel.appearance().font = fonts.title1.uiKit
```

## AppKit

Same as before:

```swift
NSLabel.appearance().font = fonts.title1.appKit
```
