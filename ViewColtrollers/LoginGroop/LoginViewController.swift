
//
//  Created by Alex on 28.08.2023.
//
import UIKit
import SnapKit



final class LoginViewController: UIViewController {
    
    
    let viewModel: LoginModel
    
    let loginButton = UIButton()
    let loginImage = UIImageView()

    init(viewModel: LoginModel) {
        self.viewModel = viewModel
        super .init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
      override func viewDidLoad() {
          super.viewDidLoad()
          
          setupUI()
          
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
    
    func setupUI() {
                
        
          
           [loginImage, loginButton].forEach { views in
            views.translatesAutoresizingMaskIntoConstraints = false
        }
        
        view.addSubview(loginImage)
        view.addSubview(loginButton)
    }
    
        func constraints() {
            
            loginImage.snp.makeConstraints { make in
                make.top.equalTo(self.view.snp.top).inset(200)
                make.centerX.equalTo(self.view)
                make.height.equalTo(150)
                make.width.equalTo(150)
               
            }
            
            loginButton.snp.makeConstraints { make in
                make.top.equalTo(loginImage.snp.bottom).inset(50)
                make.centerX.equalTo(self.view)
                make.width.equalTo(100)
                make.height.equalTo(50)
            }
           
        }
    
 }




