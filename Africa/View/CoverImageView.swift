//
//  CoverImageView.swift
//  Africa
//
//  Created by Elisha Chirchir on 31/05/2023.
//

import SwiftUI

struct CoverImageView: View {
    
    // properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

// preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
