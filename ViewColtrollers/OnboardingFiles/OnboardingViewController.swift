//
//  OnboardingViewControllers.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit


class OnBoardingViewController: UIViewController{
    let stackView = UIStackView()
        
        let imageView = UIImageView()
        let titleLabel = UILabel()
        let subtitleLabel = UILabel()
        
    init(imageName: String, titleText: String) {
            super.init(nibName: nil, bundle: nil)
            imageView.image = UIImage(named: imageName)
            titleLabel.text = titleText
           // subtitleLabel.text = subtitleText
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            style()
            layout()
        }
}
