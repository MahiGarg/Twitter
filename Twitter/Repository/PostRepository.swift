//
//  PostRepository.swift
//  Twitter
//
//  Created by Mahi Garg on 31/10/23.
//

import Foundation
import Alamofire

class PostRepository : BaseRepository{
    
    static var instance = PostRepository()
    
    private override init() {
        //private constructor
    }
    
    func getposts(queryParams: PostRequestData,
                  onSuccess: @escaping ([PostData])-> Void,
                  onError: @escaping (AFError)-> Void){
        PostService.instance.getPosts(queryParams: queryParams,
                                      onSuccess: onSuccess,
                                      onError: onError)
        
    }
}

