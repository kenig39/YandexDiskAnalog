//
//  LastFilesViewController.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

class LastFilesViewController: UIViewController {
    let viewModel: LastFilesModel
    
    init(viewModel: LastFilesModel) {
        self.viewModel = viewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

   

}
