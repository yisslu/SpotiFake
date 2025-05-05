//
//  ViewController.swift
//  Music
//
//  Created by Jesús Lugo Sáenz on 09/11/24.
//

import UIKit

class ArtistListViewController: UIViewController, ArtistListViewProtocol, UITableViewDataSource, UITableViewDelegate {
    
    
    var presenter: ArtistListPresenterProtocol?
    var artistArray: [String] = []
    
    private var customTableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.allowsSelection = true
        table.register(UITableViewCell.self,forCellReuseIdentifier: "Cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        presenter?.getArtistList()
        view.backgroundColor = .systemBackground
        view.addSubview(customTableView)
        addTableView()
        customTableView.dataSource = self
        customTableView.delegate = self
    }
    
    func updateView(artistList: [String]) {
        artistArray = artistList
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
        return artistArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = artistArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.sendArtistName(with: artistArray[indexPath.row], navigationController: navigationController!)
    }
}
