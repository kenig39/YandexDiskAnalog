//
//  LastFilesViewController.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

class LastFilesViewController: UIViewController {
    
    let tableView = UITableView()
    
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
          
        setupUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func setupUI() {
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(LastFileTableViewCell.self, forCellReuseIdentifier: LastFileTableViewCell.identyfire)
    }

   

}
extension LastFilesViewController: UITableViewDelegate, UITableViewDataSource {
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LastFileTableViewCell.identyfire, for: indexPath) as! LastFileTableViewCell
        
        
        return cell
    }
    
}
