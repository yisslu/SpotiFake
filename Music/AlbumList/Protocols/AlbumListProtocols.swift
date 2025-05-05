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
    
    func getAlbumList(with name: String)
    func sendAlbumName(whith name: String,navigationController: UINavigationController)
}

protocol AlbumListViewProtocol: AnyObject{
    var presenter: AlbumListPresenterProtocol? {get set}
    func updateView(albumList: [AlbumModel])
}

protocol AlbumListInputInteractorProtocol: AnyObject{
    var presenter: AlbumListOutputInteractorProtocol? {get set}
    func fetchAlbumList(with name: String)
}

protocol AlbumListOutputInteractorProtocol: AnyObject{
    
    func albumListDidFetch(albumList: [AlbumModel])
}

protocol AlbumListRouterProtocol: AnyObject{
    func sendInfoToSongsListView(albumName: String,navigationController: UINavigationController)
}
