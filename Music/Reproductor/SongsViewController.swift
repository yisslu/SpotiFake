////
////  SongsViewController.swift
////  Music
////
////  Created by Diplomado on 18/10/24.
////
//
//import UIKit
//
//class SongsViewController: UIViewController {
//    var songs: [SongsModel] = []
//    
//    private var customView: SongsView {
//        return view as! SongsView
//    }
//    
//    override func loadView() {
//        view = SongsView()
//    }
//    
//    var isPlaying: Bool = false
//    var timer = Timer()
//    
//    var indexSong: Int = 0{
//        didSet {
//            setSongs()
//        }
//    }
//    
//    var elapsedTime: Int = 0{
//        didSet {
//            let elapsedTimeSong = secondsToMinutesSeconds(elapsedTime)
//            customView.durationSong.text = String(format: "%02d:%02d", elapsedTimeSong.0, elapsedTimeSong.1)
//        }
//    }
//    
//    var remainingTime: Int = 0 {
//        didSet {
//            let remainingTimeSong = secondsToMinutesSeconds(remainingTime)
//            customView.remainingSong.text = String(format: "-%02d:%02d", remainingTimeSong.0, remainingTimeSong.1)
//        }
//    }
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        customView.imageButtonPlay.addAction(UIAction(handler: playSong(_:)), for: .touchUpInside)
//        customView.imageButtonNext.addAction(UIAction(handler: nextSong(_:)), for: .touchUpInside)
//        customView.imageButtonPrevious.addAction(UIAction(handler: previousSong(_:)), for: .touchUpInside)
//        customView.sliderTime.addTarget(self, action: #selector(timeSlider(_:)), for: .valueChanged)
//        customView.backgroundColor = .systemBackground
//        isPlaying.toggle()
//        customView.durationSong.text = "00:00"
//        customView.sliderTime.minimumValue = 0
//        customView.sliderTime.maximumValue = Float(songs[indexSong].duration)
//        setSongs()
//    }
//    
//    private func playSong(_ sender: UIAction) {
//        if isPlaying {
//            customView.imageButtonPlay.setImage(UIImage(systemName: "pause.fill")!.applyingSymbolConfiguration(.init(pointSize: 70)), for: .normal)
//            isPlaying.toggle()
//            timerSong()
//        }else{
//            customView.imageButtonPlay.setImage(UIImage(systemName: "play.fill")!.applyingSymbolConfiguration(.init(pointSize: 70)), for: .normal)
//            isPlaying.toggle()
//            timer.invalidate()
//        }
//        
//    }
//    
//    private func nextSong(_ sender: UIAction) {
//        indexSong = (indexSong < songs.count - 1) ? indexSong + 1 : 0
//        resetControls()
//    }
//    
//    private func previousSong(_ sender: UIAction) {
//        indexSong = (indexSong > 0) ? indexSong - 1 : songs.count - 1
//        resetControls()
//    }
//    
//    @objc func timeSlider(_ sender: UISlider) {
//        elapsedTime = Int(sender.value)
//        remainingTime = songs[indexSong].duration - elapsedTime
//    }
//    
//    private func timerSong () {
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateTimerSong), userInfo: nil, repeats: true)
//    }
//    
//    @objc func updateTimerSong() {
//        if elapsedTime < songs[indexSong].duration {
//            elapsedTime += 1
//            customView.sliderTime.value += 1
//            remainingTime -= 1
//        }else{
//            
//            indexSong = (indexSong < songs.count - 1) ? indexSong + 1 : 0
//            resetControls()
//        }
//    }
//    
//    func setSongs() {
//        customView.imageSong.image = songs[indexSong].albumImage
//        customView.titleSong.text = songs[indexSong].songName
//        customView.artistSong.text = songs[indexSong].artistName
//        remainingTime = songs[indexSong].duration
//    }
//    
//    func secondsToMinutesSeconds(_ seconds: Int) -> (Int, Int) {
//        return ((seconds % 3600) / 60, (seconds % 3600) % 60)
//    }
//    
//    func resetControls (){
//        customView.sliderTime.value = 0
//        elapsedTime = 0
//        customView.sliderTime.maximumValue = Float(songs[indexSong].duration)
//    }
//}
