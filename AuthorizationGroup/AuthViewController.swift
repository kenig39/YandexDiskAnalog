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
    var viewModel: AuthViewControllerDelegate? {get set}
    var token: String? {get set}
    var clientID: String {get set}
    var userIsLogged: Bool {get set}
}

final class AuthViewController: UIViewController{
    
    weak var delegate: AuthViewControllerDelegate?
    
    
    private let webVIew = WKWebView()
    private let clientID = "6ab311e2b11f4669b455674832317d57"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews(){
        view.addSubview(webVIew)
        
        webVIew.snp.makeConstraints { make in
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
                $0.name == "acces_token"})?.value {
                delegate?.handelTokenChanged(token: token)
            }
            dismiss(animated: true)
            }
        do {
            decisionHandler(.allow)
        }
    }
}
private let scheme = ""
