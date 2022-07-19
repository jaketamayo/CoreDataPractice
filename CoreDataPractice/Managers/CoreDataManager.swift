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
  
  // MARK: Fetch Request
  // This function will allow you to view the movie entered after hitting the 'save' button
  func getMovies() -> [Movie] {
    let fetchRequest: NSFetchRequest<Movie> = Movie.fetchRequest()
    
    do {
       return try persistentContainer.viewContext.fetch(fetchRequest)
    } catch {
      return []
    }
  }
  
  // MARK: Save for Core Data
  //Create a method to save the movies
  func saveMovie(title: String) {
    // 1. Create an instance of the Movie entity
    let movie = Movie(context: persistentContainer.viewContext)
    movie.title = title
    
    // 2. Persist the data
    do {
      try persistentContainer.viewContext.save()
    } catch {
      print("Failed to save movie \(error)")
    }
  }
}
