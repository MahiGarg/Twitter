//
//  HomeView.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            HStack {
                RemoteImage(url: viewModel.profileData.picture,
                            placeholder: Image(systemName: "photo"))
                    .clipShape(Circle())
                    .frame(width: 48, height: 48)
                Spacer()
                SystemImages("bird",
                             color: .blue,
                             width: 32,
                             height: 32)
                Spacer()
                SystemImages("gear",
                             width: 32,
                             height: 32)
            }
            .padding(.horizontal)
            .background(Color(.lightGray))
            List {
                ForEach(viewModel.postArray, id: \.self) { post in
                    postView(post: post)
                }
            }
            .listStyle(.inset)
        }
        .onAppear {
            viewModel.postArray = Array(repeating: viewModel.post, count: 10)
        }
        
    }
        
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
