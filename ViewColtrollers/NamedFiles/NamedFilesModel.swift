//
//  NamedFilesModel.swift
//  SkillBoxDisk
//
//  Created by Alex on 07.09.2023.
//

import Foundation

final class NamedFilesModel{
    typealias Router = NameFilesRoute & Closable
    let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func nextScreen(){
        router.nameFiles()
    }
    
    func closablePage(){
        router.close()
    }
    
}
