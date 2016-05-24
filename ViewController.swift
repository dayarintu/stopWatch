//
//  ViewController.swift
//  stopWatch
//
//  Created by Dayakar Reddy Marri on 5/24/16.
//  Copyright © 2016 dhaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counterTimer = 0
    var timer: NSTimer = NSTimer()
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        
        updateTimerLabel()
        
        super.viewDidLoad()
        
    }
    
    @IBAction func resetBtnPressed(sender: AnyObject) {
        timer.invalidate()
        counterTimer = 0
        updateTimerLabel()
        
    }
    @IBAction func pauseBtnPressed(sender: AnyObject){
        timer.invalidate()
    }
    
    
    @IBAction func startBtnPressed(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
    }
    
    func updateTimer(){
        timerLabel.text = String(counterTimer++)
    }
    func updateTimerLabel(){
        timerLabel.text = String(counterTimer)
    }
    
}
