//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        var fileName = sender.accessibilityLabel
        playSound(a:fileName)
    }
    
    
    func playSound(a:String?){
        guard let url = Bundle.main.url(forResource: a , withExtension: "wav") else {return}
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer (contentsOf: url)
            
            guard let player = player else {return}
            
            player.play()
            
        } catch let error {
            print (error.localizedDescription)
        }
        
    }
    

}

