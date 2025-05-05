//
//  SongsView.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 24/10/24.
//

import UIKit

class SongsView: UIView {
    
    lazy var imageSong: UIImageView = {
        let image = UIImageView(image: .beatlesAbbeyRoad)
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var titleSong: UILabel = {
        let label = UILabel()
        label.text = "Un Verano Sin Ti"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var artistSong: UILabel = {
        let label = UILabel()
        label.text = "Un Verano Sin Ti"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var durationSong: UILabel = {
        let label = UILabel()
        label.text = "00:00"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var remainingSong: UILabel = {
        let label = UILabel()
        label.text = "-4:00"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var imageButtonPlay: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "play.fill")!
            .applyingSymbolConfiguration(.init(pointSize: 70)), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    lazy var sliderTime: UISlider = UISlider()
    
    lazy var imageButtonNext: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "forward.fill")!
            .applyingSymbolConfiguration(.init(pointSize: 25)), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setContentHuggingPriority(.required, for: .horizontal)
        return button
    }()
    
    lazy var imageButtonPrevious: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "backward.fill")!
            .applyingSymbolConfiguration(.init(pointSize: 25)), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setContentHuggingPriority(.required, for: .horizontal)
        return button
    }()
    
    lazy var mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var reproductionStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var reproductionControls: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        addMainStack()
        addImageSong()
        addSongTitle()
        addSongArtist()
        addSongTime()
        addControls()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews(){
        addSubview(mainStack)
        mainStack.addArrangedSubview(imageSong)
        mainStack.addArrangedSubview(titleSong)
        mainStack.addArrangedSubview(artistSong)
        reproductionStack.addArrangedSubview(durationSong)
        reproductionStack.addArrangedSubview(sliderTime)
        reproductionStack.addArrangedSubview(remainingSong)
        mainStack.addArrangedSubview(reproductionStack)
        reproductionControls.addArrangedSubview(imageButtonPrevious)
        reproductionControls.addArrangedSubview(imageButtonPlay)
        reproductionControls.addArrangedSubview(imageButtonNext)
        mainStack.addArrangedSubview(reproductionControls)
    }
    
    private func addMainStack() {
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            mainStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            mainStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 8),
            mainStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,constant: -8)
        ])
    }
    
    private func addImageSong() {
        NSLayoutConstraint.activate([
            imageSong.heightAnchor.constraint(equalTo: mainStack.heightAnchor, multiplier: 0.5)
        ])
    }
    
    private func addSongTitle(){
        NSLayoutConstraint.activate([
            titleSong.heightAnchor.constraint(equalTo: mainStack.heightAnchor, multiplier: 0.05)
        ])
    }
    
    private func addSongArtist(){
        NSLayoutConstraint.activate([
            artistSong.heightAnchor.constraint(equalTo: mainStack.heightAnchor, multiplier: 0.05)
        ])
    }
    
    private func addSongTime(){
        NSLayoutConstraint.activate([reproductionStack.heightAnchor.constraint(equalTo: mainStack.heightAnchor, multiplier: 0.1)])
    }
    
    private func addControls() {
        NSLayoutConstraint.activate([
            reproductionControls.topAnchor.constraint(equalTo: reproductionStack.bottomAnchor),
            reproductionControls.bottomAnchor.constraint(equalTo: mainStack.bottomAnchor)
        ])
    }
    
    
}
