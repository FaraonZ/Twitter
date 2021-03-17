//
//  Post.swift
//  Twitter
//
//  Created by Farkhat on 12/24/20.
//  Copyright © 2020 Farkhat Senalov. All rights reserved.
//

import Foundation

struct Post: Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
