//
//  SingRegistration.swift
//  WeatherPoint
//
//  Created by EgorM on 25.11.2021.
//
import FirebaseCore
import Firebase
import Foundation
import SwiftUI
import FirebaseAuth

struct SingIn:View{

    var body: some View{
        VStack{
            
            ZStack{
                
               // BackGround()
                TabView{
                    SingView()
                    RegistrationView()
                    
                }.tabViewStyle(PageTabViewStyle())
            }
        }
    }
}

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            
            .padding()
            .background(.clear)
            .foregroundColor(.black)
            
            .foregroundColor(Color.black)
            .cornerRadius(15)
            .overlay(RoundedRectangle(cornerRadius: 15)
                                                 .stroke(.black,lineWidth: 1))
            .padding(.horizontal,30)
            
    }
}

struct SingView: View{
    @State  var email: String = ""
    @State var password: String = ""
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View{
        
        ZStack{
          //  BackGround()
            Rectangle()
                .frame(width: 400, height: 300)
                
                .foregroundColor(Color.clear)
                .overlay(RoundedRectangle(cornerRadius: 50).foregroundColor(Color.white))
                .opacity(0.6)
                .shadow(color: Color.black, radius: 50, x: 0, y: 20)
                .offset(y:-30)
            
                
            VStack{
                
                
                HStack{
                    
                    Text("Sign in")
                        .fontWeight(.bold)
                        .font(.system(size:20))
                    // .offset(x:-125,y:10)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                  
                    Text("Sign up")
                        .foregroundColor(Color.black)
                        .font(.system(size: 20))
                        .padding(.horizontal,20)
                    Image(systemName: "arrowshape.turn.up.right")
                        .offset(x:-15)
                        .foregroundColor(.black)

                }.padding(.horizontal,20)
                
                    
                HStack{
                    TextField("Email", text: $email)
                        .textFieldStyle(OvalTextFieldStyle())
                        .foregroundColor(Color.black)
                }
                HStack{
                    SecureField("Password", text: $password)
                        .textFieldStyle(OvalTextFieldStyle())
                }.padding(.top)
                
                HStack{
                    Button(action:{
                        guard !email.isEmpty, !password.isEmpty else{
                            return 
                        }
                        viewModel.SignIn(email: email, password: password)
                    }){
                        ZStack{
                            Rectangle()
                                .frame(width:120, height: 40)
                                .cornerRadius(15)
                                .foregroundColor(Color.clear)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color("TextColorS"),lineWidth: 2))
                                .shadow(color: Color.black, radius: 100, x: 0, y: 20)
                            HStack{
                                Text("Sign in")
                                    .font(.system(size:20))
                                    .foregroundColor(Color("TextColorS"))
                                    .padding(.horizontal,5)
                                Image("Hend")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 20, height: 20)
                                    .padding(.horizontal,5)
                                    .foregroundColor(Color("TextColorS"))
                            }
                        }
                    }
                }.padding().offset(y:8)
            }.offset(y:-30)
        }.offset(y:60)
    }
}

struct RegistrationView: View{
    @State  var email: String = ""
    @State var password: String = ""
    @State var passwordAdd:String = ""
    
    var body: some View{
        ZStack{
          //  BackGround()
            Rectangle()
                .frame(width: 400, height: 300)
                
                .foregroundColor(Color.clear)
                .overlay(RoundedRectangle(cornerRadius: 50).foregroundColor(Color.white))
                .opacity(0.6)
                .shadow(color: Color.black, radius: 50, x: 0, y: 20)
                .offset(y:-30)
            
                
            VStack{
                
                HStack{
                    Image(systemName: "arrowshape.turn.up.left")
                        .offset(x:15)
                    Text("Sing in")
                        .foregroundColor(Color.black)
                        .font(.system(size: 20))
                    // .offset(x:115)
                        .padding(.horizontal,20)
                    Spacer()
                    Text("Sign up")
                        
                        .fontWeight(.bold)
                        .font(.system(size:20))
                    // .offset(x:-125,y:10)
                        .padding(.horizontal)
                }.padding(.horizontal,20)
                
                    
                HStack{
                    TextField("Email", text: $email)
                        .textFieldStyle(OvalTextFieldStyle())
                        .foregroundColor(Color.black)
                }
                HStack{
                    SecureField("Password", text: $password)
                        .textFieldStyle(OvalTextFieldStyle())
                }.padding(.top)
               
                
                HStack{
                    Button(action:{
                        //
                    }){
                        ZStack{
                            Rectangle()
                                .frame(width:140, height: 40)
                                .cornerRadius(15)
                                .foregroundColor(Color.clear)
                                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color("TextColorS"),lineWidth: 2))
                                .shadow(color: Color.black, radius: 100, x: 0, y: 20)
                            HStack{
                                Text("Sign up")
                                    .font(.system(size:20))
                                    .foregroundColor(Color("TextColorS"))
                                    .padding(.horizontal,5)
                                Image("Hend")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 20, height: 20)
                                    .padding(.horizontal,5)
                                    .foregroundColor(Color("TextColorS"))
                            }
                        }
                      
                    }
                }.padding().offset(y:8)
            }.offset(y:-30)
        }.offset(y:60)
    }
}


struct BackGround: View{
    @State private var animate = false
    @State var angle: Double = 0.0
    @State var isAnimating = true
    
    var foreverAnimation: Animation {
        Animation.linear(duration: 25.0)
            .repeatForever()
    }
    
    
    var body: some View{
        Image("Vector")
            .resizable()
            .frame(width: 300, height: 320)
            .offset(x:150,y:-180)
            .rotationEffect(Angle(degrees: self.isAnimating ? self.angle : 0.0))
            .onAppear {
                withAnimation(self.foreverAnimation) {
                    self.angle += 5.0
                }
            }
            
        Image("Group 2")
            .resizable()
            .frame(width: 200, height: 200)
            .offset(x:-171,y:-26)
            .rotationEffect(Angle(degrees: self.isAnimating ? self.angle : 0.0))
            .onAppear {
                withAnimation(self.foreverAnimation) {
                    self.angle += 5.0
                }
            }
        Image("Vector-1")
            .resizable()
            .frame(width: 180, height: 200)
            .offset(x:-130,y:250)
            .rotationEffect(Angle(degrees: self.isAnimating ? self.angle : 0.0))
            .onAppear {
                withAnimation(self.foreverAnimation) {
                    self.angle += 5.0
                }
            }
        Image("Group 3")
            .resizable()
            .frame(width: 80, height: 120)
            .offset(x:150, y:230)
            .rotationEffect(Angle(degrees: self.isAnimating ? self.angle : 0.0))
            .onAppear {
                withAnimation(self.foreverAnimation) {
                    self.angle += 5.0
                }
            }
        Image("Vector3")
            .resizable()
            .frame(width: 100, height: 100)
            .offset(x:-170, y:-260)
            //.opacity(0.6)
            .rotationEffect(Angle(degrees: self.isAnimating ? self.angle : 0.0))
            .onAppear {
                withAnimation(self.foreverAnimation) {
                    self.angle += 5.0
                }
            }
        HStack{
            Image("Logo")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Weather point").font(.system(size:40))
                .padding(.horizontal,10)
                .font(.title)
        }.offset(y:-220)
    }
}

struct TestMenuView:View{
    var body: some View{
        Text("Hello")
    }
}


struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        SingIn()
    }
}




