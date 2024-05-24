//
//  TableCellDefault.swift
//  SkillBoxDisk
//
//  Created by Alexander on 24.05.2024.
//

import UIKit

class TableCellDefault: UITableViewCell {

    let nameFileLabel = UILabel()
    let imageFile = UIImageView()
    let sizeLabel = UILabel()
    let dataAddLabel = UILabel()
    var activityIndicator = UIActivityIndicatorView()


    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUIElements()
        setupConstarains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func setupUIElements() {
        
     
        activityIndicator.style = .medium
        activityIndicator.color = UIColor.gray
        
        nameFileLabel.text = "name"
        nameFileLabel.font = UIFont.boldSystemFont(ofSize: 16)
        nameFileLabel.textColor = UIColor.black
        nameFileLabel.numberOfLines = 0
        
        imageFile.image = UIImage(systemName: "person")
        imageFile.layer.cornerRadius = 5
        
        sizeLabel.text = "size"
        sizeLabel.font = UIFont.boldSystemFont(ofSize: 12)
        sizeLabel.textColor = UIColor.lightGray
        
        dataAddLabel.text = "02.02.24"
        dataAddLabel.font = UIFont.boldSystemFont(ofSize: 12)
        dataAddLabel.textColor = UIColor.lightGray
        
        [activityIndicator,dataAddLabel, sizeLabel, imageFile, nameFileLabel].forEach { subView in subView.translatesAutoresizingMaskIntoConstraints = false
            addSubview(subView)
        }
    }
    
    func setupConstarains() {
        imageFile.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        imageFile.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        imageFile.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageFile.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        nameFileLabel.leftAnchor.constraint(equalTo: imageFile.rightAnchor, constant: 15).isActive = true
        
        sizeLabel.leftAnchor.constraint(equalTo: imageFile.rightAnchor, constant: 15).isActive = true
        sizeLabel.topAnchor.constraint(equalTo: nameFileLabel.bottomAnchor, constant: 5).isActive = true
        
        dataAddLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
