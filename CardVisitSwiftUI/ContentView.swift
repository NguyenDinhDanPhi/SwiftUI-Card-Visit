//
//  ContentView.swift
//  CardVisitSwiftUI
//
//  Created by dan phi on 21/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("ic_phi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150,height: 150)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke( Color.white, lineWidth: 5)
                    }
                Text("Nguyễn Đình Đan Phi")
                    .font(Font.custom("Pacifico-Regular", size: 35))
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 14"))
    }
}

struct InfoView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.green)
                    Text("0862024701")
                        .multilineTextAlignment(.center)
                })
            .padding(.all)
    }
}
