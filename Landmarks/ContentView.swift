//
//  ContentView.swift
//  Landmarks
//
//  Created by masaki kameyama on 2021/05/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text("東京工業大学")
                    .font(.title)
                HStack{
                    Text("大学&短大")
                    Spacer()
                    Text("目黒")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About")
                    .font(.title2)
                Text("1881 年設立の科学技術の名門大学のキャンパス。多くの研究所を持つ。")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
