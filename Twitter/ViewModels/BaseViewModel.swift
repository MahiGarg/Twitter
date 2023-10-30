//
//  BaseViewModel.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import Foundation

class BaseViewModel {
    
    @Published var profileData: MyProfileData = MyProfileData(name: "Mahi Garg",
                                                              UserName: "dmahigarg",
                                                              follower: 20,
                                                              following: 100,
                                                              picture: URL(string: "https://source.unsplash.com/user/c_v_r")!)
}
