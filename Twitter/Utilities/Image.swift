//
//  Image.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import SwiftUI

struct RemoteImage: View {
    let url: URL
    let placeholder: Image
    
    init(url: URL, placeholder: Image) {
        self.url = url
        self.placeholder = placeholder
    }

    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                placeholder // Display the provided placeholder while the image is loading
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            case .failure:
                placeholder // Display the provided placeholder if there's an error
            @unknown default:
                EmptyView()
            }
        }
    }
}

struct SystemImages: View {
    let imageName: String
    let color: Color?
    let width: CGFloat?
    let height: CGFloat?
    
    init(_ imageName: String,
         color: Color? = .black,
         width: CGFloat? = 12,
         height: CGFloat? = 12) {
        self.imageName = imageName
        self.color = color
        self.width = width
        self.height = height
    }
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .foregroundColor(color)
            .frame(width: width, height: height)
    }

}
