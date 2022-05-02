//
//  ReflectionView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 27/04/2022.
//

import SwiftUI

struct ReflectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Reflectie")
                .font(.title)
            Text(portfolio.reflection)
                .lineLimit(3)
            NavigationLink("Meer lezen...") {
                ReflectionDetailView()
            }
        }
    }
}

struct ReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectionView()
    }
}
