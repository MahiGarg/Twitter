//
//  BaseViewModel.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import Foundation

class BaseViewModel {
    
    @Published var selfProfileData: ProfileData = ProfileData(username: "Mahi Garg",
                                                          userHandle: "mahigarg",
                                                          followerCount: 20,
                                                          followingCount: 100,
                                                          profilePicUrl: URL(string: "https://source.unsplash.com/user/c_v_r")!)
    
    
    
}
