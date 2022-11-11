//
//  HomeViewController.swift
//  Fluidity
//
//  Created by Saul Lopez Lucas on 10/28/22.
//

import UIKit
import AVFoundation

class HomeViewController: UIViewController {
    
    var minutes = 15
    var timer = Timer()
    var audioPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var timerSlider: UISlider!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    
    @IBAction func slider(_ sender: UISlider) {
        minutes = Int(sender.value)
        minuteLabel.text = String(minutes) + " minutes"
    }
    
    @IBAction func startTimer(_ sender: Any) {
        // Count time at 1 minute intervals
        timer = Timer.scheduledTimer(timeInterval: 60, target: self, selector: #selector(HomeViewController.counter), userInfo: nil, repeats: true)
        
        // Hide slider and start button
        timerSlider.isHidden = true
        startButton.isHidden = true
    }
    
    @objc func counter() {
        minutes -= 1
        minuteLabel.text = String(minutes) + " minutes"
        
        if(minutes == 0) {
            timer.invalidate()
            
            // Play alarm
            audioPlayer.play()
        }
    }
    
    
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
        minutes = 15
        timerSlider.setValue(15, animated: true)
        minuteLabel.text = "15 minutes"
        
        // Stop alarm
        audioPlayer.stop()
        
        // Show slider and start button
        timerSlider.isHidden = false
        startButton.isHidden = false
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set up timer alarm
        do {
            let audioPath = Bundle.main.path(forResource: "Fluidity_alarm", ofType: ".mp3")
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        }
        catch {
            print("Cannot set up timer alarm")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
