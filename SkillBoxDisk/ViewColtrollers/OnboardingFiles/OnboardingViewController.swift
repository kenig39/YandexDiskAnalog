//
//  OnboardingViewControllers.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit
import SnapKit


class OnBoardingViewController: UIViewController{
    
    let stackView = UIStackView()
    let imageView = UIImageView()
    let titleLabel = UILabel()
    
    init(imageName: String, titleText: String) {
        super.init(nibName: nil, bundle: nil)
        imageView.image = UIImage(named: imageName)
        titleLabel.text = titleText
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
    
  
    
    
    func style() {
        
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.contentMode = .scaleAspectFit
        
        titleLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        
       
        [imageView, titleLabel].forEach{ uiview in
            uiview.translatesAutoresizingMaskIntoConstraints = false
            stackView.addArrangedSubview(uiview)
        }
        view.addSubview(stackView)
    
        
    }
    
    func layout() {
        
        stackView.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.centerY.equalTo(view.snp.centerY)
        }
        
        imageView.snp.makeConstraints { make in
            make.height.equalTo(view.snp.width).multipliedBy(0.5)
        }
        titleLabel.snp.makeConstraints { make in
            make.leading.equalTo(view.snp.leading).multipliedBy(1)
            make.trailing.equalTo(view.snp.trailing).multipliedBy(1)
        }
        
        
       
       
        
    }
}
