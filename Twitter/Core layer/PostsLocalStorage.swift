//
//  PostsLocalStorage.swift
//  Twitter
//
//  Created by Farkhat on 12/24/20.
//  Copyright © 2020 Farkhat Senalov. All rights reserved.
//

import Foundation

protocol PostsLocalStorage {
    func save(posts: [Post])
    func obtainPost() -> [Post]
}

final class PostsLocalStorageImpl: PostsLocalStorage {
    func save(posts: [Post]) {
        // todo: save posts
    }

    func obtainPost() -> [Post] {
        // todo: obtain posts
        return []
    }
}
