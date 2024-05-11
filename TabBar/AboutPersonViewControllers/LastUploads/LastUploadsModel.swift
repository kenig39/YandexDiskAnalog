//
//  LastUploadsModel.swift
//  SkillBoxDisk
//
//  Created by Alex on 08.09.2023.
//

import Foundation

final class LastUploadsModel{
    typealias Router = LastUploadRoute & Closable
    let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func closable(){
        router.close()
    }
    
    
}
