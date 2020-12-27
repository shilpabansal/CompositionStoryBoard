//
//  TestStoryboardsTests.swift
//  TestStoryboardsTests
//
//  Created by Shilpa Bansal on 19/12/20.
//

import XCTest
@testable import TestStoryboards

class TestStoryboardsTests: XCTestCase {
    private func makeStoryboard(name: String) -> UIStoryboard {
        return UIStoryboard(name: name, bundle: nil)
    }
    
    func testPlayer1Storyoard() {
        let storyBoard = makeStoryboard(name: "Player1")
        XCTAssert(storyBoard.instantiateInitialViewController() is PlayerScoreViewController)
        
        if let vc = storyBoard.instantiateInitialViewController() as? PlayerScoreViewController {
            
            let _ = vc.view
            vc.name = "TestMe"
            vc.score = "22"
            
            XCTAssert(vc.nameLabel.text == "TestMe")
        }
    }
    
    func testPlayer2Storyoard() {
        let storyBoard = makeStoryboard(name: "Player2")
        XCTAssert(storyBoard.instantiateInitialViewController() is PlayerScoreViewController)
        
        if let vc = storyBoard.instantiateInitialViewController() as? PlayerScoreViewController {
            
            let _ = vc.view
            vc.name = "TestMe"
            vc.score = "22"
            
            XCTAssert(vc.nameLabel.text == "TestMe")
        }
    }
}
