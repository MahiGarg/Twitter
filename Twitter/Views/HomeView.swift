//
//  HomeView.swift
//  Twitter
//
//  Created by Mahi Garg on 30/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    @Environment(\.scenePhase) var scenePhase
    @State private var isAtEnd = false
    @State private var count: Int = 0
    
    var body: some View {
        VStack(spacing: 0) {
            header
            postList
        }
        .onAppear {
            viewModel.fetchPosts()
        }
        
    }
    
    var header: some View {
        HStack {
            RemoteImage(url: viewModel.selfProfileData.profilePicUrl,
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
    }
    
    var postList: some View {
        NavigationView {
            List {
                ForEach(viewModel.postArray, id: \.self) { post in
                    postView(post: post)
                }
                ProgressView()
                    .onAppear{
                        viewModel.fetchPosts()
                    }
            }
            .listStyle(.inset)
        }
        
        
    }
    
    func getEnd(geo: GeometryProxy)-> Bool {
        let end = UIScreen.main.bounds.height * 0.8
        let currentY = geo.frame(in: .local).maxX
        if end == currentY {
            return true
        } else {
            return false
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
