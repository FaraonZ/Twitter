//
//  PostService.swift
//  Twitter
//
//  Created by Farkhat on 12/24/20.
//  Copyright © 2020 Farkhat Senalov. All rights reserved.
//

import Foundation

protocol PostService {
    func fetchPosts(success: @escaping ([Post]) -> Void, failure: @escaping (Error) -> Void)
    func updatePost(by id: Int)
    func removePost(by id: Int)
    func obtainPosts() -> [Post]
}

final class PostServiceImpl: PostService {

    private let dataProvider: PostDataProvider = PostNetworkDataProvider()
    private let localStorage: PostsLocalStorage = PostsLocalStorageImpl()

    func fetchPosts(success: @escaping ([Post]) -> Void, failure: @escaping (Error) -> Void) {
        if localStorage.obtainPost().isEmpty {
            dataProvider.fetchPosts { [weak self] posts in
                self?.localStorage.save(posts: posts)
                success(posts)
            } failure: { error in
                failure(error)
            }
        } else {
            success(localStorage.obtainPost())
        }
    }

    func updatePost(by id: Int) {
        print(id)
    }

    func removePost(by id: Int) {
        //
        //
        //
        //
    }

    func obtainPosts() -> [Post] {
        return []
    }
}
