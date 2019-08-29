//
//  DataController.swift
//  Mooskine
//
//  Created by Sean Williams on 22/08/2019.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import CoreData

class DataController {
    
    // Convience property to access the context
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    // Create persistent container
    let persistentContainer: NSPersistentContainer
    
    init(modelName: String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    // Load persistent Store with convenience function
    func load(completion: (() -> Void)? = nil) {
        persistentContainer.loadPersistentStores { (storeDescrition, error) in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            
            self.autoSaveViewContext()
            completion?()
        }
    }
}

extension DataController {
    func autoSaveViewContext(interval: TimeInterval = 30) {
        print("Autosaving")
        
        guard interval > 0 else {
            print("cannot save negative autosave interval")
            return
        }
        
        // only save if changes have been made
        if viewContext.hasChanges {
            try? viewContext.save()
        }
        
        // Save again after specified interval has elapsed
        DispatchQueue.main.asyncAfter(deadline: .now() + interval) {
            self.autoSaveViewContext(interval: interval)
        }
    }
}
