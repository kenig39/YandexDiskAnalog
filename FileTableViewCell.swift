//
//  FileTableViewCell.swift
//  SkillBoxDisk
//
//  Created by Alexander on 27.12.2023.
//

import UIKit
import SnapKit

protocol FileTableViewCellDelegate: AnyObject {
    
    
     var numberOfSections: Int {get}
    
    var numberOfRowsInSection: (_ section:Int) -> Int {get}
    
}

final class FileTableViewCell: UITableViewCell {
    
    weak var delegate: FileTableViewCellDelegate?
    
    private let photoImageView = UIImageView()
    private let fileNameLabel = UILabel()
    private let fileSizeLabel = UILabel()
    private let dateLabel  =   UILabel()
    
    
    lazy var activityIndicator: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: .medium)
        view.color = .gray
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//    
//    func bindModel(model: DiskFile){
//        fileNameLabel.text = model.name
//        let size = Double(model.size) / 1024.0 / 1024.0
//        fileSizeLabel.text = String(format: "%.2f", size) + " MB"
//        
//        if let previewUrl = model.preview{
//            delegate?.loadImage(stringUrl: previewUrl, complition: {
//                [weak self] (image) in
//                self?.photoImageView.image = image
//            })
//        }
//    }
    
    func updateImage(_ image: UIImage?){
        photoImageView.image = image
    }
    
    override func prepareForReuse() {
        photoImageView.image = nil
        super.prepareForReuse()
    }
    
    private func setupViews(){
        photoImageView.backgroundColor =
        UIColor.green.withAlphaComponent(0.2)
        fileNameLabel.font = UIFont.systemFont(ofSize: 11)
        fileNameLabel.text = "name"
        fileSizeLabel.text = "size"
        dateLabel.text = "data"
        
        
        [photoImageView,fileNameLabel,fileSizeLabel,activityIndicator, dateLabel].forEach { subview in subview.translatesAutoresizingMaskIntoConstraints = false
            addSubview(subview)
        }
        
      
        fileSizeLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
        NSLayoutConstraint.activate([
            photoImageView.widthAnchor.constraint(equalToConstant: photoSize.width),
            photoImageView.heightAnchor.constraint(equalToConstant: photoSize.height),
            photoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: inset),
            photoImageView.topAnchor.constraint(equalTo: topAnchor, constant: inset / 2),
            photoImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant:  -inset / 2),
            
            fileNameLabel.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: inset),
            fileNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -inset),
            fileNameLabel.topAnchor.constraint(equalTo: topAnchor,
                                              constant: inset),
            
            fileSizeLabel.topAnchor.constraint(equalTo: fileNameLabel.bottomAnchor),
            fileSizeLabel.bottomAnchor.constraint(equalTo: bottomAnchor,constant: -inset / 2),
            fileSizeLabel.trailingAnchor.constraint(equalTo: fileNameLabel.trailingAnchor),
        ])
        activityIndicator.snp.makeConstraints { make in
            make.center.equalTo(self.photoImageView)
        }
        
    }
    
}

private let photoSize = CGSize(width: 80, height: 80)
private let inset: CGFloat = 16
