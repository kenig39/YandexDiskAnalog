//
//  ExtentOnbordingView.swift
//  SkillBoxDisk
//
//  Created by Alex on 28.08.2023.
//

import UIKit

extension OnBoardingViewController{
    
    func style() {
           stackView.translatesAutoresizingMaskIntoConstraints = false
           stackView.axis = .vertical
           stackView.alignment = .center
           stackView.spacing = 20
           
           imageView.translatesAutoresizingMaskIntoConstraints = false
           imageView.contentMode = .scaleAspectFit
           
           titleLabel.translatesAutoresizingMaskIntoConstraints = false
           titleLabel.font = UIFont.preferredFont(forTextStyle: .title1)
           titleLabel.textAlignment = .center
           titleLabel.numberOfLines = 0
           
//           subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
//           subtitleLabel.font = UIFont.preferredFont(forTextStyle: .body)
//           subtitleLabel.textAlignment = .center
//
//           subtitleLabel.numberOfLines = 0
       }
           
       func layout() {
           stackView.addArrangedSubview(imageView)
           stackView.addArrangedSubview(titleLabel)
          // stackView.addArrangedSubview(subtitleLabel)
           
           view.addSubview(stackView)
           
           NSLayoutConstraint.activate([
               stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
               
               imageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
               
//                         subtitleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
//                         view.trailingAnchor.constraint(equalToSystemSpacingAfter: subtitleLabel.trailingAnchor, multiplier: 2),
               titleLabel.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
               view.trailingAnchor.constraint(equalToSystemSpacingAfter: titleLabel.trailingAnchor, multiplier: 1),
                     ])
                 }
}
