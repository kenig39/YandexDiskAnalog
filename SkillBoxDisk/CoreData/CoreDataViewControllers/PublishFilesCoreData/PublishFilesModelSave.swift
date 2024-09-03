//
//  PublishFilesModelSave.swift
//  SkillBoxDisk
//
//  Created by Alexander on 27.07.2024.
//

import Foundation
import CoreData

final class PublishModelSave {
    
    private lazy var fetchedResultController : NSFetchedResultsController<PublishedFiles> = {
        let fetchRequest = PublishedFiles.fetchRequest()
        let sort = NSSortDescriptor(key:"name", ascending: true)
        fetchRequest.sortDescriptors = [sort]
        let fetchedResultController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: CoreDataManager.shared.context, sectionNameKeyPath: nil, cacheName: nil)
        return fetchedResultController
    }()
    
}
