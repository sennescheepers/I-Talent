//
//  AcitivitiesView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 04/04/2022.
//

import SwiftUI

struct ActivitiesView: View {
    @State var presentingActivity: Activity?
    @State var isPresentingDetail: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            NavigationLink(destination: ActivityDetailView(activity: presentingActivity ?? Activity.empty()), isActive: $isPresentingDetail) { EmptyView() }
            HStack(alignment: .center) {
                Text("Activiteiten")
                    .font(.title)
                Text("(\(portfolio.activities.count))")
                    .font(.caption)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(portfolio.activities, id: \.self) { activity in
                        ActivityCardView(activity: activity)
                            .onTapGesture {
                                presentingActivity = activity
                                isPresentingDetail = true
                            }
                    }
                }
            }
        }
    }
}

struct AcitivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
    }
}
