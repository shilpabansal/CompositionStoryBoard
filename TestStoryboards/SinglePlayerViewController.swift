//
//  SinglePlayerViewController.swift
//  TestStoryboards
//
//  Created by Shilpa Bansal on 19/12/20.
//

import Foundation
import UIKit

final class SinglePlayerViewController: UIViewController {
    private(set) var player: PlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Player1", let vc = segue.destination as? PlayerScoreViewController{
            player = vc
            let _ = player?.view
            player?.name = "Test3"
            player?.score = "888"
        }
    }
}
