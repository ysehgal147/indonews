//
//  ContentView.swift
//  indonews
//
//  Created by Yogesh Sehgal on 03/05/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailView(response: post.url)){
                    HStack{
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("indonews")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//let posts = [
//    Post(id:1,title: "Hello"),
//    Post(id:2,title: "Bonjour"),
//    Post(id:3,title: "Hola"),
//    Post(id:4,title: "Konnichiwa")
//]
