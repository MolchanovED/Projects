//
//  ContentView.swift
//  Flags
//
//  Created by EgorM on 27.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = ["Australia","France","Greece", "Italia", "USA", "Poland", "Portugal", "Spain", "Turkey", "Ukraine"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var score = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    
    
    
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                VStack{
                    Text("Выбери флаг:")
                        .foregroundColor(.white)
                        .font(.headline)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .padding(40)
                }
                ForEach(0..<3){ number in
                    Button(action: {
                        self.flagTapped(number)
                        self.showingScore = true
                    }){
                        Image(self.countries[number])
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 250, height: 130)
                            .cornerRadius(30)
                            .padding()
                            .shadow(radius: 10)
                    }
                }
                Text("Общий счeт: \(score)")
                    
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.white)
                    .padding(50)
            }
        }.alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message:
                    Text("Общий счет: \(score)"), dismissButton: .default(Text("Продолжить")){
                        self.askQuestion()
                    })
        }
       
    }
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    func flagTapped(_ number: Int){
        if number == correctAnswer{
            scoreTitle = "Правильный ответ!"
            score += 1
        } else{
            scoreTitle = "Неправильно! Это влаг \(countries[number])"
            if score < 0{
                score -= 1
            }else{
                score = 0
            }
        }
    }
    
}














struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
