//
//  ArtistListRouter.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation
import UIKit


class AlbumListRouter: AlbumListRouterProtocol{
    func showAlbums(with id: Int, navigationController: UINavigationController) {
        let songsListViewController = SongsListBuilder.showSongsListBuilder(albumId: id)
        
        navigationController.pushViewController(songsListViewController, animated: true)
    }
}
