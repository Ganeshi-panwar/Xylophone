//
//  ViewController.swift
//  Xylophone
//
//  Created by Yatharth Rawat on 20/12/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CButtonTapped(_ sender: UIButton) {
        print("c")
        playSound()
        
    }
    func playSound() {
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
       
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            guard let player = player else { return }
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
}
