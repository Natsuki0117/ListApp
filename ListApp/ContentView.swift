//
//  ContentView.swift
//  ListApp
//
//  Created by 金井菜津希 on 2026/08/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            ForEach(Animal.allCases, id: \.self) {animal in
                NavigationLink(destination: DetailView(animal: animal)){
                    HStack{
                        Image(animal.iconName)
                        Text(animal.name)
                    }
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
