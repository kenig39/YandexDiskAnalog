

import UIKit
class AllFilesViewController: UIViewController {

    let tableView = UITableView()
  
    private let viewModel: AllFilesViewModel
    
    init(viewModel: AllFilesViewModel) {
        self.viewModel = viewModel
        super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let refreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupConstrains()
    }
    
   
    
    private func setupUI() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AllFileTableViewCell.self, forCellReuseIdentifier: AllFileTableViewCell.identyfire)
        refreshControl.addTarget(self, action: #selector(refreshData), for: .valueChanged)
        
        
    }
    
    
    
    @objc func refreshData() {
        
    }
    
    
    private func setupConstrains() {
        
    }
}

extension AllFilesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AllFileTableViewCell.identyfire, for: indexPath) as! AllFileTableViewCell
        
        cell.textLabel?.text = cell.nameFileLabel.text
        
        return cell
    }
    
    
}
