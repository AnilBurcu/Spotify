//
//  LibraryViewController.swift
//  Spotify
//
//  Created by Anıl Bürcü on 6.03.2023.
//

import UIKit

class LibraryViewController: UIViewController {

    
    private let playlistVC = LibraryPlaylistViewController()
    private let albumVC = LibraryAlbumsViewController()
 
    private let scrollView:UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    private let toggleView = LibraryToggleView() // oluşturduğumuz custam view'i eklemek için
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        view.addSubview(toggleView)
        toggleView.delegate = self // oluşturduğumuz protokolün özellikğini kullanmak delegate'ini çağırıyoruz
        scrollView.delegate = self
        view.addSubview(scrollView)
        scrollView.contentSize = CGSize(width: view.width*2, height: scrollView.height)
        addChildren()
        updateBarButton()

    }
    
    private func updateBarButton(){
        switch toggleView.state {
        case .playlist:
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
        case .album:
            navigationItem.rightBarButtonItem = nil
        }
    }
    
    @objc private func didTapAdd(){
        playlistVC.showCreatePlaylistAlert()
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        scrollView.frame = CGRect(
            x: 0,
            y: view.safeAreaInsets.top+55,
            width: view.width,
            height: view.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom-55)
        
        toggleView.frame = CGRect(
            x: 0,
            y: view.safeAreaInsets.top,
            width: 200,
            height: 55)
    }
    
    private func addChildren(){
        addChild(playlistVC)
        scrollView.addSubview(playlistVC.view)
        playlistVC.view.frame = CGRect(x: 0, y: 0, width: scrollView.width, height: scrollView.height)
        playlistVC.didMove(toParent: self)
        
        addChild(albumVC)
        scrollView.addSubview(albumVC.view)
        albumVC.view.frame = CGRect(x: view.width, y: 0, width: scrollView.width, height: scrollView.height)
        albumVC.didMove(toParent: self)
    }
    


}
extension LibraryViewController:UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        
        if scrollView.contentOffset.x >= (view.width-100) {    // Scroll bu konuma gelince yana kaydırması için (default da bırakabilirsin)
            toggleView.update(with: .album)
            updateBarButton()
        }else {
            toggleView.update(with: .playlist)
            updateBarButton()
        }
    }
}

extension LibraryViewController:LibraryToggleViewDelegate {
    
    func libraryToggleViewDidTapPlaylists(_ toggleView: LibraryToggleView) {
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)      // butona basınca yan sayfaya kaydırması için
        updateBarButton()
    }
    
    func libraryToggleViewDidTapAlbums(_ toggleView: LibraryToggleView) {
        scrollView.setContentOffset(CGPoint(x: view.width, y: 0), animated: true)  // butona basınca yan sayfaya kaydırması için
        updateBarButton()
    }
    
    
}
