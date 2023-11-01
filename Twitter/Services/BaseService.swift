//
//  BaseService.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import Foundation
import Alamofire

class BaseService{
    
    let BASE_URL = "https://twitter.com"
    
    func makeGetRequest<T: Codable>(endpoint: String,
                                    queryParams: [String: Any],
                                    onSuccess: @escaping (T)-> Void,
                                    onError: @escaping (AFError)-> Void){
        AF.request(BASE_URL + endpoint,
                   method: .get,
                   parameters: queryParams,
                   encoding: URLEncoding.queryString)
        .responseDecodable(of: T.self) { response in
            
            switch response.result {
            case .success(let data):
                onSuccess(data)
            case .failure(let error):
                onError(error)
            }
        }
    }
    
    func makePostRequest<T: Codable>(endpoint: String,
                                     header: HTTPHeaders? = nil,
                                     body:[String: Any]? = nil,
                                     onSuccess: @escaping (T)-> Void,
                                     onError: @escaping (AFError)-> Void){
        AF.request(BASE_URL + endpoint,
                   method: .post,
                   parameters: body,
                   encoding: JSONEncoding.default,
                   headers: header)
        .responseDecodable(of: T.self) { response in
            
            switch response.result {
            case .success(let data):
                onSuccess(data)
            case .failure(let error):
                onError(error)
            }
        }
    }
    
}
