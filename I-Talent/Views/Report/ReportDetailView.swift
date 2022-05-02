//
//  ReportDetailView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 27/04/2022.
//

import SwiftUI

struct ReportDetailView: View {
    var report: Report

    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading, spacing: 10) {
                if !report.pictures.isEmpty {
                    ImageSliderView(images: report.pictures)
                    .frame(height: 300)
                }
                Text(report.report)
                    .multilineTextAlignment(.leading)
            }
            .padding()
        }
        .navigationTitle(report.title)
    }
}

struct ReportDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ReportDetailView(report: portfolio.reports[0])
    }
}
