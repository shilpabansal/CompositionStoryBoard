//
//  SinglePlayerViewControllerTests.swift
//  TestStoryboardsTests
//
//  Created by Shilpa Bansal on 20/12/20.
//

import XCTest
@testable import TestStoryboards

class SinglePlayerViewControllerTests: XCTestCase {
    private func makeStoryboard(name: String) -> UIStoryboard {
        return UIStoryboard(name: name, bundle: nil)
    }
    
    func testPlayer1Storyoard() {
        let storyBoard = makeStoryboard(name: "SinglePlayerGame")
        XCTAssert(storyBoard.instantiateInitialViewController() is SinglePlayerViewController)
    }
    
    func testMultiPlayerGame() {
        let storyBoard = makeStoryboard(name: "MultiplayerGame")
        XCTAssert(storyBoard.instantiateInitialViewController() is MultiPlayerViewController)
    }
    
    func testMultiPlayerScore() {
        let storyBoard = makeStoryboard(name: "MultiplayerScore")
        XCTAssert(storyBoard.instantiateInitialViewController() is MultiplayerScoreViewController)

        if let playerScore = storyBoard.instantiateInitialViewController() as? MultiplayerScoreViewController {
            let _ = playerScore.view
                        
            XCTAssertNotNil(playerScore.children[0] as? PlayerScoreViewController)
            XCTAssertNotNil(playerScore.children[1] as? PlayerScoreViewController)
        }
    }
}
