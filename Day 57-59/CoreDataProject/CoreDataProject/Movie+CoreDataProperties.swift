//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by huin on 2023/01/08.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var title: String
    @NSManaged public var director: String
    @NSManaged public var year: Int16

}

extension Movie : Identifiable {

}
