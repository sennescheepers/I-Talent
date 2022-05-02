//
//  ReflectionDetailView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 27/04/2022.
//

import SwiftUI

struct ReflectionDetailView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            Text(portfolio.reflection)
                .multilineTextAlignment(.leading)
        }
        .padding()
        .navigationTitle("Reflectie")
    }
}

struct ReflectionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectionDetailView()
    }
}
