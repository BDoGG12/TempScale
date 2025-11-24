//
//  ContentView.swift
//  TempScale
//
//  Created by Ben Do on 11/24/25.
//

import SwiftUI

struct ContentView: View {
    let tempUnit = ["Fahrenheit", "Celsius", "Kelvin"]
    @State private var tempValue: Int = 0
    @State private var selectedUnit: String = "Fahrenheit"
    @State private var selectedConversionUnit: String = "Fahrenheit"
    
    var convertedTemp: Int {
        let selectedUnit = self.selectedUnit
        let selectedConversionUnit = self.selectedConversionUnit
        let kelvToFah = (tempValue - Int(273.15)) * 9/5 + 32
        let celToFah = tempValue * 9/5 + 32
        let fahToCel = (tempValue - 32) * 5/9
        let kelToCel = tempValue - Int(273.15)
        let fahToKel = (tempValue - 32) * 5/9 + Int(273.15)
        let celToKel = tempValue + Int(273.15)
        
        switch (selectedUnit, selectedConversionUnit) {
        case ("Fahrenheit", "Celsius"):
            return Int(fahToCel)
        case ("Fahrenheit", "Kelvin"):
            return fahToKel
        case ("Celsius", "Fahrenheit"):
            return celToFah
        case ("Celsius", "Kelvin"):
            return celToKel
        case ("Kelvin", "Fahrenheit"):
            return kelvToFah
        case ("Kelvin", "Celsius"):
            return kelToCel
        default:
            return self.tempValue
        }
        
    }
    
    @FocusState var isFocused: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                // Temperature Input
                Section(header: Text("Input Temperature")) {
                        Picker(selection: $selectedUnit) {
                        ForEach(tempUnit, id: \.self) { unit in
                            Text(unit)
                        }
                    } label: {
                        TextField("Temperature", value: $tempValue.animation(), format: .number)
                            .keyboardType(.numberPad)
                            .focused($isFocused)
                    }

                }
                
                // Select a unit to convert to
                Section(header: Text("Choose a unit to convert temperature")) {
                    Picker(selection: $selectedConversionUnit) {
                        ForEach(tempUnit, id: \.self) { unit in
                            Text(unit)
                        }
                    } label: {
                        Text(selectedConversionUnit)
                    }
                }
                
                // Final Conversion Result
                Section("Final Temperature") {
                    Text("\(convertedTemp) \(selectedConversionUnit)")
                }
            }
            .navigationTitle("TempSwitch")
            .toolbar {
                if isFocused {
                    Button("Done") {
                        isFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
