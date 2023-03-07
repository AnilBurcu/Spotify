//
//  AuthViewController.swift
//  Spotify
//
//  Created by Anıl Bürcü on 6.03.2023.
//

import UIKit
import WebKit

class AuthViewController: UIViewController,WKNavigationDelegate {
    
    private let webView: WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero, configuration: config)
        
        return webView
    }()
    
    public var completionHandler: ((Bool) -> Void)?    //  Auth işlemi aşarılı olduğunda diğer viewController'lara bilgi göndermek için

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sign In"
        view.backgroundColor = .systemBackground
        webView.navigationDelegate = self
        view.addSubview(webView)
        guard let url = AuthManager.shared.signInURL else {
            return
        }
        webView.load(URLRequest(url: url))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        guard let url = webView.url else {
            return
        }
        // Exchange the code for access token
        let compponent = URLComponents(string: url.absoluteString)
        guard let code = compponent?.queryItems?.first(where: { $0.name == "code"})?.value else {
            return
        }
        print("Code: \(code)")
        AuthManager.shared.exchangeCodeForToken(code: code){ [weak self] success in
            
            DispatchQueue.main.async {
                self?.navigationController?.popToRootViewController(animated: true)
                self?.completionHandler?(success)
            }
            
            
            
        }}
    
}
