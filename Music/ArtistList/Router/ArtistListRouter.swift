//
//  ArtistListRouter.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation
import UIKit


class ArtistListRouter: ArtistListRouterProtocol{
    
    func sendInfoToAlbumView(name: String, navigationController: UINavigationController){
        let albumsViewController = AlbumListBuilder.showAlbumListBuilder()
        albumsViewController.artistName = name
        navigationController.pushViewController(albumsViewController, animated: true)
    }
}
