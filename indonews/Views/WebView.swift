//
//  WebView.swift
//  indonews
//
//  Created by Yogesh Sehgal on 04/05/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable{
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
    
}
