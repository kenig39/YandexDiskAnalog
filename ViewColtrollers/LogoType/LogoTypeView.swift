//
//  Created by Alex on 28.08.2023.
//

import UIKit

final class LogoTypeViewController: UIViewController{
    
    
   
    
     lazy var logoImageView: UIImageView = {
         let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
         imageView.image = UIImage(named: "Vector")
        return imageView
     }()
   
     
     override func viewDidLoad() {
         super.viewDidLoad()
         view.backgroundColor = .white
         
         logoImageView.center = view.center
         view.addSubview(logoImageView)
         
     }
     
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        DispatchQueue.main.asyncAfter(deadline: .now()+1, execute: {
            self.animate()
        })
    }
  
    
    private func animate(){
        UIView.animate(withDuration: 1.25, animations: {
            let size = self.view.frame.size.width * 3.5
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
    
  
    
   
    
  
}


