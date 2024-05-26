//
//  AuthViewModel.swift
//  SkillBoxDisk
//
//  Created by Alexander on 26.05.2024.
//

import Foundation
import WebKit

protocol AuthViewModelProtocol: AnyObject {
    var delegate: AuthViewControllerDelegate? {get set}
    //var model: LoginModel
    func loginAuth() -> URLRequest?
    func openTabBar()
}

class AuthViewModel: AuthViewModelProtocol {
    
    
    weak var delegate: AuthViewControllerDelegate?
    private let router: Router
   // var model = LoginModel.content
    
    init(router: Router) {
        self.router = router
    }
    
    func loginAuth() -> URLRequest? {
        guard var urlComponents = URLComponents(string: "https://oauth.yandex.ru/authorize") else { return nil }
        urlComponents.queryItems = [
            URLQueryItem(name: "response_type", value: "token"),
            URLQueryItem(name: "client_id", value: delegate?.clientID)
        ]
        guard let url = urlComponents.url else {return nil}
        return URLRequest(url: url)
    }
    
    func openTabBar() {
        //router.openTabBar()
    }
}
