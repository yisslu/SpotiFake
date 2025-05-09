//
//  ArtistListProtocols.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//


import Foundation
import UIKit

protocol ArtistListPresenterProtocol: AnyObject {
    var view: ArtistListViewProtocol? {get set}
    var router: ArtistListRouterProtocol {get set}
    var interactor: ArtistListInputInteractorProtocol {get set}
    
    func getArtistList()
    func sendArtistName(with id: Int, navigationController: UINavigationController)
}

protocol ArtistListViewProtocol: AnyObject{
    func updateView(artistList: [String])
}

protocol ArtistListInputInteractorProtocol: AnyObject{
    func fetchArtistList () -> [ArtistListEntity]
}

protocol ArtistListRouterProtocol: AnyObject{
    var albumRouter: AlbumListRouterProtocol? { get }
    
    func sendInfoToAlbumView(id: Int, navigationController: UINavigationController)
}
