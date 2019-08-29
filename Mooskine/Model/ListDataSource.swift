//
//  ListDataSource.swift
//  Mooskine
//
//  Created by Sean Williams on 29/08/2019.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import CoreData
import UIKit

// Using generic types (objectType and CellType, we can configure these to be concrete types when instantiating ListDataSource

//class ListDataSource<ObjectType: NSManagedObject, CellType: UITableViewCell>: NSObject, UITableViewDataSource, NSFetchedResultsControllerDelegate {
//
//    init(tableView: UITableView, managedObjectContext: NSManagedObjectContext, fetchRequest: NSFetchRequest<EntityType>, configure: @escaping (CellType, entit) -> Void) {
//        <#statements#>
//    }
//
//
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
//    
//}
