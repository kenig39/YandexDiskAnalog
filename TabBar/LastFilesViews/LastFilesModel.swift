//
//  LastFilesModel.swift
//  SkillBoxDisk
//
//  Created by Alex on 05.09.2023.
//

import Foundation

protocol LastFilesViewControllerProtocol: AnyObject {
    var identifire: String {get set}
    var viewModel: LastFilesViewModelProtocol {get set}
}

protocol LastFilesViewModelProtocol: AnyObject {
    var delegate: LastFilesViewControllerProtocol? {get set}
    func openPrewviewFile(_ model: Items)
    
}

final class LastFilesModel: LastFilesViewModelProtocol {
    weak var delegate: LastFilesViewControllerProtocol?

    typealias Routes = Closable
    let router: Routes
    
    init(router: Routes) {
        self.router = router
    }
    
    func openPrewviewFile(_ model: Items) {
    }
}
    
