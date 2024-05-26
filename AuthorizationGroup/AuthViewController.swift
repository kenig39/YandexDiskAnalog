//
//  AuthViewController.swift
//  SkillBoxDisk
//
//  Created by Alexander on 30.12.2023.
//

import Foundation
import WebKit
import SnapKit

protocol AuthViewControllerDelegate: AnyObject {
    var viewModel: AuthViewModelProtocol? {get set}
    var token: String? {get set}
    var clientID: String {get set}
    var userIsLogged: Bool {get set}
}

final class AuthViewController: UIViewController, AuthViewControllerDelegate{
    
    var viewModel: AuthViewModelProtocol?
    
    
    weak var delegate: AuthViewControllerDelegate?
    var token: String? = UserDefaults.standard.string(forKey: "token")
    var clientID: String = "6ab311e2b11f4669b455674832317d57"
    var userIsLogged: Bool = UserDefaults.standard.bool(forKey: "userIsLogged")
    


   private var webView = WKWebView()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

private func WebViewSetup() {
    let webConfig = WKWebViewConfiguration()
    var webview = WKWebView(frame: .zero, configuration: webConfig)
    webView = webview
    view = webView
    guard let reguest = viewModel?.loginAuth() else { return }
    webView.load(reguest)
    webView.navigationDelegate = self
    
  
}
    
    init(viewModel: AuthViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        view.addSubview(webView)
        
        webView.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
    }
    

    
}

extension AuthViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let url = navigationAction.request.url, url.scheme == scheme {
            let targetString = url.absoluteString.replacingOccurrences(of: "#", with: "?")
            
            guard let components = URLComponents(string: targetString) else {return}
            
            if let token = components.queryItems?.first(where: {
                $0.name == "access_token"})?.value {
                UserDefaults.standard.set(token, forKey: "token")
                UserDefaults.standard.set(true, forKey: "userIsLogged")
            }
            dismiss(animated: true)
            }
        do {
            decisionHandler(.allow)
        }
    }
}
private let scheme = ""
