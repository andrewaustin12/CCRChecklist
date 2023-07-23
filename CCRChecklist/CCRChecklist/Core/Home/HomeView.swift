//
//  HomeView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            
            VStack {
                HStack {
                    TabHeaderView(title1: "Select a Unit")
                }
                .ignoresSafeArea()
                
                Spacer()
                
                VStack {
                    
                    // This can be refactored to loop through and array of selectable buttons and make a button component
                    
                    NavigationLink {
                        SWComputerView()
                            .navigationBarBackButtonHidden(true)
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
                    
                    Button {
                        print("JJ CCR")
                    } label: {
                        Text("JJ CCR")
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
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
