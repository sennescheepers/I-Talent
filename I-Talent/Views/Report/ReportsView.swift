//
//  ReportsView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 27/04/2022.
//

import SwiftUI

struct ReportsView: View {
    @State var presentingReport: Report?
    @State var isPresentingReport: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            NavigationLink(destination: ReportDetailView(report: presentingReport ?? Report.empty()), isActive: $isPresentingReport) { EmptyView() }
            HStack(alignment: .center) {
                Text("Verslagen")
                    .font(.title)
                Text("(\(portfolio.reports.count))")
                    .font(.caption)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(portfolio.reports, id: \.self) { report in
                        ReportCardView(report: report)
                            .onTapGesture {
                                presentingReport = report
                                isPresentingReport = true
                            }
                    }
                }
            }
        }
    }
}

struct ReportsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportsView()
    }
}
