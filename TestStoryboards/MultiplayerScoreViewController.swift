//
//  MultiplayerScoreViewController.swift
//  TestStoryboards
//
//  Created by Shilpa Bansal on 20/12/20.
//

import Foundation
import UIKit

class MultiplayerScoreViewController: UIViewController {
    var containerViewController: UIViewController? {
        return children[0]
    }
    
    private(set) var player1: PlayerScoreViewController?
    private(set) var player2: PlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Player1", let vc = segue.destination as? PlayerScoreViewController {
            player1 = vc
            let _ = player1?.view
            player1?.name = "Tes4"
            player1?.score = "8882"
        }
        else if segue.identifier == "Player2", let vc = segue.destination as? PlayerScoreViewController {
            player2 = vc
            let _ = player2?.view
            player2?.name = "Test5"
            player2?.score = "8884"
        }
    }
    
}
