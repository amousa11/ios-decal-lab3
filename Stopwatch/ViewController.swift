//
//  ViewController.swift
//  Stopwatch
//
//  Created by Ali Mousa on 2/16/17.
//  Copyright © 2017 Ali Mousa. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var date: Date? = nil
    var stopWatch: Stopwatch? = nil
    var timer: Timer? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopWatch = Stopwatch()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabel(_ time: Timer){
        timeLabel.text = stopWatch?.getTime((date?.timeIntervalSinceNow)!)
    }

    @IBAction func startButtonPressed(_ sender: UIButton) {
        date = Date()
        stopWatch = Stopwatch()
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self,
                                     selector: #selector(ViewController.updateLabel(_:)),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @IBAction func stopButtonPressed(_ sender: UIButton) {
        timer?.invalidate()
    }

}

