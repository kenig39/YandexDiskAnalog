//
//  AllFilesViewModel.swift
//  SkillBoxDisk
//
//  Created by Alex on 04.09.2023.
//

import Foundation

final class AllFilesViewModel {
    typealias Routes = NameFilesRoute & Closable
    let router: Routes
    
    init(router: Routes){
        self.router = router
    }
    
    func openNamedFiles(){
        router.nameFiles()
    }
}

