
# SwiftyHTMLBuilder

[![Release](https://img.shields.io/github/v/release/yukiny0811/SwiftyHTMLBuilder)](https://github.com/yukiny0811/SwiftyHTMLBuilder/releases/latest)
[![Swift Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fyukiny0811%2FSwiftyHTMLBuilder%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/yukiny0811/SwiftyHTMLBuilder)
[![Platform Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fyukiny0811%2FSwiftyHTMLBuilder%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/yukiny0811/SwiftyHTMLBuilder)
[![License](https://img.shields.io/github/license/yukiny0811/SwiftyHTMLBuilder)](https://github.com/yukiny0811/SwiftyHTMLBuilder/blob/main/LICENSE)

Swift DSL for HTML documents!

## Key Features

### SwiftUI-like Layouts

Use SwiftUI-like layout components such as VStack, HStack, and ZStack for HTML structure definition.

```.swift
class MyBody: HTML {
    var content: HTMLBlock {
        body {
            h1("SwiftyHTMLBuilder")
            
            hstack(spacing: "100px") {
                p("hstack1")
                p("hstack1")
                p("hstack1")
            }
            .backgroundColor(.aliceblue)
            
            hstack(equalSpacing: true) {
                p("hstack2")
                p("hstack2")
                p("hstack2")
            }
            
            vstack(spacing: "10px") {
                p("vstack1")
                p("vstack2")
                p("vstack3")
            }
            .backgroundColor(.aliceblue)
            
            zstack(vAlign: .center, hAlign: .center) {
                img(src: "image.png")
                    .width(300, unit: .px)
                vstack(spacing: "0px") {
                    h2("Swifty")
                        .margin(0)
                    h2("HTML")
                        .margin(0)
                }
                .color(.white)
            }
        }
    }
}
```

### Autocomplete for Styling

Autocomplete for css, making it easier to apply CSS and other styling properties directly in your Swift code.

```.swift
h2("HTML")
    .margin(0)
    .padding(0)
    .color(.red)
    .backgroundColor(r: 255, g: 0, b: 255)
```

### Modularize views.

Organize your HTML code more effectively by dividing it into classes. 
This approach allows you to modularize HTML content, enabling the use of loops (for) and conditional statements (if) for HTML generation.

```.swift
class MyCell: HTML {
    let count: Int
    init(count: Int) {
        self.count = count
    }
    var content: HTMLBlock {
        hstack(spaceBetween: true) {
            h3("cell")
            h3(String(count))
        }
        .width(400, unit: .px)
        .backgroundColor(.aliceblue)
    }
}

// using MyCell
vstack(spacing: "10px") {
    for i in 0..<10 {
        if i.isMultiple(of: 2) {
            MyCell(count: i).build()
        }
    }
}
```

## Usage


