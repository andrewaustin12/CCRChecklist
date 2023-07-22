//
//  HomeView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                TabHeaderView(title1: "Select a Unit")
            }
            .ignoresSafeArea()
            
            Spacer()
            
            VStack {
                Button {
                    print("Sidewinder Selected")
                } label: {
                    Text("Sidewinder")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }
                
                Button {
                    print("Pelagian Selected")
                } label: {
                    Text("Pelagian")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(8)
                }

                Spacer()
            }
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
