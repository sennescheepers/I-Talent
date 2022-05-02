//
//  ActivityDetailView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 27/04/2022.
//

import SwiftUI

struct ActivityDetailView: View {
    var activity: Activity

    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading, spacing: 15) {
                HStack(alignment: .center) {
                    Text(activity.date)
                        .multilineTextAlignment(.leading)
                    Spacer(minLength: 50)
                    Text(activity.location)
                        .multilineTextAlignment(.trailing)
                }
                .font(.subheadline)
                Text("Beschrijving:")
                    .font(.title)
                    .padding(.top, 20)
                Text(activity.description)
                    .multilineTextAlignment(.leading)
            }
            .padding()
        }
        .navigationTitle(activity.title)
    }
}

struct ActivityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailView(activity: portfolio.activities[0])
    }
}
