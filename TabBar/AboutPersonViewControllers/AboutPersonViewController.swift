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
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Выход".localizedText(), image: nil, target: self, action: #selector(actionSheet))
        
        buttonTap()
     
    }
    
    func buttonTap(){
        
        let lastUpLoad = UIButton(title: "Последние загрузки".localizedText(), target: self, selector: #selector(openLastUploads))
        let changeLocal = UIButton(title: "Сменить язык".localizedText(), target: self, selector: #selector(changeLanguage))
        
       
        view.addSubviews(view: [changeLocal, lastUpLoad])
        lastUpLoad.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
       // lastUpLoad.layer.cornerRadius = 5
        lastUpLoad.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true

        changeLocal.topAnchor.constraint(equalTo: lastUpLoad.bottomAnchor, constant: 10).isActive = true
        changeLocal.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15).isActive = true
        changeLocal.widthAnchor.constraint(equalToConstant: 200).isActive = true
        changeLocal.heightAnchor.constraint(equalToConstant: 40).isActive = true
        changeLocal.layer.cornerRadius = 5
        changeLocal.layer.borderColor = .init(genericCMYKCyan: 6, magenta: 56, yellow: 98, black: 100, alpha: 1)
        changeLocal.layer.borderWidth = 3
        
//        let vStack = UIStackView(arrangedSubviews: [lastUpLoad, changeLocal])
//        addStackView(vStack: vStack)
        
        

    }
    
    
    @objc func openLastUploads(){
        viewModel.openLastUpLoads()
    }
    
    @objc func changeLanguage() {
        viewModel.changeLanguge()
    }
    
    
    @objc func actionSheet(){
        let actionsheet = UIAlertController(title: "Профиль".localizedText(), message: "", preferredStyle: .actionSheet)
        actionsheet.addAction(UIAlertAction(title: "Выход".localizedText(), style: .destructive, handler: { _ in
            let action = UIAlertController(title: "Вы уверенны что хотите выйти из аккаунта".localizedText(), message: "Это сотрет все ваши данные".localizedText(), preferredStyle: .alert)
            
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
