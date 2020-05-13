//
//  NetworkManager.swift
//  indonews
//
//  Created by Yogesh Sehgal on 04/05/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import Foundation

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://newsapi.org/v2/top-headlines?country=in&apiKey=d39e0845740b40e49d51f79fdbd36070") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.articles
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
