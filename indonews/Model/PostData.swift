//
//  PostData.swift
//  indonews
//
//  Created by Yogesh Sehgal on 04/05/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let articles: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return publishedAt
    }
    let publishedAt: String
    let author: String?
    let title: String
    let url: String
    let name: String?
}
