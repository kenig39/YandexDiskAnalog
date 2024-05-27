
//
//  Created by Alex on 28.08.2023.
//
import UIKit



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
          constraints()
          setupUI()
    
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
                
                loginImage.contentMode = .scaleAspectFill
                loginImage.layer.cornerRadius = 16
                loginImage.layer.masksToBounds = true
                loginImage.backgroundColor = UIColor(white: 0.78, alpha: 0.1)
                loginImage.image = UIImage(named: "login")
        
        
                
                loginButton.setTitle("Enter".localizedText(), for: .normal)
                loginButton.addTarget(self, action: #selector(openItemsList), for: .touchUpInside)
                loginButton.tintColor = UIColor.black
                loginButton.layer.cornerRadius = 5
        
          
           [loginImage, loginButton].forEach { View in
            View.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(View)
        }
    }
    
        func constraints() {
            
            loginImage.snp.makeConstraints { make in
                make.top.equalTo(view.snp.top).inset(100)
                make.height.equalTo(100)
                make.width.equalTo(100)
                make.centerX.equalTo(self.view)
            }
            
            loginButton.snp.makeConstraints { make in
                make.top.equalTo(loginImage.snp.bottom).inset(50)
                make.centerX.equalTo(self.view)
                make.width.equalTo(100)
                make.height.equalTo(50)
            }
           
            
           
    
        }
 }




