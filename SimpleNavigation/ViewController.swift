//
//  ViewController.swift
//  SimpleNavigation
//
//  Created by Ricardo Hui on 2/3/2019.
//  Copyright © 2019 Ricardo Hui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var timer = Timer()
    var time = 210
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func play(_ sender: Any) {
     timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    @objc func processTimer(){
        if time > 0 {
            time = time - 1
            print("A second has passed!")
            timerLabel.text = String(time)
        }else{
            timer.invalidate()
        }
        
    }
    @IBAction func reset(_ sender: Any) {
        time = 210
        timerLabel.text = String(time)
    }
    
    @IBAction func plus10(_ sender: Any) {
        time += 10
        timerLabel.text = String(time)
    }
    
    @IBAction func minus10(_ sender: Any) {
        time -= 10
        timerLabel.text = String(time)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        
       
    }


}

