//
//  AboutPersonViewController.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

class AboutPersonViewController: UIViewController {

    private let viewModel: AboutPersonModel
    
    init(viewModel: AboutPersonModel) {
        self.viewModel = viewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buttonTap(){
        
        let button = UIButton(title: "Последние загрузки", target: self, selector: #selector(openLastUploads))
        let hStack = UIStackView(arrangedSubviews: [button])
        addStackView(vStack: hStack)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "exit", image: nil, target: self, action: #selector(actionSheet))
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonTap()
     
    }
    
    @objc func openLastUploads(){
        viewModel.openLastUpLoads()
    }
    
    
    @objc func actionSheet(){
        let actionsheet = UIAlertController(title: "Профиль".localizedText(), message: "", preferredStyle: .actionSheet)
        actionsheet.addAction(UIAlertAction(title: "Выход".localizedText(), style: .destructive, handler: { _ in
            let action = UIAlertController(title: "Вы уверенны что хотите выйти".localizedText(), message: "Это сотрет все ваши данные".localizedText(), preferredStyle: .alert)
            
            action.addAction(UIAlertAction(title: "Yes".localizedText(), style: .destructive, handler: {_ in
                self.viewModel.closeScreen()
        
            }))
            
            action.addAction(UIAlertAction(title: "No".localizedText(), style: .cancel))
                self.present(action, animated: true)
        }))
        actionsheet.addAction(UIAlertAction(title: "Отмена".localizedText(), style: .cancel))
        present(actionsheet, animated: true)
    }
    
    
}