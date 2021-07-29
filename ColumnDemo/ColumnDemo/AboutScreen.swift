//
//  AboutScreen.swift
//  ColumnDemo
//
//  Created by Todd Bruss on 7/29/21.
//

import SwiftUI

struct AboutScreen: View {
    var body: some View {
        Group {
            Text("SwiftUI iOS13\n Column Example")
                .font(.title)
            HStack {
                Image("swiftLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230.0, height:230)

            }
            .overlay (
                RoundedRectangle(cornerRadius: 48)
                    .stroke( Color.white, lineWidth: 2)
            )
            .background(
                RoundedRectangle(
                    cornerRadius: 48
                )
                .fill(Color.red)
            )
            Text("Wireframe by Todd Bruss")
                .fontWeight(.regular)
            Text("We hope you enjoy using SwiftUI. It is the fastest development platform available.")
                .fontWeight(.light)
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
        }
        .font(.callout)
        .padding(.horizontal, 30)
        .padding([.bottom, .vertical], 10)
        .minimumScaleFactor(0.75)
        .multilineTextAlignment(.center)
        Spacer()
    }
}
