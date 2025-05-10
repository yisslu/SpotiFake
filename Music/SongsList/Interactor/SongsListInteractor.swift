//
//  ArtistListInteractor.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import Foundation

class SongsListInteractor: SongsListInputInteractorProtocol{
    
    weak var presenter: SongsListPresenterProtocol?

    func fetchSongsList(with albumId: Int) {
        do {
            guard let fileURL = Bundle.main.url(forResource: "songs-list", withExtension: "json") else {
                print("❌ No se encontró el archivo JSON")
                return
            }

            let songsData = try Data(contentsOf: fileURL)
            let songsList = try JSONDecoder().decode([SongsListEntity].self, from: songsData)

            if let album = songsList.first(where: { $0.albumId == albumId }) {
                print("✅ Álbum encontrado: \(album.albumName)")
                presenter?.songsListDidFetch(album: album)
            } else {
                print("⚠️ No se encontró el álbum con id \(albumId)")
            }

        } catch {
            print("❌ Error al decodificar JSON: \(error)")
        }
    }
    
}
