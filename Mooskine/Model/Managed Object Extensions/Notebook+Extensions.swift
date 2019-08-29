//
//  Notebook+Extensions.swift
//  Mooskine
//
//  Created by Sean Williams on 27/08/2019.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import CoreData

extension Notebook {
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
