//
//  NamedFIlesViewController.swift
//  SkillBoxDisk
//
//  Created by Alex on 07.09.2023.
//

import UIKit

final class NamedFilesViewController: UIViewController{
    let viewModel: NamedFilesModel
   
    init(viewModel: NamedFilesModel) {
        self.viewModel = viewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Название файла".localizedText()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Назад".localizedText(), style: .plain, target: nil, action: #selector(backButton))
       
    }
    
    
    @objc func backButton(){
        viewModel.closablePage()
    }
    
}
