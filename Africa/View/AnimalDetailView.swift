//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Elisha Chirchir on 31/05/2023.
//

import SwiftUI

struct AnimalDetailView: View {
    
    // properties
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor.frame(height: 6).offset(y: 24))
                
                // headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // gallery
                Group {
                    HeadingView(
                        headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures"
                    )
                    
                    InsetGalleryView(animal: animal)
                }
                
                // facts
                Group {
                    HeadingView(
                        headingImage: "questionmark.circle", headingText: "Did you know?"
                    )
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // description
                Group {
                    HeadingView(
                        headingImage: "info.circle", headingText: "All about \(animal.name)"
                    )
                     
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // map
                Group {
                    HeadingView(
                        headingImage: "map.circle", headingText: "National Parks"
                    )
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                // link
                Group {
                    HeadingView(
                        headingImage: "books.vertical", headingText: "Learn More"
                    )
                    
                    ExternalWeblinkView(animal: animal)
                }
            }
            .navigationBarTitle("Learn about \(animal.name)")
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
