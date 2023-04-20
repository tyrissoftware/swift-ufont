#  Font

## Features

### UIKit SwiftUI and AppKit

An interesting feature added to UFont is the ability to instantiate fonts depending 
on the technology the project it runs on is using at that moment. As such, UFont can 
create fonts taking into account if SwiftUI, UIKit or AppKit are present on the 
project when it is running.
One such case would be converting into UFont or NSFont.

## Initializers

Ucolor has an initializer that allows to set a font's size and family parameter. On 
top of that, UFont grants us two extra initializers depending on the selected enum 
case(system or custom)  that allow us to either set only a Font with a specific name 
and size, or with specific design and weight.


