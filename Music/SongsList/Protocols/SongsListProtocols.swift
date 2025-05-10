//
//  ArtistListProtocols.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//


import Foundation
import UIKit

protocol SongsListPresenterProtocol: AnyObject {
    var view: SongsListViewProtocol? {get set}
    var router: SongsListRouterProtocol {get set}
    var interactor: SongsListInputInteractorProtocol {get set}
    
    func getSongsList()
    func sendSongName(with songId: Int, navigationController: UINavigationController)
    func songsListDidFetch(album: SongsListEntity)
}

protocol SongsListViewProtocol: AnyObject{
    var presenter: SongsListPresenterProtocol? {get set}
    func updateView(album: SongsListModel)
}

protocol SongsListInputInteractorProtocol: AnyObject{
    var presenter: SongsListPresenterProtocol? {get set}
    func fetchSongsList(with albumId: Int)
}

protocol SongsListRouterProtocol: AnyObject{
    func sendInfoToReproductorView(songId: Int, navigationController: UINavigationController)
}
