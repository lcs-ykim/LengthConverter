//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Russell Gordon on 2021-02-11.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State private var fromUnit: LengthUnit = .milimeter
    @State private var input: String = ""
    @State private var toUnit: LengthUnit = .milimeter

    // MARK: Computed properties
    private var output: String {
        
        // Ensure the provided input can be expressed as an integer
        guard let providedValue = Double(input) else {
            return "Please provide an integer value."
        }

        // Return the converted value
        return convert(fromLength: providedValue, fromUnit: fromUnit, toUnit: toUnit)

    }
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                // UI to allow user to select units we are converting from
                Section(header: Text("Converting from?")) {
                    
                    Picker("From unit:", selection: $fromUnit) {
                        Text(LengthUnit.milimeter.rawValue).tag(LengthUnit.milimeter)
                        Text(LengthUnit.centimeter.rawValue).tag(LengthUnit.centimeter)
                        Text(LengthUnit.meter.rawValue).tag(LengthUnit.meter)
                        Text(LengthUnit.kilometer.rawValue).tag(LengthUnit.kilometer)
                        Text(LengthUnit.inch.rawValue).tag(LengthUnit.inch)
                        Text(LengthUnit.feet.rawValue).tag(LengthUnit.feet)
                        Text(LengthUnit.yard.rawValue).tag(LengthUnit.yard)
                        Text(LengthUnit.mile.rawValue).tag(LengthUnit.mile)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                }
                
                
                // UI to allow user to provide value to be converted
                Section(header: Text("Value to convert?")) {
                    TextField("e.g.: 1024", text: $input)
                        .keyboardType(.numberPad)
                }
                
                // UI to allow user to select units to convert to
                Section(header: Text("Converting to?")) {
                    
                    Picker("To unit:", selection: $toUnit) {
                        Text(LengthUnit.milimeter.rawValue).tag(LengthUnit.milimeter)
                        Text(LengthUnit.centimeter.rawValue).tag(LengthUnit.centimeter)
                        Text(LengthUnit.meter.rawValue).tag(LengthUnit.meter)
                        Text(LengthUnit.kilometer.rawValue).tag(LengthUnit.kilometer)
                        Text(LengthUnit.inch.rawValue).tag(LengthUnit.inch)
                        Text(LengthUnit.feet.rawValue).tag(LengthUnit.feet)
                        Text(LengthUnit.yard.rawValue).tag(LengthUnit.yard)
                        Text(LengthUnit.mile.rawValue).tag(LengthUnit.mile)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                }

                // UI to show the result
                Section(header: Text("Result is:")) {
                    
                    Text(output)
                        // Ensures text will wrap to multiple lines
                        .fixedSize(horizontal: false, vertical: true)
                }

            }
            .navigationTitle("Length Converter")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
