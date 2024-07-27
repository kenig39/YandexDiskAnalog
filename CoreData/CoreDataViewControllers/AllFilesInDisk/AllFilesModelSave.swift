//
//  AllFilesModelSave.swift
//  SkillBoxDisk
//
//  Created by Alexander on 21.06.2024.
//

import Foundation
import CoreData

class AllFilesModelSave {
    
    private lazy var fetchedResultController : NSFetchedResultsController<AllFilesInDisk> = {
        let fetchRequest = AllFilesInDisk.fetchRequest()
        let sort = NSSortDescriptor(key:"name", ascending: true)
        fetchRequest.sortDescriptors = [sort]
        let fetchedResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: CoreDataManager.shared.context, sectionNameKeyPath: nil, cacheName: nil)
        return fetchedResultController
    }()
    
}
