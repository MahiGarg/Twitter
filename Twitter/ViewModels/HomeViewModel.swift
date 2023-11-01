//
//  HomeViewModel.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import Foundation

class HomeViewModel: BaseViewModel, ObservableObject {
    
    @Published var postArray: [PostData] = []
    
    var currentPageNumber = 0
    var isAPICallOngoing = false
    var pageSize = 10
    
    func fetchPosts() {
        
        guard !isAPICallOngoing else {
            //API Call already ongoing, wait for result
            return
        }
        
        isAPICallOngoing = true
        
        currentPageNumber = currentPageNumber + 1
        PostRepository.instance.getposts(queryParams: PostRequestData(pageSize: 10,
                                                                      pageNumber: currentPageNumber),
                                         onSuccess: { data in
            self.postArray.append(contentsOf: data)
            self.isAPICallOngoing = false
        }, onError: { error in
            self.isAPICallOngoing = false
            
            //Since the API failed, redure the page number
            self.currentPageNumber = self.currentPageNumber - 1
            
            //show this to UI
        })
    }
    
}
