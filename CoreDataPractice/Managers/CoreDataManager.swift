//
//  CoreDataManager.swift
//  CoreDataPractice
//
//  Created by Jacob Tamayo on 7/17/22.
//

import Foundation
import CoreData
// The responsibility of the manager is to persist the data using Core Data to SQL database.
// It will also give us all the data needed.

class CoreDataManager {
  
  let persistentContainer: NSPersistentContainer
  
  init() {
    // -- PersistentContainer holds all of the stacks together 
    persistentContainer = NSPersistentContainer(name: "DataModel")
    persistentContainer.loadPersistentStores { description, error in
      if let error = error {
        print("Unable to load data store \(error.localizedDescription)")
      }
    }
  }
}
