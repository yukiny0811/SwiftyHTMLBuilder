
# SwiftyHTMLBuilder

[![Release](https://img.shields.io/github/v/release/yukiny0811/SwiftyHTMLBuilder)](https://github.com/yukiny0811/SwiftyHTMLBuilder/releases/latest)
[![Swift Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fyukiny0811%2FSwiftyHTMLBuilder%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/yukiny0811/SwiftyHTMLBuilder)
[![Platform Compatibility](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fyukiny0811%2FSwiftyHTMLBuilder%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/yukiny0811/SwiftyHTMLBuilder)
[![License](https://img.shields.io/github/license/yukiny0811/SwiftyHTMLBuilder)](https://github.com/yukiny0811/SwiftyHTMLBuilder/blob/main/LICENSE)

Swift DSL for HTML documents

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

<img width="1337" alt="image" src="https://github.com/yukiny0811/SwiftyHTMLBuilder/assets/28947703/b4a37312-d7a2-402f-bdbf-d5e9213f52ab">

### Easy-To-Write MediaQuery

You can easily write responsive codes with MediaQuery class.

```.swift
MediaQuery(.minWidth, value: "500px") {
    nav {
        hstack(spaceBetween: true) {
            h1("SwiftyHTMLBuilder")
            hstack(hAlign: .center, spacing: "10px") {
                a(href: "https://github.com") { text("AAAAA") }
                a(href: "https://github.com") { text("BBBBB") }
                a(href: "https://github.com") { text("CCCCC") }
            }
        }
    }
    .backgroundColor(.aliceblue)
} falseContents: {
    nav {
        vstack(equalSpacing: true) {
            a(href: "https://github.com") { text("AAAAA") }
            a(href: "https://github.com") { text("BBBBB") }
            a(href: "https://github.com") { text("CCCCC") }
        }
        .width(100, unit: .vw)
        .backgroundColor(.aliceblue)
    }
    h1("SwiftyHTMLBuilder")
}
```

<img width="1015" alt="image" src="https://github.com/yukiny0811/SwiftyHTMLBuilder/assets/28947703/175e6f86-357b-4bea-a43b-29292593af45">

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

<img width="1312" alt="image" src="https://github.com/yukiny0811/SwiftyHTMLBuilder/assets/28947703/ee48d874-e8f8-4bd6-a61a-cca54995a41e">

## Usage

### HTML Document Template

```.swift
class MyHtml: HTML {
    var content: HTMLBlock {
        document {
            doctype()
            html {
                head {
                    meta(charset: .utf8)
                    title("SwiftyHTMLBuilder Example")
                }
                body {
                    h1("SwiftyHTMLBuilder")
                }
            }
        }
    }
}
```

### Xcode Project Setup

Create new Xcode project for Command Line Tools (macOS), nad add this package via Swift Package Manager.

For your convenience, setup your project with following steps. 

1. Edit your Scheme and append new environment variable MY_ROOT
<img width="916" alt="image" src="https://github.com/yukiny0811/SwiftyHTMLBuilder/assets/28947703/95f3635f-67a3-4e88-ac40-0fa29bab429a">

2. Create new Post-action for Run. This will make Xcode to open index.html everytime you run the project.

<img width="926" alt="image" src="https://github.com/yukiny0811/SwiftyHTMLBuilder/assets/28947703/bcb0dc67-cfa5-483d-9ec2-f628721101e4">

3. Organize your project directory structure
<img width="261" alt="image" src="https://github.com/yukiny0811/SwiftyHTMLBuilder/assets/28947703/2a9623e0-2e6f-4821-8457-3f336411902f">

4. Create URL object for outputPath (to index.html)
```.swift
import Foundation
import SwiftyHTMLBuilder

let projectRootPath = ProcessInfo.processInfo.environment["MY_ROOT"]!
let outputPath = URL(string: projectRootPath)!
    .appending(path: "Output")
    .appending(path: "index.html")
    .absoluteString
```
5. Write your HTML
```.swift
class MyHTML: HTML {
    var content: HTMLBlock {
        ...
    }
}
```

6. Compile your swift code to HTML code.
```.swift
let compiled = MyHtml().compile()
```

7. Write to index.html
```.swift
try! compiled.write(toFile: outputPath, atomically: true, encoding: .utf8)
```

### Convert HTML to HTMLBlock 

Use ```.build()``` to convert.

```.swift
class MyHtml: HTML {
    var content: HTMLBlock {
        document {
            doctype()
            html {
                MyHead().build()
                MyBody().build()
            }
        }
    }
}
```

### Use Undefined css, attribute, or HTML components

Because not all components are covered in this package, you may need to manually write css, attribute, or HTML components.
Contributions are welcome.

```.swift
img(src: "image.png")
    .css("z-index", "1")
    .attr("width", "300px")

// use text() to write raw HTML code
text("<style> * { padding: 0; margin: 0; } </style>")
```

## Covered Features

### HTML Tags

- html
- head
- body
- a
- br
- div
- doctype
- footer
- f1
- f2
- f3
- f4
- f5
- f6
- header
- img
- link
- meta
- nav
- p
- section
- span
- title
- text (original)
- empty (original)
- group (original)
- document (original)
- vstack (original)
- hstack (original)
- zstack (original)

### CSS Styles
- background-color
- color
- width
- height
- padding
- margin
- position

