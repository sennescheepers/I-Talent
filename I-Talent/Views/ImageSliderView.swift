//
//  ImageSliderView.swift
//  I-Talent
//
//  Created by Senne Scheepers on 27/04/2022.
//

import SwiftUI

struct ImageSliderView: View {
    var images: [String]

    var body: some View {
        TabView {
            ForEach(images, id: \.self) { url in
                AsyncImage(
                    url: URL(string: url),
                    content: { image in
                        image.resizable()
                             .aspectRatio(contentMode: .fit)
                    },
                    placeholder: {
                        ProgressView()
                    }
                )
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView(images: [])
    }
}
