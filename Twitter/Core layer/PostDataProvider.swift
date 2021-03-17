//
//  PostDataProvider.swift
//  Twitter
//
//  Created by Farkhat on 12/24/20.
//  Copyright © 2020 Farkhat Senalov. All rights reserved.
//

import Foundation

protocol PostDataProvider {
    func fetchPosts(success: @escaping ([Post]) -> Void, failure: @escaping (Error) -> Void)
}

final class PostNetworkDataProvider: PostDataProvider {
    func fetchPosts(success: @escaping ([Post]) -> Void, failure: @escaping (Error) -> Void) {
        let urlString = "https://jsonplaceholder.typicode.com/posts"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                failure(error)
            } else if let data = data {
                do {
                    let posts = try JSONDecoder().decode([Post].self, from: data)
                    DispatchQueue.main.async {
                        success(posts)
                    }
                } catch {
                    failure(error)
                }
            }
        }.resume()
    }
}
