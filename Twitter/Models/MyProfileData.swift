//
//  MyProfileData.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import Foundation

struct MyProfileData: Codable, Hashable {
    var name: String
    var UserName: String
    var follower: Int
    var following: Int
    var picture: URL
}


