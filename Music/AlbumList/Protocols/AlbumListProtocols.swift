//
//  ArtistListProtocols.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//


import Foundation
import UIKit

protocol AlbumListPresenterProtocol: AnyObject {
    var view: AlbumListViewProtocol? {get set}
    var router: AlbumListRouterProtocol {get set}
    var interactor: AlbumListInputInteractorProtocol {get set}
    
    func getAlbumList()
    func sendAlbumName(whith id: Int,navigationController: UINavigationController)
    func albumListDidFetch(albumList: ArtistAlbumEntity)
}

protocol AlbumListViewProtocol: AnyObject{
    var presenter: AlbumListPresenterProtocol? {get set}
    func updateView(albumList: ArtistAlbumEntity)
}

protocol AlbumListInputInteractorProtocol: AnyObject{
    var presenter: AlbumListPresenterProtocol? { get }
    func fetchAlbumList(with id: Int)
}

protocol AlbumListRouterProtocol: AnyObject{
    func showAlbums(with id: Int,navigationController: UINavigationController)
}
