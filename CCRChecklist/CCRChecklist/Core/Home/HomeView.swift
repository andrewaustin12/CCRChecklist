//
//  HomeView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            
            VStack {
               Text("SELECT A UNIT")
                    .font(.title)
                    .bold()
                
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
                    
                    NavigationLink {
                        PelagianTanksAnalyzedView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Pelagian")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 44)
                            .background(Color(.systemBlue))
                            .cornerRadius(8)
                    }
                    
                    NavigationLink {
                        LibertyAssemblyOneView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Text("Liberty BMCL + BOV")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 360, height: 44)
                            .background(Color(.systemBlue))
                            .cornerRadius(8)
                    }
                    
                    Button {
                        print("SF2")
                    } label: {
                        Text("SF2")
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
