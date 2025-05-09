//
//  ViewController.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import UIKit

class AlbumListViewController: UIViewController, AlbumListViewProtocol, UITableViewDataSource, UITableViewDelegate {
    
    var presenter: AlbumListPresenterProtocol?
    var albums =  [Album()]
    
    private var customTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.allowsSelection = true
        table.register(UITableViewCell.self,forCellReuseIdentifier: "Cell")
        table.rowHeight = 100
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        presenter?.getAlbumList()
        view.backgroundColor = .systemBackground
        view.addSubview(customTableView)
        addTableView()
        customTableView.dataSource = self
        customTableView.delegate = self
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func updateView(albumList: ArtistAlbumEntity) {
        albums = albumList.albums
        title = albumList.artistName
    }
    
    func addTableView(){
        NSLayoutConstraint.activate([
            customTableView.topAnchor.constraint(equalTo: view.topAnchor),
            customTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            customTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            customTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let album = albums[indexPath.row]
        
        cell.textLabel!.text = album.title
        cell.imageView!.image = UIImage(named: album.image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.sendAlbumName(whith: indexPath.row, navigationController: navigationController!)
    }
}
