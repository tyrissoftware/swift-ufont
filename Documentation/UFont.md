# UFont

UFont is a simple struct that defines the font description.  

## Features

### UIKit, SwiftUI and AppKit

A UFont can be converted to any Apple framework we want to use:

```swift
let font = UFont.system(14)
font.swiftUI
font.uiKit
font.appKit
```

In the case of SwiftUI, UFont provides a View extension so you can use it directly:

```swift
Text("Hello, world"!).font(UFont.system(14))
```

## Initializers

You can construct a UFont by passing a font family and size. The font family can be a standard system font or a custom one.

```swift
extension UFont {
	public static func custom(
		_ name: String,
		size: CGFloat
	) -> Self {
		.init(family: .custom(name), size: size)
	}
	
	public static func system(
		size: CGFloat,
		weight: UFontWeight,
		design: UFontDesign
	) -> Self {
		.init(family: .system(design, weight), size: size)
	}
}
```
