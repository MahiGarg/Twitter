//
//  Text.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import SwiftUI

struct RemoteText: View {
    let text: String
    let size: CGFloat?
    let color: Color?
    let lineLimit: Int?
    let textAlignment: TextAlignment?
    
    init(text: String,
         size: CGFloat? = 14,
         color: Color? = .black,
         lineLimit: Int? = 1,
         textAlignment: TextAlignment? = .center) {
        self.text = text
        self.size = size
        self.color = color
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
    }

    var body: some View {
        Text(text)
            .foregroundColor(color)
            .font(.system(size: size ?? 14))
            .lineLimit(lineLimit)
            .multilineTextAlignment(textAlignment ?? .center)
    }
}
