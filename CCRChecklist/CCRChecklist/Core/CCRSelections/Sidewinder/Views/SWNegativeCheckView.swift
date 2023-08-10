//
//  SWNegativeCheckView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWNegativeCheckView: View {
    @Environment (\.presentationMode) var presentationMode
    
    @State var showSheet: Bool = false
    
    @State private var isNegativeChecked = false
    @State private var cellStartMvAir = ""
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                Text("Negative Check")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                List {
                    
                    Toggle(isOn: $isNegativeChecked) {
                        Text("Preform Negative check on air")
                    }
                    
                    Text("The Millivolts should decend and hold. Pick a cell and record millivolt. Wait 5 minutes and compare starting millivolts to new value")
                    HStack {
                        Text("Starting mV : ")
                            .font(.title3)
                            .bold()
                        TextField("mV",
                                  value: $cellStartMvAir,
                                  formatter: NumberFormatter())
                                    .keyboardType(.numberPad)
                                    .frame(width: 80)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    Button {
                        showSheet.toggle()
                    } label: {
                        Text("Timer")
                            .font(.title)
                            .frame(width: 300, height: 44)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .sheet(isPresented: $showSheet) {
                        CountdownTimerView()
                    }
                }
                .font(.title3)
            }
            VStack{
                HStack {
                    Spacer()
                    
                    Spacer()
                                
                }
                .padding()
                
            }
            .padding()
            
            Spacer()
            
            HStack {
                NavigationLink{
                    SWLoopView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                NavigationLink{
                    SWOxygenView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
                        .modifier(SmallPrimaryButtonModifier())
                }
            }
            .padding()
        }
    }
}

struct SWNegativeCheckView_Previews: PreviewProvider {
    static var previews: some View {
        SWNegativeCheckView()
    }
}
