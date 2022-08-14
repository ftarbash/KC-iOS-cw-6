//
//  ContentView.swift
//  classwork6
//
//  Created by Fatma Alarbash on 14/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        VStack(spacing:15){
            Text("BMI Calculator ").font(.system(size: 40, weight: .semibold, design: .serif)).foregroundColor(.indigo)
            Image("or").resizable().scaledToFit().frame(width: 350, height: 250)
            Text("أدخل الطول والوزن").font(.system(size: 30, weight: .medium, design: .serif))
            
            TextField("enter your height (m)",text:$height).padding().frame(width: 370, height: 45).border(Color.indigo.opacity(0.6))
            
            TextField("enter your weight (kg)",text:$weight).padding().frame(width: 370, height: 45).border(Color.indigo.opacity(0.6))
            
            Button { result = bmi(w: Double (weight) ?? 0.0, h: Double (height) ?? 0.0)
                if result<=20 {
                    health = "ضعيف"
                }
                else if result > 20 && result <= 25{
                health = "جيد"
                }
                else
                {
                    health = "سمين"
                }
            } label: {
                Text("احسب").font(.system(size: 28)).frame(width: 150, height: 60).background(.indigo.opacity(0.6)).cornerRadius(15).foregroundColor(.white)
            }

            Text("BMI = \(result)").font(.system(size: 30, weight: .regular, design: .rounded))
            Text("الحالة = \(health)").font(.system(size: 30, weight: .regular, design: .rounded))
        }
        }
        }
    func bmi(w: Double , h: Double)->Double{return w / (h*h)
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
