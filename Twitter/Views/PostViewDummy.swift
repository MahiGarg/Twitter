//
//  PostView.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import SwiftUI

struct PostViewDummy: View {
    
    let imageURL = URL(string: "https://source.unsplash.com/user/c_v_r")!
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 2) {
                profileImage
                VStack (alignment: .leading) {
                        titleBar
                        postContent
                        actionBar
                    }
            }
            Divider()
       
        }
        }
    
    var postContent: some View {
        VStack {
            Text("It's never a bad thing to go with a classic, direct good morning. This text is simple and to the point, simply wishing your man a good morning, making him feel special, and putting a smile on his face.")
                .multilineTextAlignment(.leading)
                .font(.system(size: 14))
            RemoteImage(url: imageURL, placeholder: Image(systemName: "photo"))
                .cornerRadius(20)
                .frame(maxHeight: 240, alignment: .leading)
            
        }
    }
    
    var titleBar: some View {
        HStack( spacing: 2) {
            Text("Narendra Modi")
                .bold()
                .font(.system(size: 14))
                .lineLimit(1)
            if true {
                Image(systemName: "checkmark.circle")
            }
            Text("@NarendraModi")
                .foregroundColor(.gray)
                .font(.system(size: 14))
                .lineLimit(1)
                
            Text(". 4d")
                .foregroundColor(.gray)
                .font(.system(size: 14))
                .lineLimit(1)
            Spacer()
            Image(systemName: "ellipsis")
                .foregroundColor(.gray)
                .padding()
        }
    }
    
    var actionBar: some View {
        HStack(spacing: 16) {
            HStack {
                Image(systemName: "text.bubble")
                Text("166")
            }
            HStack {
                Image(systemName: "heart")
                Text("1.2k")
            }
            HStack {
                Image(systemName: "arrow.counterclockwise")
                Text("10")
            }
            Spacer()
            Image(systemName: "square.and.arrow.up")
                .padding(.horizontal)
        }

    }
    
    var profileImage: some View {
        RemoteImage(url: imageURL,
                    placeholder: Image(systemName: "photo"))
        .clipShape(Circle())
        .frame(width: 64)
    }
}

struct PostViewDummy_Previews: PreviewProvider {
    static var previews: some View {
        PostViewDummy()
    }
}
