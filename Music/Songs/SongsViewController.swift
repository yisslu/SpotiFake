//
//  SongsViewController.swift
//  Music
//
//  Created by Diplomado on 18/10/24.
//

import UIKit

class SongsViewController: UIViewController {
    
    
    @IBOutlet weak var imageSong: UIImageView!
    @IBOutlet  weak var titleSong: UILabel!
    @IBOutlet  weak var artistSong: UILabel!
    @IBOutlet  weak var durationSong: UILabel!
    @IBOutlet  weak var remainingSong: UILabel!
    @IBOutlet weak var imageButtonPlay: UIButton!
    @IBOutlet weak var sliderTime: UISlider!
    
    var isPlaying: Bool = false
    var timer = Timer()
    
    var indexSong: Int = 0 {
        didSet {
            setSongs()
        }
    }
    
    var elapsedTime: Int = 0{
        didSet {
            let elapsedTimeSong = secondsToMinutesSeconds(elapsedTime)
            durationSong.text = String(format: "%02d:%02d", elapsedTimeSong.0, elapsedTimeSong.1)
        }
    }
    
    var remainingTime: Int = 0 {
        didSet {
            let remainingTimeSong = secondsToMinutesSeconds(remainingTime)
            remainingSong.text = String(format: "-%02d:%02d", remainingTimeSong.0, remainingTimeSong.1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isPlaying.toggle()
        durationSong.text = "00:00"
        sliderTime.minimumValue = 0
        sliderTime.maximumValue = Float(songs[indexSong].duration)
        setSongs()
    }
    
    @IBAction func playSong(_ sender: Any) {
        if isPlaying {
            imageButtonPlay.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            isPlaying.toggle()
            timerSong()
        }else{
            imageButtonPlay.setImage(UIImage(systemName: "play.fill"), for: .normal)
            isPlaying.toggle()
            timer.invalidate()
        }
        
    }
    
    @IBAction func nextSong(_ sender: UIButton) {
        indexSong = (indexSong < songs.count - 1) ? indexSong + 1 : 0
        resetControls()
    }
    
    @IBAction func previousSong(_ sender: UIButton) {
        indexSong = (indexSong > 0) ? indexSong - 1 : songs.count - 1
        resetControls()
    }
    
    @IBAction func timeSlider(_ sender: UISlider) {
        elapsedTime = Int(sender.value)
        remainingTime = songs[indexSong].duration - elapsedTime
    }
    
    private func timerSong () {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTimerSong), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimerSong() {
        if elapsedTime < songs[indexSong].duration {
            elapsedTime += 1
            sliderTime.value += 1
            remainingTime -= 1
        }else{
            
            indexSong = (indexSong < songs.count - 1) ? indexSong + 1 : 0
            resetControls()
        }
    }
    
    func setSongs() {
        imageSong.image = songs[indexSong].albumImage
        titleSong.text = songs[indexSong].songName
        artistSong.text = songs[indexSong].artistName
        remainingTime = songs[indexSong].duration
    }
    
    func secondsToMinutesSeconds(_ seconds: Int) -> (Int, Int) {
        return ((seconds % 3600) / 60, (seconds % 3600) % 60)
    }
    
    func resetControls (){
        sliderTime.value = 0
        elapsedTime = 0
        sliderTime.maximumValue = Float(songs[indexSong].duration)
    }
}
