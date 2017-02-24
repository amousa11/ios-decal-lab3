//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Ali Mousa on 2/16/17.
//  Copyright © 2017 Ali Mousa. All rights reserved.
//

import Foundation
import UIKit

class Stopwatch{
    
    
    func Stopwatch(){
        
    }
    
    func getTime(_ start: TimeInterval) -> String{
        
        let time = start * -1
        print(time)
        let minutes = Int(time/60)
        print("Minutes: " + String(minutes))
        let seconds = Int(time) % 60
        print("Seconds: " + String(seconds))
        let milliseconds = Int(time*1000) % 10
        print("Milliseconds: " + String(milliseconds))
        let timeString = String(format: "%02d:%02d.%d", minutes, seconds, milliseconds)
        print(timeString)
        return timeString
    }
    
    
}
