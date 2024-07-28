//
//  LastFilesInDisk+CoreDataProperties.swift
//  SkillBoxDisk
//
//  Created by Alexander on 28.07.2024.
//
//

import Foundation
import CoreData


extension LastFilesInDisk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LastFilesInDisk> {
        return NSFetchRequest<LastFilesInDisk>(entityName: "LastFilesInDisk")
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

extension LastFilesInDisk : Identifiable {

}
