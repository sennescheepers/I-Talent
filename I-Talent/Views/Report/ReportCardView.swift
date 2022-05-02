//
//  ReportCardView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 27/04/2022.
//

import SwiftUI

struct ReportCardView: View {
    var report: Report

    var body: some View {
        Text(report.title)
            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 150)
            .background(.thickMaterial)
            .cornerRadius(5)
    }
}

struct ReportCardView_Previews: PreviewProvider {
    static var previews: some View {
        ReportCardView(report: portfolio.reports[0])
            .previewLayout(.sizeThatFits)
    }
}
