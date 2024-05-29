//
//  Created by Alex on 28.08.2023.
//

import UIKit

final class LogoTypeViewController: UIViewController{
    
    
   
    private let logoImageView = UIImageView()
  
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupConstrains()
        DispatchQueue.main.asyncAfter(deadline: .now()+1, execute: {
            self.animate()
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
      
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
    
    private func setupUI() {
        
        logoImageView.image = UIImage(named: "Vector")
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(logoImageView)
    }
         
   private  func setupConstrains() {
            
             logoImageView.snp.makeConstraints { make in
                 make.top.equalTo(view.snp.top).inset(200)
                 make.centerX.equalTo(view)
                 make.width.equalTo(250)
                 make.height.equalTo(250)
             }
         }

    
   
    
  
}


