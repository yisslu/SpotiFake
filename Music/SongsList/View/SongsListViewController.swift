//
//  SongsListViewController.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 23/11/24.
//

//
//  ViewController.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import UIKit

class SongsListViewController: UIViewController, SongsListViewProtocol, UITableViewDataSource, UITableViewDelegate {
    
    
    var presenter: (any SongsListPresenterProtocol)?
    
    var album = SongsListModel()
    
    private var customTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.allowsSelection = true
        table.register(UITableViewCell.self,forCellReuseIdentifier: "Cell2")
        return table
    }()
    
    private var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private var stack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 30
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        presenter?.getSongsList()
        view.backgroundColor = .systemBackground
        view.addSubview(stack)
        addStack()
        stack.addArrangedSubview(imageView)
        stack.addArrangedSubview(customTableView)
        addImage()
        customTableView.dataSource = self
        customTableView.delegate = self
    }
    
    func updateView(album: SongsListModel) {
        self.album = album
        imageView.image = UIImage(named: album.albumImage)
    }
    
    func addImage(){
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalTo: stack.heightAnchor, multiplier: 0.3)
        ])
    }
    
    func addStack(){
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stack.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Songs"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return album.songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "Cell2")
        
        let song = album.songs[indexPath.row]
        cell.textLabel!.text = song.songName
        
        cell.detailTextLabel?.text = song.duration
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.sendSongName(with: indexPath.row , navigationController: navigationController!)
    }
}
