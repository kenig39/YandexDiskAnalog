//
//  AllFileTableViewCell.swift
//  SkillBoxDisk
//
//  Created by Alexander on 07.05.2024.
//

import UIKit

class AllFileTableViewCell: UITableViewCell {
    
    static let identyfire = String(describing: AllFileTableViewCell.self)
    
    let nameFileLabel = UILabel()
    let imageFile = UIImageView()
    let sizeLabel = UILabel()
    let dataAddLabel = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }

    func setupUIElements() {
        
        nameFileLabel.translatesAutoresizingMaskIntoConstraints = false
        imageFile.translatesAutoresizingMaskIntoConstraints = false
        sizeLabel.translatesAutoresizingMaskIntoConstraints = false
        dataAddLabel.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        addSubviews(view: [nameFileLabel, imageFile,dataAddLabel, sizeLabel])
    }
    
    func setupConstarains() {
        imageFile.leftAnchor.constraint(equalTo: leftAnchor, constant: 15).isActive = true
        imageFile.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageFile.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        nameFileLabel.leftAnchor.constraint(equalTo: imageFile.rightAnchor, constant: 15).isActive = true
        
        sizeLabel.leftAnchor.constraint(equalTo: imageFile.rightAnchor, constant: 15).isActive = true
        sizeLabel.topAnchor.constraint(equalTo: nameFileLabel.bottomAnchor, constant: 5).isActive = true
        
        dataAddLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 20).isActive = true
        
    }
    
}
