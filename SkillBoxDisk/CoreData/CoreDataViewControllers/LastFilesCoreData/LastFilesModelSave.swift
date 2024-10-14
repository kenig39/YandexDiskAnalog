//
//  LastFilesCoreData.swift
//  SkillBoxDisk
//
//  Created by Alexander on 27.07.2024.
//

import Foundation
import CoreData


final class LastFilesModelSave {
    
    private lazy var fetchedResultController : NSFetchedResultsController<LastFilesInDisk> = {
        let fetchRequest = LastFilesInDisk.fetchRequest()
        let sort = NSSortDescriptor(key:"name", ascending: true)
        fetchRequest.sortDescriptors = [sort]
        let fetchedResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: CoreDataManager.shared.context, sectionNameKeyPath: nil, cacheName: nil)
        return fetchedResultController
    }()
    
    
}

