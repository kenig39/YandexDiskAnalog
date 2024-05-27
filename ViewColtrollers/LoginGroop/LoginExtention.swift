//
//  LoginExtention.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit


extension LoginViewController {
    
    
    func style() {
        //                loginImage.translatesAutoresizingMaskIntoConstraints = false
        //                loginImage.contentMode = .scaleAspectFill
        //                loginImage.layer.cornerRadius = 16
        //                loginImage.layer.masksToBounds = true
        //                loginImage.backgroundColor = UIColor(white: 0.78, alpha: 0.1)
        //                loginImage.image = UIImage(named: "login")
        //
        
        //        loginButton.translatesAutoresizingMaskIntoConstraints = false
        //        loginButton.setTitle("Enter".localizedText(), for: .normal)
        //        loginButton.tintColor = UIColor.black
        //
    }
    
    
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton(frame: CGRect(origin: CGPoint(x: 0.0, y: 0.0), size: CGSize(width: 100.0, height: 40.0)))
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        return button
    }
    
    
//    func constraints() {
//        view.addSubview(loginButton)
//        loginButton.translatesAutoresizingMaskIntoConstraints = false
//        loginButton.frame(forAlignmentRect: CGRect(x: 0, y: 0, width: 250, height: 50))
//        loginButton.center = view.center
//        
//    }
}
