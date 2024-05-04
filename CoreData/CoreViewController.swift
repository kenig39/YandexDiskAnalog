//
//  CoreViewFiles.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

class CoreViewController: UIViewController{
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if !Coredata.shared.isNewUser(){
          let vc = OnboadrdingPages()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        } else {
            var viewController = UIViewController()
              let router = DefaultRouter(rootTransition: PushTransition())
                viewController = router.showTabBar()
                 viewController.modalPresentationStyle = .fullScreen
            present(viewController, animated: true)
        }
    }
}

class Coredata {
    static let shared = Coredata()
    
    func isNewUser() -> Bool{
        return !UserDefaults.standard.bool(forKey: "didSee")
    }
    
    func loginedUser(){
        UserDefaults.standard.set(true, forKey: "didSee")
    }
}



