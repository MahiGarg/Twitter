//
//  MyProfileData.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import Foundation

struct ProfileData: Codable, Hashable {
    var username: String
    var userHandle: String
    
    var followerCount: Int
    var followingCount: Int
    var profilePicUrl: URL
}


