//
//  AllFilesAPI.swift
//  SkillBoxDisk
//
//  Created by Alexander on 26.05.2024.
//

import UIKit

class AllFilesAPI: ServiceProtocol {
    var session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
}
