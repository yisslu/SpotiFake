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
    
    func getSongsList(with name: String)
    func sendSongName(with name: String, navigationController: UINavigationController)
    func transformSecondsToMinutesFor(this time: Int) -> String
}

protocol SongsListViewProtocol: AnyObject{
    var presenter: SongsListPresenterProtocol? {get set}
    func updateView(songsList: [SongsModel], image: UIImage)
}

protocol SongsListInputInteractorProtocol: AnyObject{
    var presenter: SongsListOutputInteractorProtocol? {get set}
    func fetchSongsList(with name: String)
}

protocol SongsListOutputInteractorProtocol: AnyObject{
    
    func songsListDidFetch(songsList: [SongsModel], image: UIImage)
}

protocol SongsListRouterProtocol: AnyObject{
    func sendInfoToReproductorView(name: String, navigationController: UINavigationController)
}
