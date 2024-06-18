//
//  CoreDataManager.swift
//  SkillBoxDisk
//
//  Created by Alexander on 16.06.2024.
//

import Foundation
import CoreData

class CoreDataManager {
    
    static let shared = CoreDataManager()
    
    private let persistentContainer: NSPersistentContainer
    
    lazy var context: NSManagedObjectContext = {
        return persistentContainer.viewContext
    }()
}
