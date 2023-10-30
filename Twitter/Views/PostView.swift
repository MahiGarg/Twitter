//
//  PostView.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import SwiftUI

func postView(post: PostData)-> some View {
    
    var postContent: some View {
        VStack {
            RemoteText(text: post.text,
                       size: 12,
                       lineLimit: 5,
                       textAlignment: .leading)
            RemoteImage(url: post.media, placeholder: Image(systemName: "photo"))
                .cornerRadius(16)
                .frame(maxHeight: 240, alignment: .leading)
        }
    }
    
    var titleBar: some View {
        HStack( spacing: 2) {
            RemoteText(text: post.name,
                       size: 12,
                       lineLimit: 1)
            .bold()
            if post.isVerifiedAccount {
                SystemImages("checkmark.circle",
                             color: .gray,
                             width: 12,
                             height: 12)
            }
            RemoteText(text: post.userName,
                       size: 12,
                       color: .gray,
                       lineLimit: 1)
            RemoteText(text: post.postedDate,
                       size: 12,
                       color: .gray,
                       lineLimit: 1)
            Spacer()
            Image(systemName: "ellipsis")
                .foregroundColor(.gray)
        }
    }
    
    var actionBar: some View {
        HStack(spacing: 16) {
            HStack {
                SystemImages("text.bubble",
                             color: .gray,
                             width: 12,
                             height: 12)
                RemoteText(text: String(post.reply),
                           size: 12,
                           color: .gray,
                           lineLimit: 1)
            }
            HStack {
                SystemImages("heart",
                             color: .gray,
                             width: 12,
                             height: 12)
                RemoteText(text: String(post.like),
                           size: 12,
                           color: .gray,
                           lineLimit: 1)
            }
            HStack {
                SystemImages("arrow.counterclockwise",
                             color: .gray,
                             width: 12,
                             height: 12)
                RemoteText(text: String(post.retweet),
                           size: 12,
                           color: .gray,
                           lineLimit: 1)
            }
            Spacer()
            SystemImages("square.and.arrow.up",
                         color: .gray,
                         width: 12,
                         height: 12)
                .padding(.horizontal)
        }
    }
    
    var profileImage: some View {
        RemoteImage(url: post.profilePicture,
                    placeholder: Image(systemName: "photo"))
        .clipShape(Circle())
        .frame(width: 48, height: 48)
    }
    
    return VStack {
        HStack(alignment: .top) {
            profileImage
            VStack (alignment: .leading, spacing: 0) {
                titleBar
                postContent
                actionBar
            }
        }
    }
    .padding(.vertical, 4)
}
