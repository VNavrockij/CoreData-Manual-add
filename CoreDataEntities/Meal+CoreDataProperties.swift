//
//  Meal+CoreDataProperties.swift
//  MealTime
//
//  Created by Vitalii Navrotskyi on 28.10.2022.
//  Copyright © 2022 Ivan Akulov. All rights reserved.
//
//

import Foundation
import CoreData


extension Meal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Meal> {
        return NSFetchRequest<Meal>(entityName: "Meal")
    }

    @NSManaged public var date: Date?
    @NSManaged public var user: User?

}

extension Meal : Identifiable {

}
