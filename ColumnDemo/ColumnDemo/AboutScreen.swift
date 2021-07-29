//
//  Left iPad Panel.swift
//  ColumnDemo
//
//  Created by Todd Bruss on 7/29/21.
//

import SwiftUI

func AboutScreen() -> some View {
    VStack {
        Group {

            Text("SwiftUI iOS13\n Column Example")
                .font(.title)
            HStack {
                Image("swiftLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 230.0,height:230)
                    .background(Color.clear)
            }
            .overlay (
                RoundedRectangle(cornerRadius: 48)
                    .stroke( Color.gray, lineWidth: 2))
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
