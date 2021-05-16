//
//  LandmarkList.swift
//  Landmarks
//
//  Created by masaki kameyama on 2021/05/16.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        LandmarkRow()
                    }
                )
                    
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        LandmarkRow()
                    }
                )
            }
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
