//
//  College+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Mac on 21/12/21.
//
//

import Foundation
import CoreData


extension College {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<College> {
        return NSFetchRequest<College>(entityName: "College")
    }

    @NSManaged public var name: String?
    @NSManaged public var city: String?
    @NSManaged public var has: NSSet?

}

// MARK: Generated accessors for has
extension College {

    @objc(addHasObject:)
    @NSManaged public func addToHas(_ value: Student)

    @objc(removeHasObject:)
    @NSManaged public func removeFromHas(_ value: Student)

    @objc(addHas:)
    @NSManaged public func addToHas(_ values: NSSet)

    @objc(removeHas:)
    @NSManaged public func removeFromHas(_ values: NSSet)

}

extension College : Identifiable {

}
