//
//  ContentView.swift
//  DebutView
//
//  Created by Sidak Singh Aulakh on 19/3/2024.
//

import SwiftUI

struct ContentView: View {
    @State var toggle = false
    @State var text = "said no"
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.debut)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.regularMaterial)
                Text("Should've")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.regularMaterial)
                Button(action: {
                    toggle.toggle()
                    text = (toggle) ? "said no" : "gone home"
                }, label: {
                    Text(text)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundStyle(.debut)
                        .padding()
                        .background(.regularMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 50.0))
                })
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .tint(.gray)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
