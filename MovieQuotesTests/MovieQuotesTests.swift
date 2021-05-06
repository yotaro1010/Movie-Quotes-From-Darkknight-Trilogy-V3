//
//  MovieQuotesTests.swift
//  MovieQuotesTests
//
//  Created by Yotaro Ito on 2021/03/19.
//

import XCTest
@testable import MovieQuotes

class MovieQuotesTests: XCTestCase {
    
    let apiManeger = APIManeger()

    func testSearchMovie(){
        
        let expectation = self.expectation(description: "Search for Batman Movies")
        apiManeger.searchMovie(pathType: .movie, query:"batman", successHandler: {(result) in
            XCTAssertNotNil(result)
        }, errorHandler: {(error) in
            XCTAssertNil(error)
        })
        
        expectation.fulfill()
        self.waitForExpectations(timeout: 10.0, handler: nil)
    }
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

}
