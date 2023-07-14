//
//  ChildrenName+CoreDataProperties.swift
//  CoreData Basic Save Fetch Example
//
//  Created by Nikhil Saini on 19/04/23.
//
//

import Foundation
import CoreData


extension ChildrenName {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ChildrenName> {
        return NSFetchRequest<ChildrenName>(entityName: "ChildrenName")
    }

    @NSManaged public var children: String?

}

extension ChildrenName : Identifiable {

}
