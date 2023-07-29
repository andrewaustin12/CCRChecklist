//
//  SwiftUIView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianTanksAnalyzedView: View {
    @Environment (\.presentationMode) var presentationMode
    @State var ppo2 = ""
    @State var o2 = ""
    @State var diluent = ""
    @State var bailout = ""
    
    var body: some View {
        VStack {
            
            ScrollView {
    
                HStack() {
                    Text("Enter PP02")
                    TextField("PP02", text: $ppo2)
                                .keyboardType(.decimalPad)
                                .frame(width: 80)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .frame(width: 360, height: 44)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                
                HStack() {
                    Text("Enter 02")
                    TextField("PP02",
                              value: $o2,
                              formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                                .frame(width: 80)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .frame(width: 360, height: 44)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                
                HStack() {
                    Text("Diluent")
                    TextField("PP02",
                              value: $diluent,
                              formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                                .frame(width: 80)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .frame(width: 360, height: 44)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                
                HStack() {
                    Text("Bailout Gas")
                    TextField("PP02",
                              value: $bailout,
                              formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                                .frame(width: 80)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .frame(width: 360, height: 44)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                
                Spacer()
            
            }
            
            HStack {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .modifier(SmallSecondaryButtonModifier())
                
                NavigationLink("Next") {
                    PelagianScrubbersView()
                }
                .modifier(SmallPrimaryButtonModifier())
            }
            .navigationTitle("Tanks Analysed")
            .accentColor(.white)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.large)
            .accentColor(.white)
            .padding()
        }
    }
}

struct PelagianTanksAnalyzedView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianTanksAnalyzedView()
    }
}
