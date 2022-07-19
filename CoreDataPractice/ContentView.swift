//
//  ContentView.swift
//  CoreDataPractice
//
//  Created by Jacob Tamayo on 7/17/22.
//

import SwiftUI

struct ContentView: View {
  
  let coreDataManager: CoreDataManager
  
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(coreDataManager: CoreDataManager())
    }
}
