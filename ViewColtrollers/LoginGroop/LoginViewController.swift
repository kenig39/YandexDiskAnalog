
//
//  Created by Alex on 28.08.2023.
//
import UIKit


final class LoginViewController: UIViewController {
    let viewModel: LoginModel

    init(viewModel: LoginModel) {
        self.viewModel = viewModel
        super .init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

  
  
    
      override func viewDidLoad() {
          super.viewDidLoad()
          constraints()
          
    
      }
    
    @objc func openItemsList(){
        
        let url = "https://oauth.yandex.ru/authorize?response_type=token&client_id=6ab311e2b11f4669b455674832317d57"
        
        if let url = URL(string: url){
            UIApplication.shared.canOpenURL(url as URL)
            var viewController = UIViewController()
            let router = DefaultRouter(rootTransition: EmptyTransition())
            viewController = router.showTabBar()
            viewController.modalPresentationStyle = .fullScreen
            present(viewController, animated: true)
        } else  {
            print("Error open")
        }
    }
 }




