//
//  ArtistListRouter.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation
import UIKit


class ArtistListRouter: ArtistListRouterProtocol{
    var albumRouter: AlbumListRouterProtocol?
    
    func sendInfoToAlbumView(id: Int, navigationController: UINavigationController){
        let albumsViewController = AlbumListBuilder.showAlbumListBuilder(with: id)
        
        navigationController.pushViewController(albumsViewController, animated: true)
        
    }
}
