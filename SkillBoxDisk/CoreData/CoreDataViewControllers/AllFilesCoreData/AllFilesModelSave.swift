//
//  AllFilesModelSave.swift
//  SkillBoxDisk
//
//  Created by Alexander on 28.07.2024.
//

import Foundation
import CoreData

final class AllFilesModelSave {
    
    private lazy var fetchedResultController : NSFetchedResultsController<AllFilesInDisk> = {
        let fetchRequest = AllFilesInDisk.fetchRequest()
        let sort = NSSortDescriptor(key: "name", ascending: true)
        fetchRequest.sortDescriptors = [sort]
        let fetchResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: CoreDataManager.shared.context, sectionNameKeyPath: nil, cacheName: nil)
        return fetchResultController
    }()
    
    
}
