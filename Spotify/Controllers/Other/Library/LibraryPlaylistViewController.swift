//
//  LibraryPlaylistViewController.swift
//  Spotify
//
//  Created by Anıl Bürcü on 16.03.2023.
//

import UIKit

class LibraryPlaylistViewController: UIViewController {

    var playlists = [Playlist]()
    
    public var selectionHandler: ((Playlist)-> Void)?
    
    private let noPlaylistsView = ActionLabelView()
    
    private let tableView: UITableView = {
        
        let tableView = UITableView(frame: .zero,style: .grouped)
        
        tableView.register(SearchResultSubtitleTableViewCell.self, forCellReuseIdentifier: SearchResultSubtitleTableViewCell.identifier)
        tableView.isHidden = true // başlangıçta varsayılan olarak gizli olması için
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        view.addSubview(noPlaylistsView)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        setUpNoPlaylistsView()
        fetchDatas()
        
        if selectionHandler != nil {
            navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(didTapClose))
        }

        // Do any additional setup after loading the view.
    }
    
    @objc private func didTapClose(){
        dismiss(animated: true)
    }
    
    private func fetchDatas(){
        APICaller.shared.getCurrentUserPlaylists{[weak self]result in
            DispatchQueue.main.async {
                switch result {
                case .success(let playlist):
                    self?.playlists = playlist
                    self?.updateUI()
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    private func setUpNoPlaylistsView() {
        
        noPlaylistsView.delegate = self
        noPlaylistsView.configure(with: ActionLabelViewViewModel(text: "You don't have any playlist yet.", actionTitle: "Create Playlist"))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        noPlaylistsView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        noPlaylistsView.center = view.center // ortalamak için
        tableView.frame = view.bounds
    }
    
    private func updateUI(){
        if playlists.isEmpty {
            // Show label
            noPlaylistsView.isHidden = false
            tableView.isHidden = true
        }else {
            // Show table
            tableView.reloadData()
            noPlaylistsView.isHidden = true
            tableView.isHidden = false
        }
    }
    

public func showCreatePlaylistAlert(){
    let alert = UIAlertController(title: "New Playlist", message: "Enter PLaylist Name", preferredStyle: .alert)
            alert.addTextField{ textfield in
                textfield.placeholder = "Playlist..."
            }
            alert.addAction((UIAlertAction(title: "Cancel", style: .cancel)))
            alert.addAction((UIAlertAction(title: "Create", style: .default, handler: { _ in
                guard let field = alert.textFields?.first,
                      let text = field.text,
                      !text.trimmingCharacters(in: .whitespaces).isEmpty else {
                    return
                }
                APICaller.shared.createPlaylist(with: text) { success in
                    if success {
                        // Refresh list of playlist
                        self.fetchDatas()
                    }else {
                        print("Failed to create playlist")
                    }
                }
            })))
            present(alert,animated: true)
}
}

extension LibraryPlaylistViewController:ActionLabelViewDelegate{
    func actionLabelViewDidTapButton(_ actionView: ActionLabelView) {
        showCreatePlaylistAlert()
    }
    

    
}

extension LibraryPlaylistViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playlists.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: SearchResultSubtitleTableViewCell.identifier,
            for: indexPath
        ) as? SearchResultSubtitleTableViewCell else {
            return UITableViewCell()
        }
        let playlist = playlists[indexPath.row]
        cell.configure(
            with: SearchResultSubtitleTableViewCellViewModel(
                title: playlist.name,
                subtitle: playlist.owner.display_name,
                imageURL: URL(string: playlist.images.first?.url ?? "")
            )
        )
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let playlist = playlists[indexPath.row]
        
        guard selectionHandler == nil else {
            selectionHandler?(playlist)
            dismiss(animated: true)
            return
        }
        
        
        let vc = PlaylistViewController(playlist: playlist)
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.isOwner = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
}
