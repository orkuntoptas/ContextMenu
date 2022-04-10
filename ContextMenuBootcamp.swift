//
//  ContextMenuBootcamp.swift
//  deneme
//
//  Created by Orkun Toptaş on 10.04.2022.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            
            Text("Context Menu")
                .font(.headline)
            
            Text("How to you Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding()
        .background(backgroundColor)
        .cornerRadius(15)
        .contextMenu {
            Button {
                backgroundColor = Color.green
            } label: {
                Label("Share Post", systemImage: "flame.fill")
            }
            Button {
                backgroundColor = Color.pink
            } label: {
                Text("Report Post")
            }
            Button {
                backgroundColor = Color.orange
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }
        }
        
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
