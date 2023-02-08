//
//  ContentView.swift
//  NetfilxPractice
//
//  Created by YUJIN KWON on 2023/02/08.
//

import SwiftUI

struct ContentView: View {
    let titles = ["Netfilx Practice App"]
    var body: some View {
        NavigationView {
            List(titles, id: \.self) {
                let netflixVC = HomeViewControllerRepresentable()
                    .navigationBarHidden(true)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink($0, destination: netflixVC)
            }
            .navigationTitle("SwiftUI to UIKit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
