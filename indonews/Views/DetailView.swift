//
//  DetailView.swift
//  indonews
//
//  Created by Yogesh Sehgal on 04/05/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI
import WebKit
import Foundation

struct DetailView: View {
    
    let response: String
    
    var body: some View {
       
        WebView(request: URLRequest(url: URL(string: response)!))
     
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(response: "www.google.com")
    }
}

