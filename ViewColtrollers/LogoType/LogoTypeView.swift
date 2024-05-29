//
//  Created by Alex on 28.08.2023.
//

import UIKit

final class LogoTypeViewController: UIViewController{
    
    
    private let logoText = UILabel()
   
    private let logoImageView = UIImageView()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        DispatchQueue.main.asyncAfter(deadline: .now()+1, execute: {
            self.animate()
        })
    }
    
    private func animate(){
        UIView.animate(withDuration: 1.25, animations: {
            let size = self.view.frame.size.width * 1.76
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            
            self.logoImageView.frame = CGRect(x: -(diffX/2)
                                              , y: diffY,
                                              width: size,
                                              height: size)
          
        })
        
        
        UIView.animate(withDuration: 0.5, animations: {
            self.logoImageView.alpha = 0
            
        }, completion: { done in
            if done {
                let vc = CoreViewController()
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true)
           }
        })
    }
    
    func setupUI() {
        logoText.text = "Skill Drive"
        logoText.font = UIFont.boldSystemFont(ofSize: 20)
        logoText.textColor = UIColor.blue
        
        logoImageView.image = UIImage(named: "Vector")
        
        [logoText, logoImageView].forEach { views in
            views.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(views)
            
            logoText.snp.makeConstraints { make in
                make.top.equalTo(view.safeAreaLayoutGuide.snp.bottom).inset(50)
                make.centerX.equalTo(view)
            }
            
            logoImageView.snp.makeConstraints { make in
                <#code#>
            }
        }
        
    }

}


