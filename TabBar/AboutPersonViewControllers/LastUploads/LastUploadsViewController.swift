//
//  LastUploadsViewController.swift
//  SkillBoxDisk
//
//  Created by Alex on 08.09.2023.
//

import UIKit

class LastUploadsViewController: UIViewController {
    
    let tableView = UITableView()
    
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
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Назад".localizedText(), style: .done, target: self, action: #selector(close))
        
        tableView.register(LastUploadTableViewCell.self, forCellReuseIdentifier: LastUploadTableViewCell.identyfire)
        
        navigationItem.title = "Последние Загрузки"
        view.backgroundColor = .white
     
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.frame = view.bounds
    }
   
    
    
    
    @objc func close(){
        viewModel.closable()
    }
    
}

extension LastUploadsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LastUploadTableViewCell.identyfire, for: indexPath) as! LastUploadTableViewCell
        
       
        
        return cell
    }
    
    
}

