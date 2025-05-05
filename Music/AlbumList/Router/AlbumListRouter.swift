//
//  ArtistListRouter.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation
import UIKit


class AlbumListRouter: AlbumListRouterProtocol{
    func sendInfoToSongsListView(albumName: String, navigationController: UINavigationController) {
        let songsListViewController = SongsListBuilder.showSongsListBuilder()
        songsListViewController.albumName = albumName
        navigationController.pushViewController(songsListViewController, animated: true)
    }
}
