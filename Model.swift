//
//  Model.swift
//  SkillBoxDisk
//
//  Created by Alexander on 04.05.2024.
//

import Foundation

struct ResponsePresenter: Decodable {
    let public_public_key : String?
    let _embedded : _embedded?
    let name : String?
    let created : String?
    let public_url : String?
    let modified : String?
    let path : String?
    let type : String?
}

struct _embedded : Decodable {
    let sort : String?
    let path : String?
    var items : [Items?]
    let limit : Int?
    let offset : Int?
}



struct Items : Decodable {
    var name: String?
    let preview: String?
    let created: String?
    let modified: String?
    var path: String?
    let type: String?
    let mime_type: String?
    let size: Int?
    let file: String?
}

struct ModelCell {
    let name: String
    let preview: String
    let size: Int64
}
