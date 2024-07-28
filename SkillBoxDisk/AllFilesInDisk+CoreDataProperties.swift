//
//  AllFilesInDisk+CoreDataProperties.swift
//  SkillBoxDisk
//
//  Created by Alexander on 28.07.2024.
//
//

import Foundation
import CoreData


extension AllFilesInDisk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AllFilesInDisk> {
        return NSFetchRequest<AllFilesInDisk>(entityName: "AllFilesInDisk")
    }

    @NSManaged public var created: String?
    @NSManaged public var file: String?
    @NSManaged public var modified: String?
    @NSManaged public var name: String?
    @NSManaged public var path: String?
    @NSManaged public var preview: String?
    @NSManaged public var size: Int64
    @NSManaged public var type: String?

}

extension AllFilesInDisk : Identifiable {

}
