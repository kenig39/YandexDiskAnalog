//
//  AboutPersonModel.swift
//  SkillBoxDisk
//
//  Created by Alex on 05.09.2023.
//

import Foundation
import YandexLoginSDK


final class AboutPersonModel{
    typealias Router =  LastUploadRoute & Closable
    let router: Router
    
    
    init(router: Router) {
        self.router = router
    }
    
    func closeScreen(){
        router.close()
    }
    
    func openLastUpLoads(){
        router.lastUploads()
    }
    
    func loginOut(){
        
    }
    
    func changeLanguge() {
        
    }
    
}
