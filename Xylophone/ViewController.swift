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
    var fileName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        fileName = "C"
        playSound()
    }
    
    
    @IBAction func DButton(_ sender: Any) {
        fileName = "D"
        playSound()
    }
    
    @IBAction func EButton(_ sender: Any) {
        fileName = "E"
        playSound()
    }
    
    @IBAction func FButton(_ sender: Any) {
        fileName = "F"
        playSound()
    }
    
    @IBAction func GButton(_ sender: Any) {
        fileName = "G"
        playSound()
    }
    
    
    @IBAction func AButton(_ sender: Any) {
        fileName = "A"
        playSound()
    }
    
    
    @IBAction func BButton(_ sender: Any) {
        fileName = "B"
        playSound()
    }
    
    
    func playSound(){
        guard let url = Bundle.main.url(forResource: fileName , withExtension: "wav") else {return}
        
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

