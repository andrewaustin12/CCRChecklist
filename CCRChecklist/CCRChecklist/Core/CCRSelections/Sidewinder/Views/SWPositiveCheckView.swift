//
//  SWPositiveCheckView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI

struct SWPositiveCheckView: View {
    @Environment (\.presentationMode) var presentationMode
    
    @State var showSheet: Bool = false
    @State private var isO2PositiveFlushChecked = false
    @State private var isO2MillivoltsChecked = false
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                
                Text("Positive Check")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading)
                
                Text("SIDEWINDER CHECKLIST")
                    .bold()
                    .padding(.leading)
                
                Form {
                    Section {
                        Toggle(isOn: $isO2PositiveFlushChecked) {
                            Text("Close DSV and OPV, flush with O2. Monitor cells for smooth and even increases until reaching over 1.00 ")
                        }
                        
                        Toggle(isOn: $isO2MillivoltsChecked) {
                            Text("Record millivolts from each of the cells at 1.00 and fill lineartiy chart")
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
                    } header: {
                        Text("Steps 25-26")
                    }

                }
            }
            
            VStack{
                LinearityChartMvO2View()

            }
            .padding(.top, 10)
            
            HStack {
                NavigationLink{
                    SWFlushView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Back")
                        .modifier(SmallSecondaryButtonModifier())
                }
                
                
                NavigationLink{
                    SWTransportView()
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

struct SWPositiveCheckView_Previews: PreviewProvider {
    static var previews: some View {
        SWPositiveCheckView()
    }
}
