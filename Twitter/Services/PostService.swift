//
//  PostService.swift
//  Twitter
//
//  Created by Mahi Garg on 31/10/23.
//

import Foundation
import Alamofire

class PostService : BaseService {
    
    private let trendingPostsEndpoint = "/trendingposts"
    
    static var instance = PostService()
    
    private override init() {
        //private constructor
    }
    
    func getPosts(queryParams: PostRequestData,
                  onSuccess: @escaping ([PostData])-> Void,
                  onError: @escaping (AFError)-> Void){
        
//        makeGetRequest(endpoint: trendingPostsEndpoint,
//                       queryParams: queryParams.dictionary,
//                       onSuccess: onSuccess,
//                       onError: onError)
        
        //DUMMY DATA
        
        var postArray : [PostData] = []
        
        for pos in 1...10 {
            var post: PostData = PostData(profilePictureUrl: URL(string: "https://source.unsplash.com/user/c_v_r")!,
                                          postPictureUrl: URL(string: "https://source.unsplash.com/user/c_v_r")!,
                                          videoUrl: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!,
                                          
                                          contentText: "It's never a bad thing to go with a classic, direct good morning. This text is simple and to the point, simply wishing your loved ones a good morning, making them feel special, and putting a smile on their face.",
                                          username: "Narendra Modi",
                                          userHandle: "@NarendraModi",
                                          isVerifiedAccount: true,
                                          mediaState: pos % 3,
                                          postedDate: "2023-1-31 03:58:44",
                                          replyCount: pos,
                                          retweetCount: pos,
                                          likeCount: 790000)
            
            postArray.append(post)
        }
        
        onSuccess(postArray)
        
    }
}
