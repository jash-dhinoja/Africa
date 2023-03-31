//
//  ExternalLinkView.swift
//  Africa
//
//  Created by Jash Dhinoja on 28/03/2023.
//

import SwiftUI

struct ExternalLinkView: View {
    //MARK: Propterties
    let animal: Animal
    
    //MARK: Body
    var body: some View {
        GroupBox {
            HStack{
                Image(systemName: "globe")
                Text("Wikipidea")
                Spacer()
                
                Group{
                    Link(animal.name,
                         destination: URL(string: animal.link) ?? URL(string: "https:// wikipedia.org")!)
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            }// Hstack
        }//Group Box
    }
}

struct ExternalLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalLinkView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
