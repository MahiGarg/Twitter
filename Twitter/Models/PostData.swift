//
//  PostData.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import Foundation

struct PostData: Codable, Hashable {
    var profilePicture: URL
    var media: URL
    var name: String
    var userName: String
    var isVerifiedAccount: Bool
    var postedDate: String
    var text: String
    var reply: Int
    var retweet: Int
    var like: Int
}
