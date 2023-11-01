//
//  TwitterTests.swift
//  TwitterTests
//
//  Created by Mahi Garg on 30/10/23.
//

import XCTest
@testable import Twitter

final class TwitterTests: XCTestCase {
    private var viewModel: HomeViewModel!
    
    override func setUpWithError() throws {
        viewModel = HomeViewModel()
    }
    
    override func tearDownWithError() throws {
        viewModel = nil
    }
    
    func test_InitialEmptyArray () {
        let viewModel = HomeViewModel()
        
        let initialCounts = viewModel.postArray.count
        
        XCTAssertTrue(initialCounts == 0)
    }
    
    func test_PostDataArraySize () {
        let viewModel = HomeViewModel()
        
        let beforeSize = viewModel.postArray.count
        viewModel.fetchPosts()
        let afterSize = viewModel.postArray.count
        
        XCTAssertEqual(beforeSize + viewModel.pageSize , afterSize)
    }

}
