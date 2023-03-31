//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Jash Dhinoja on 24/03/2023.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: Properties
    let animal: Animal
    
    //MARK: Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    // Hero Image
                    Image(animal.image)
                        .resizable()
                        .scaledToFit()
                    // Title
                    Text(animal.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical,8)
                        .foregroundColor(Color.primary)
                        .background(
                            Color.accentColor
                                .frame(height: 6)
                                .offset(y: 24)
                        )
                    // Headline
                    Text(animal.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.accentColor)
                        .padding(.horizontal)
                    // Gallery
                    Group{
                        HeadingView(headingImage: "photo.on.rectangle.angled", imageText: "Wilderness on pictures")
                        InsetGalleryView(animal: animal)
                    }
                    .padding(.horizontal)
                    // Facts
                    Group{
                        HeadingView(headingImage: "questionmark.circle",
                                    imageText: "Did You Know?")
                        InsetFactView(animal: animal)
                    }
                    .padding(.horizontal)
                    // Description
                    Group{
                        HeadingView(headingImage: "info.circle",
                                    imageText: "All About \(animal.name)")
                        Text(animal.description)
                            .multilineTextAlignment(.leading)
                            .layoutPriority(1)
                    }
                    .padding(.horizontal)
                    // Map
                    Group{
                        HeadingView(headingImage: "map",
                                    imageText: "National Parks")
                        
                        InsetMapView()
                    }
                    .padding(.horizontal)
                    
                    // Link
                    Group{
                        HeadingView(headingImage: "books,vertical",
                                    imageText: "Learn More")
                        ExternalLinkView(animal: animal)
                    }
                    .padding(.horizontal)
                    
                    
                }// VStack
                .navigationTitle("Learn about \(animal.name)")
                .navigationBarTitleDisplayMode(.inline)
            }// Scroll View
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetailView(animal: animals[1])
    }
}
