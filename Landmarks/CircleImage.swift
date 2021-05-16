//
//  CircleImage.swift
//  Landmarks
//
//  Created by masaki kameyama on 2021/05/10.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("TokyoTech")
            .resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
