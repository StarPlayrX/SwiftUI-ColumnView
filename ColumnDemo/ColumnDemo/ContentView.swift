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
                if UIDevice.current.userInterfaceIdiom == .pad {

                    // 1
                    AboutScreen()

                    // 2
                    ColumnView()

                    // 3
                    detailView() // comment this out and see what happens!
                } else {
                    // 1
                    ColumnView()
                    // 2
                    detailView()
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
