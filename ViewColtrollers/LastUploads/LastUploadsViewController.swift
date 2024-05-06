//
//  LastUploadsViewController.swift
//  SkillBoxDisk
//
//  Created by Alex on 08.09.2023.
//

import UIKit

class LastUploadsViewController: UIViewController {
    
    let viewModel: LastUploadsModel
    
    init(viewModel: LastUploadsModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(title: "Закрыть", target: self, selector: #selector(close))
        
          let hStack = UIStackView(arrangedSubviews: [button])
          addStackView(vStack: hStack)
          
        
        navigationItem.title = "Последние Загрузки"
        view.backgroundColor = .white
     
    }
    
    
    
    @objc func close(){
        viewModel.closable()
    }
    
}