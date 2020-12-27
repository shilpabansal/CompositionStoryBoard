//
//  TimedPlayerViewController.swift
//  TestStoryboards
//
//  Created by Shilpa Bansal on 19/12/20.
//

import Foundation
import UIKit

class TimedPlayerViewController: UIViewController {
    private(set) var timeBar: TimeBarViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TimeView", let vc = segue.destination as? TimeBarViewController {
            timeBar = vc
            let _ = timeBar?.view
            timeBar?.timeText.text = "Timer11"
        }
    }
}
