//
//  SongsModel.swift
//  Music
//
//  Created by Diplomado on 18/10/24.
//

import UIKit

struct SongsModel{
    var albumImage: UIImage
    var songName: String
    var artistName: String
    var duration: Int
}


var songs: [SongsModel] = [
    SongsModel(albumImage: UIImage.badBunnyNadieSabe, songName: "MONACO", artistName: "Bad Bunny", duration: 267),
    SongsModel(albumImage: UIImage.badBunnyVerano, songName: "Un Coco", artistName: "Bad Bunny", duration: 196),
    SongsModel(albumImage: UIImage.beatlesAbbeyRoad, songName: "Here Comes The Sun", artistName: "The Beatles", duration: 165)
    ]
