//
//  HeaderView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 04/04/2022.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Auteur: \(portfolio.author)")
            Spacer()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
