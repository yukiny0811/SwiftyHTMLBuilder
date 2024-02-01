//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2024/02/01.
//

import WebKit

class SnapshotVC_1000: NSViewController {
    static let size: CGFloat = 1000
    var webView: WKWebView = .init()
    override func viewDidLoad() {
        webView.frame = .init(x: 0, y: 0, width: Self.size, height: Self.size)
        self.view.frame = .init(x: 0, y: 0, width: Self.size, height: Self.size)
        self.view.addSubview(webView)
    }
}

class SnapshotVC_300: NSViewController {
    static let size: CGFloat = 300
    var webView: WKWebView = .init()
    override func viewDidLoad() {
        webView.frame = .init(x: 0, y: 0, width: Self.size, height: Self.size)
        self.view.frame = .init(x: 0, y: 0, width: Self.size, height: Self.size)
        self.view.addSubview(webView)
    }
}

class SnapshotVC_600: NSViewController {
    static let size: CGFloat = 600
    var webView: WKWebView = .init()
    override func viewDidLoad() {
        webView.frame = .init(x: 0, y: 0, width: Self.size, height: Self.size)
        self.view.frame = .init(x: 0, y: 0, width: Self.size, height: Self.size)
        self.view.addSubview(webView)
    }
}
