//
//  PostData.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import Foundation

struct PostData: Codable, Hashable {
    var profilePictureUrl: URL
    var postPictureUrl: URL?
    var videoUrl: URL?
    var contentText: String
    
    var username: String
    var userHandle: String
    var isVerifiedAccount: Bool
    
    var mediaState: Int
    var postedDate: String
    var postTime: String { return postedDate.convertToDate()?.formattedDateDifference() ?? ""}
    
    var replyCount: Int
    var retweetCount: Int
    var likeCount: Int
    
    var replyText: String { return replyCount.formatNumber() }
    var retweetText: String { return retweetCount.formatNumber() }
    var likeText: String { return likeCount.formatNumber() }
}
