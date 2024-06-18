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
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "SkillBoxDisk")
    }
    
    func loadCoreDataRecently() {
        persistentContainer.loadPersistentStores { persistent, error in
            if let error = error {
                print(error)
            } else {
                print("Loaded CoreData")
            }
        }
    }
    
    
    func deleteAllData(_ entity: String) {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: entity)
        fetchRequest.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(fetchRequest)
            for object in result {
                guard let objectData = object as? NSManagedObject else {continue}
                context.delete(objectData)
                try? context.save()
            }
            print("All CoreData \(entity) deleted")
        } catch let error {
            print("delete all data in \(entity), error \(error)")
        }
    }
}
