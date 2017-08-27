//
//  ViewController.swift
//  Proto2voc
//
//  Created by Martijn van Gogh on 02-09-15.
//  Copyright (c) 2015 Martijn van Gogh. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    

    var ding:AVAudioPlayer = AVAudioPlayer()
 

    @IBOutlet var sliderValue: UISlider!
    
    @IBAction func sliderChanged(sender: AnyObject) {
    }
    
    @IBAction func pause(sender: AnyObject) {
    }
    
    @IBOutlet var play: UIBarButtonItem!
    
    @IBAction func playButton(sender: AnyObject) {
        

        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareAudios()
        ding.play()
               
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "backgrapp1.jpg")!)
    }
    
    func prepareAudios() {
        
        var path = NSBundle.mainBundle().pathForResource("Damrakaudio", ofType: "m4a")
        do {
            ding = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path!))
        } catch _ {
            ding = nil
        }
        ding.prepareToPlay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

