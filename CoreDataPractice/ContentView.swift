//
//  ContentView.swift
//  CoreDataPractice
//
//  Created by Jacob Tamayo on 7/17/22.
//

import SwiftUI

struct ContentView: View {
  
  let coreDataManager: CoreDataManager
  @State private var addMovie = ""
  
    var body: some View {
      VStack {
        TextField("Enter movie name", text: $addMovie)
          .textFieldStyle(.roundedBorder).padding()
        
        // Add save button for movies that are added
        Button("Save") {
          coreDataManager.saveMovie(title: addMovie)
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(coreDataManager: CoreDataManager())
    }
}
