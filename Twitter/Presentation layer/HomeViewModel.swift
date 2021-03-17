//
//  HomeViewModel.swift
//  Twitter
//
//  Created by Farkhat on 12/24/20.
//  Copyright © 2020 Farkhat Senalov. All rights reserved.
//

import Foundation

final class HomeViewModel {
    var didStartRequest: () -> Void = { }
    var didEndRequest: () -> Void = { }
    var didGetError: (Error) -> Void = { _ in }
    private(set) var posts: [Post] = []
    private let postService: PostService = PostServiceImpl()
    private let authService: AuthService = AuthServiceImpl()

    func fetchPosts() {
        didStartRequest()
        postService.fetchPosts { [weak self] posts in
            self?.posts = posts
            self?.didEndRequest()
        } failure: { [weak self] error in
            self?.didGetError(error)
        }
    }

    func updatePostLikeCount(id: Int) {
        postService.updatePost(by: id)
    }

    func logout() {
        authService.logout()
    }
}
