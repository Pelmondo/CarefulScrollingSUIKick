//
//  ContentView.swift
//  CarefulScrolling
//
//  Created by Сергей Прокопьев on 02.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ScrollView(showsIndicators: true) {
                VStack {
                    ForEach(0..<100) {
                        Text("Item \($0)")
                    }
                }
                .frame(maxWidth: .infinity)
            }.safeAreaInset(edge: .bottom, content: {
                Rectangle()
                    .frame(height: 50)
                    .foregroundColor(.red)
                    .opacity(0.7)
            })
            .tabItem {
                Image(systemName: "1.circle")
                Text("Вкладка 1")
            }
        }
    }
}

#Preview {
    ContentView()
}
