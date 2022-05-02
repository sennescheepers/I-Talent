//
//  HomeView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 04/04/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 15) {
                    HeaderView()
                    ActivitiesView()
                    ReportsView()
                    ReflectionView()
                }
                .frame(maxWidth: .infinity)
                .padding()
            }
            .navigationTitle("Portfolio")
        }
        .navigationBarTitleDisplayMode(.large)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
