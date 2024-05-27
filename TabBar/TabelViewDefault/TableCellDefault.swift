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
        
        imageFile.snp.makeConstraints { make in
            make.top.equalTo(snp.top).inset(10)
            make.left.equalTo(snp.left).inset(15)
            make.height.equalTo(25)
            make.width.equalTo(25)
        }
        
        nameFileLabel.snp.makeConstraints { make in
            make.top.equalTo(snp.top).inset(5)
            make.left.equalTo(imageFile.snp.right).inset(-15)
        }
        
        sizeLabel.snp.makeConstraints { make in
            make.top.equalTo(nameFileLabel.snp.bottom).inset(-2)
            make.left.equalTo(imageFile.snp.right).inset(-15)
        }
        
        dataAddLabel.snp.makeConstraints { make in
            make.top.equalTo(snp.top).inset(5)
            make.right.equalTo(snp.right).inset(20)
        }

     //   activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
    }
}
