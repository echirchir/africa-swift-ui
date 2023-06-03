//
//  CenterModifier.swift
//  Africa
//
//  Created by Elisha Chirchir on 03/06/2023.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
