

import UIKit

final class TabBarModel{
    typealias Router = AboutePersonRoute & AllFilesRoute & LastFileRoute
    let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
}

final class TabBarController: UITabBarController{
    let viewModel: TabBarModel
    
    init(viewModel: TabBarModel) {
        self.viewModel = viewModel
       super .init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
