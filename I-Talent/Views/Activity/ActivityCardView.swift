//
//  CardView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 04/04/2022.
//

import SwiftUI

struct ActivityCardView: View {
    var activity: Activity

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(activity.title)
                .font(.title)
            Spacer()
            Text("\(activity.location), \(activity.date)")
                .font(.caption)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 30)
        .frame(width: 200, height: 200)
        .background(.thickMaterial)
        .cornerRadius(5)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityCardView(activity: portfolio.activities[0])
            .previewLayout(.sizeThatFits)
    }
}
