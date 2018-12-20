//
//  ViewController.swift
//  UserDefaults
//
//  Created by Michael Miles on 12/20/18.
//  Copyright © 2018 Michael Miles. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    var playMusic = true
    
    var player: AVAudioPlayer?
    
    @IBOutlet weak var musicButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if playMusic == true {
            playSong()
        } else if playMusic == false {
            return
        }
    }


    func playSong() {
        let soundURL = Bundle.main.url(forResource: "bensound-ukulele", withExtension: "mp3")
        
        do {
            try player = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        player?.play()
    }
}

