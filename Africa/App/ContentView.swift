//
//  ContentView.swift
//  Africa
//
//  Created by Jash Dhinoja on 23/03/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: Propeties
    
    //MARK: Body
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0,
                                              leading: 0,
                                              bottom: 10,
                                              trailing: 0))
                ForEach(animals){ animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    }
                }
            }// List
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .listStyle(PlainListStyle())
        }// Navigation View
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
