//
//  HomeViewModel.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import Foundation

class HomeViewModel: BaseViewModel, ObservableObject {
    
    @Published var postArray: [PostData] = []
    var post: PostData = PostData(profilePicture: URL(string: "https://source.unsplash.com/user/c_v_r")!,
                                  media: URL(string: "https://source.unsplash.com/user/c_v_r")!,
                                  name: "Narendra Modi",
                                  userName: "@NarendraModi",
                                  isVerifiedAccount: true, postedDate: ".4d",
                                  text: "It's never a bad thing to go with a classic, direct good morning. This text is simple and to the point, simply wishing your man a good morning, making him feel special, and putting a smile on his face.",
                                  reply: 211,
                                  retweet: 12, like: 790)
    
}
