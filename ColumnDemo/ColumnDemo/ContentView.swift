//
//  ContentView.swift
//  ColumnDemo
//
//  Created by Todd Bruss on 7/29/21.
//

import SwiftUI

//Run this on an iPad
struct ContentView: View {
    var body: some View {

        ZStack {
            NavigationView {

                // If compiled for macOS 10.15, this gets triggered too
                if UIDevice.current.userInterfaceIdiom == .pad {

                    // 1
                    AboutScreen() // Initially hidden about screen

                    // 2
                    ColumnView() // provides a wider left column on iPadOS

                    // 3
                    DetailView() // comment this out and see what happens!
                } else {

                    // 1
                    ColumnView()

                    // 2
                    DetailView()
                }
            }
        }
        .navigationViewStyle(DoubleColumnNavigationViewStyle())

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
