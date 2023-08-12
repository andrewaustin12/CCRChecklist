//
//  HomeView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        VStack{
            VStack {
                Text("Home")
            }
            
            VStack {
                Section {
                    VStack {
                        Text("Cell 1")
                        CellOneChartView()
                    }
                    VStack {
                        Text("Cell 2")
                        CellTwoChartView()
                    }
                    VStack {
                        Text("Cell 3")
                        CellThreeChartView()
                    }
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
