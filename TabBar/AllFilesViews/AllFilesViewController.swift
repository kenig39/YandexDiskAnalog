

import UIKit
import Alamofire

class AllFilesViewController: UIViewController {
   
    
    
    let tableView = UITableView()
    let networkLabel = UILabel()
    let noFilesImageView = UIImageView()
    let noFilesLabel = UILabel()
    
    private let refreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupConstrains()
    }
    
    @objc func refreshData() {
        
    }
    
    private func setupUI() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableView.self, forCellReuseIdentifier: "")
        
        
        
        refreshControl.addTarget(self, action: #selector(refreshData), for: .valueChanged)
        
        
    }
    private func setupConstrains() {
        
    }
}

extension AllFilesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
