//
//  TableView.swift
//  ComponentLibrary
//
//  Created by andrew austin on 8/5/23.
//

import SwiftUI

struct TableView: View {
    @State private var cellOneMvAir = ""
    @State private var cellTwoMvAir = ""
    @State private var cellThreeMvAir = ""
    

    var body: some View {
        VStack {
            Text("Lineary Chart")
                .font(.title)
                .padding()

            HStack {
                Text("")
                    .frame(width: 48)
                    
                Text("mV@Air")
                    .frame(width: 70)
                    
                Text("/.21")
                    .frame(width: 60)
                    
                Text("mV@02")
                    .frame(width: 70)
                    
                Text("Accuracy")
                    .frame(width: 72)
                    .padding(.horizontal, 2)
            }
            .frame(width: 355)
            
            HStack{
                Text("Cell 1")
                    .frame(width: 48)
                    .padding(.leading, 2)
                    .font(.headline)
                TextField("mV",
                          value: $cellOneMvAir,
                          formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .frame(width: 60)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("0.0")
                    .frame(width: 72)

                Text("0.0")
                    .frame(width: 72)

                Text("0.0")
                    .frame(width: 72)
            }
            HStack{
                Text("Cell 2")
                    .frame(width: 48)
                    .padding(.leading, 2)
                    .font(.headline)
                TextField("mV",
                          value: $cellTwoMvAir,
                          formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .frame(width: 60)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("0.0")
                    .frame(width: 72)

                Text("0.0")
                    .frame(width: 72)

                Text("0.0")
                    .frame(width: 72)
            }
            HStack{
                Text("Cell 3")
                    .frame(width: 48)
                    .padding(.leading, 2)
                    .font(.headline)
                TextField("mV",
                          value: $cellThreeMvAir,
                          formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .frame(width: 60)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                        
                Text("0.0")
                    .frame(width: 72)

                Text("0.0")
                    .frame(width: 72)

                Text("0.0")
                    .frame(width: 72)
            }
            .padding(.bottom)
        }
//        .frame(width: 360)
//        .background(Color.white)
//        .cornerRadius(10)
//        .shadow(radius: 5)
        
    }
}

    

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}



