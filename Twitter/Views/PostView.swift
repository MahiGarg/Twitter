//
//  PostView.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import SwiftUI
import AVKit

func postView(post: PostData)-> some View {
    
    var postContent: some View {
        VStack {
            RemoteText(text: post.contentText,
                       size: 12,
                       lineLimit: 5,
                       textAlignment: .leading)
            if let picture = post.postPictureUrl, post.mediaState == 1 {
                RemoteImage(url: picture, placeholder: Image(systemName: "photo"))
                    .cornerRadius(16)
                    .frame(height: 240, alignment: .leading)
            } else if let video = post.videoUrl, post.mediaState == 2 {
                VideoPlayer(player: AVPlayer(url:  video))
                        .cornerRadius(16)
                        .frame(height: 320, alignment: .leading)
            } 
        }
    }
    
    var titleBar: some View {
        HStack( spacing: 2) {
            RemoteText(text: post.username,
                       size: 12,
                       lineLimit: 1)
            .bold()
            if post.isVerifiedAccount {
                SystemImages("checkmark.circle",
                             color: .gray,
                             width: 12,
                             height: 12)
            }
            RemoteText(text: post.userHandle,
                       size: 12,
                       color: .gray,
                       lineLimit: 1)
            RemoteText(text: post.postTime,
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
                             color: .black,
                             width: 12,
                             height: 12)
                RemoteText(text: post.replyText,
                           size: 12,
                           color: .black,
                           lineLimit: 1)
            }
            HStack {
                SystemImages("heart",
                             color: .black,
                             width: 12,
                             height: 12)
                RemoteText(text: post.likeText,
                           size: 12,
                           color: .black,
                           lineLimit: 1)
            }
            HStack {
                SystemImages("arrow.counterclockwise",
                             color: .black,
                             width: 12,
                             height: 12)
                RemoteText(text: post.retweetText,
                           size: 12,
                           color: .black,
                           lineLimit: 1)
            }
            Spacer()
            SystemImages("square.and.arrow.up",
                         color: .black,
                         width: 12,
                         height: 12)
            .padding(.horizontal)
        }
    }
    
    var profileImage: some View {
        RemoteImage(url: post.profilePictureUrl,
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
                    .padding(8)
            }
        }
    }
    .padding(.vertical, 4)
}
