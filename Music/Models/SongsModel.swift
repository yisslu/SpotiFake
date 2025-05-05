//
//  SongsModel.swift
//  Music
//
//  Created by Diplomado on 18/10/24.
//

import UIKit


struct SongsListModel{
    var albumName: String
    var albumImage: UIImage
    var songsList: [SongsModel]
}

struct SongsModel{
    var songName: String
    var duration: Int
}


