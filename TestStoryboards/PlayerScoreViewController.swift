//
//  PlayerScoreViewController.swift
//  TestStoryboards
//
//  Created by Shilpa Bansal on 19/12/20.
//

import Foundation
import UIKit

class PlayerScoreViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var name: String? {
        get {
            return nameLabel?.text
        }
        set {
            nameLabel?.text = newValue
        }
    }
    
    var score: String? {
        get {
            return scoreLabel?.text
        }
        set {
            scoreLabel?.text = newValue
        }
    }
}
