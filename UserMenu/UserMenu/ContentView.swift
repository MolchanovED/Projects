//
//  ContentView.swift
//  UserMenu
//
//  Created by EgorM on 16.10.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    @State var show = true
   
    
    var body: some View {
        ZStack{
            ZStack{
                HStack{
                    VStack(alignment:.leading){
                        VStack(alignment:.leading){
                            Image("User")
                                .resizable()
                                .frame(width:55, height: 55)
                                .clipShape(Circle())
                            
                            Text("Привет,")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top, 10)
                            Text("User")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }.padding(.horizontal,10)
                        VStack(alignment:.leading){
                            Button(action:{
                                self.index = 0
                                withAnimation{
                                    self.show.toggle()
                                }
                            }){
                                HStack(spacing: 25){
                                    HStack{
                                        Image("catalog-1")
                                            .resizable()
                                            .renderingMode(.template)
                                            .frame(width: 40, height: 40,alignment: .leading)
                                            .foregroundColor(self.index == 0 ? Color("Color2") : Color.white)
                                        
                                        Text("Catalog")
                                            .foregroundColor(self.index == 0 ? Color("Color2") : Color.white)
                                        
                                    }.padding(.vertical, 10)
                                    .padding(.horizontal,10)
            
                                    .background(self.index == 0 ? Color("Color2").opacity(0.2) : Color.clear)
                                    .cornerRadius(10)
                                }.padding(.top,10)
                                
                                
                            }
                            Button(action:{
                                self.index = 1
                                withAnimation{
                                    self.show.toggle()
                                }
                            }){
                                HStack(spacing: 25){
                                    HStack{
                                        Image("fav")
                                            .resizable()
                                            .renderingMode(.template)
                                            .frame(width: 35, height: 35,alignment: .leading)
                                            .foregroundColor(self.index == 1 ? Color("Color2") : Color.white)
                                        Text("Favorite")
                                            .foregroundColor(self.index == 1 ? Color("Color2") : Color.white)
                                    }.padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .background(self.index == 1 ? Color("Color2").opacity(0.2) : Color.clear)
                                    .cornerRadius(10)
                                }
                            }
                            Button(action:{
                                self.index = 2
                                withAnimation{
                                    self.show.toggle()
                                }
                            }){
                                HStack(spacing: 25){
                                    HStack{
                                        Image("card")
                                            .resizable()
                                            .renderingMode(.template)
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(self.index == 2 ? Color("Color2") : Color.white)
                                        Text("Cart")
                                            .foregroundColor(self.index == 2 ? Color("Color2") : Color.white)
                                    }.padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .background(self.index == 2 ? Color("Color2").opacity(0.2) : Color.clear)
                                    .cornerRadius(10)
                                }
                            }
                            Button(action:{
                                self.index = 3
                                withAnimation{
                                    self.show.toggle()
                                }
                            }){
                                HStack(spacing: 25){
                                    HStack{
                                        Image("shoplist")
                                            .resizable()
                                            .renderingMode(.template)
                                            .frame(width: 35, height: 35)
                                            .foregroundColor(self.index == 3 ? Color("Color2") : Color.white)
                                        Text("Shop list")
                                            .foregroundColor(self.index == 3 ? Color("Color2") : Color.white)
                                    }.padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .background(self.index == 3 ? Color("Color2").opacity(0.2) : Color.clear)
                                    .cornerRadius(10)
                                }
                            }
                        }
                        
                        Divider()
                            .frame(width:150, height:1)
                            .background(Color.white)
                            .padding(.vertical,30)
                        
                        Spacer(minLength: 0)
                        VStack(alignment:.leading){
                            Button(action:{
                                self.index = 4
                                withAnimation{
                                    self.show.toggle()
                                    
                                }
                            }){
                                HStack{
                                    Image("settings")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(self.index == 4 ? Color("Color2") : Color.white)
                                    Text("Settings")
                                        .fontWeight(.semibold)
                                        .foregroundColor(self.index == 4 ? Color("Color2") : Color.white)
                                }.padding().background(self.index == 4 ? Color("Color2").opacity(0.2) : Color.clear)
                                .cornerRadius(10)
                                
                            }
                            
                            Button(action:{
                                self.index = 5
                                withAnimation{
                                    self.show.toggle()
                                    
                                }
                            }){
                                HStack{
                                    Image("inform")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 30, height: 30)
                                        .foregroundColor(self.index == 5 ? Color("Color2") : Color.white)
                                    Text("Info")
                                        .foregroundColor(self.index == 5 ? Color("Color2") : Color.white)
                                        .fontWeight(.semibold)
                                }.padding().background(self.index == 5 ? Color("Color2").opacity(0.2) : Color.clear)
                                .cornerRadius(10)
                                
                            }
                            
                            Button(action:{
                                self.index = 6
                                withAnimation{
                                    self.show.toggle()
                                    
                                }
                            }){
                                HStack(){
                                    Image("Exit")
                                        .resizable()
                                        .renderingMode(.template)
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(Color("Color2"))
                                    Text("Exit")
                                        .foregroundColor(Color("Color2"))
                                        .fontWeight(.bold)
                                    
                                }.padding(.vertical)
                                .padding(.horizontal)
                                .background(self.index != 6 ? Color.clear : Color("Color2").opacity(0.2))
                                .cornerRadius(10)
                            }
                            
                            .cornerRadius(10)
                        }.padding(.vertical,10)
                        .padding(.bottom,80)
                    }.padding(.top,25).padding(.horizontal,25)
                    Spacer(minLength: 0)
                    
                }.padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            }.padding(.top,20).background(Color("Color1"))
            
            ZStack{
                GeometryReader { _ in
                    NavigationView{
                            VStack{
                                if self.index == 0 {
                                    Catalogue()
                                }
                                else if self.index == 1{
                                    Favorite()
                                }
                                else if self.index == 2{
                                    Cart()
                                }
                                else if self.index == 3{
                                    ShopList()
                                }
                                else if self.index == 4{
                                    Settings()
                                }
                                else if self.index == 5{
                                    Info()
                                }
                            }
                        
                    }.padding(.top).frame(minWidth: .zero, maxWidth: .infinity, minHeight: .zero, maxHeight: .infinity)
                    
                }
                HStack{
                    VStack{
                        HStack(spacing:15){
                            if !self.show{
                                Spacer(minLength: 0)
                            }
                            Button(action:{
                                withAnimation{
                                    self.show.toggle()
                                }
                            }){
                                ZStack{
                                    Rectangle()
                                        .frame(width: 70, height: 30)
                                        .foregroundColor(self.show ? Color.white : Color.clear)
                                        .cornerRadius(15)
                                        .shadow(radius:5)
                                    HStack{
                                            Text(self.show ? "Back" : "Menu")
                                                .foregroundColor(Color.black)
                                                .fontWeight(.semibold)
                                    }
                                }
                            }.offset(x:self.show ? -8: 10, y:self.show ? 0: 12)
                        }
                        if !self.show{
                            Spacer(minLength: 0)
                        }
                        
                        Spacer()
                    }
                    Spacer()
                }.padding(.top,42).padding()
            }
            .edgesIgnoringSafeArea(.all)
            .cornerRadius(self.show ? 30 : 0)
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0)
        }
    }
}



struct Catalogue: View {
    @State var isTap: Bool = false
    var body: some View{
        ZStack{
            
            VStack{
                
                
                
                ZStack{
                    
                    
                    VStack(alignment:.center){
                        NavigationLink(destination: TicketsAir()){
                            VStack{
                                ZStack{
                                    Rectangle()
                                        .padding()
                                     //   .border(Color.black,cornerRadius: 15)
                                       // .cornerRadius(50)
                                        .overlay(
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .stroke(Color.black, lineWidth: 2))
                                        .frame(width: 300, height:UIScreen.main.bounds.height/3)
                                        .foregroundColor(.white)
                                    HStack{
                                        Text("Air tickets")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .foregroundColor(.black)
                                            .offset(x:-30,y:-50)
                                        Image(systemName: "airplane")
                                            .resizable()
                                            .frame(width: 25, height:25)
                                            .offset(x: -10, y: -50)
                                            .foregroundColor(.black)
                                            
                                    }
                                    
                                        
                                }
                            }
                        }.padding(.bottom,30)//frame(minWidth: .zero, maxWidth: .infinity, minHeight: .zero, maxHeight: .infinity)
                        Button(action:{
                            //
                        }){
                            ZStack{
                                Rectangle()
                                  //  .cornerRadius(50)
                                    .padding()
                                    .overlay(
                                                RoundedRectangle(cornerRadius: 15)
                                                    .stroke(Color.black, lineWidth: 2))
                                    .frame(width: 300, height:UIScreen.main.bounds.height/3)
                                    .foregroundColor(.white)
                                HStack{
                                    Text("Train tikets")
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .offset(x:-30,y:-50)
                                    Image(systemName: "tram.fill")
                                        .resizable()
                                        .frame(width: 20, height:25)
                                        .offset(x: -10, y: -50)
                                        .foregroundColor(.black)
                                }
                               
                            }
                            
                        }
                        Spacer()
                        HStack(alignment:.center){
                            ZStack{
                                Button(action:{
                                    //
                                }){
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 60, height: 50)
                                            .overlay(
                                                        RoundedRectangle(cornerRadius: 15)
                                                            .stroke(Color.black, lineWidth: 2))
                                            .foregroundColor(.white)
                                        Image(systemName: "heart")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .foregroundColor(.black)
                                           
                                    }.padding().padding(.bottom)
                                    
                                }
                                
                            }.offset(y:15).padding()
                            Spacer()
                            ZStack{
                                Button(action:{
                                    //
                                }){
                                    ZStack{
                                        Rectangle()
                                            .frame(width: 60, height: 50)
                                            .overlay(
                                                        RoundedRectangle(cornerRadius: 15)
                                                            .stroke(Color.black, lineWidth: 2))
                                            .foregroundColor(.white)
                                        
                                        Image(systemName: "bag")
                                            .resizable()
                                            .frame(width: 25, height: 30)
                                            .foregroundColor(.black)
                                    }.padding().padding(.bottom)
                                    
                                }
                                
                            }.offset(y:15).padding()
                            
                            
                        }.padding(.bottom).padding()
                    }.padding(.bottom,60).padding(.top,50)
                    
                }
                
                
                
                
            }
        }
    }
    
}


struct Favorite: View {
    var body: some View{
        VStack{
            
            List{
                Section(header: Text("important tasks"), footer: Text("End")){
                 
                }
                Section(header: Text("Other tasks")){
                   
                }.listRowBackground(Color.red) // Цвет текста
            }.listStyle(GroupedListStyle()) // отделение
        }
    }
}

struct Cart: View {
    var body: some View{
        NavigationView{
            ZStack{
                Color.gray.edgesIgnoringSafeArea(.all)
                
                HStack(alignment:.top){
                    Text("Pussy Boy")
                }
                
            }
        }
    }
}

struct ShopList: View {
    var body: some View{
        VStack{
            Text("Shop List")
                .padding()
        }
    }
}

struct Settings: View {
    var body: some View{
        VStack{
            Text("Settings")
                .padding()
        }
    }
}

struct Info: View {
    var body: some View{
        VStack{
            Text("Information")
                .padding()
        }
    }
}


struct TicketsAir: View {
    
    
    
   /* @State var airTikets = [
        AirTickets (id: 0, name: "Kiev-Viena", price: 240, image: "viena", isLike: false),
        AirTickets(id: 1, name: "Kiev-Istanbul", price: 340, image: "istanbul", isLike: false),
        AirTickets(id: 2, name: "Kiev-Milano", price: 260, image: "milano", isLike: false),
        AirTickets(id: 3, name: "Kiev-Barselona", price: 320, image: "barselona", isLike: false),
        AirTickets(id: 4, name: "Kiev-Rome", price: 345, image: "rome", isLike: false),
        AirTickets(id: 5, name: "Kiev-Paris", price: 335, image: "paris", isLike: false),
        AirTickets(id: 6, name: "Kiev-Warshava", price: 130, image: "warshava", isLike: false),
        AirTickets(id: 7, name: "Kiev-Praga", price: 210, image: "praga", isLike: false),
        AirTickets(id: 8, name: "Kiev-Berlin", price: 360, image: "berlin", isLike: false)
    ]*/
    @State var ClassairTikets = [
        ClassAirTickets (id: 0, name: "Kiev-Viena", price: 240, image: "viena", isLike: false),
        ClassAirTickets(id: 1, name: "Kiev-Istanbul", price: 340, image: "istanbul", isLike: false),
        ClassAirTickets(id: 2, name: "Kiev-Milano", price: 260, image: "milano", isLike: false),
        ClassAirTickets(id: 3, name: "Kiev-Barselona", price: 320, image: "barselona", isLike: false),
        ClassAirTickets(id: 4, name: "Kiev-Rome", price: 345, image: "rome", isLike: false),
        ClassAirTickets(id: 5, name: "Kiev-Paris", price: 335, image: "paris", isLike: false),
        ClassAirTickets(id: 6, name: "Kiev-Warshava", price: 130, image: "warshava", isLike: false),
        ClassAirTickets(id: 7, name: "Kiev-Praga", price: 210, image: "praga", isLike: false),
        ClassAirTickets(id: 8, name: "Kiev-Berlin", price: 360, image: "berlin", isLike: false)
    ]
   // @State var likeTikets = []
    //@State var isLikeS: Bool = false
    
    var body: some View{
        VStack{
            HStack{
                
                List(ClassairTikets){ ticket in
                    HStack(alignment:.center){
                        ZStack{
                            Image("\(ticket.image)")
                                .resizable()
                                .frame(width:240, height: 260)
                                .cornerRadius(15)
                            Rectangle()
                                .frame(width:240, height: 260)
                                .foregroundColor(.black)
                                .cornerRadius(15)
                                .opacity(0.2)
                            VStack{
                                HStack{
                                    VStack(alignment:.leading){
                                        HStack{
                                            Text("\(ticket.name)")
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .padding().padding(.top,30)
                                            //Spacer()
                                        }
                                        
                                        HStack{
                                            Text("\(ticket.price)$")
                                                .fontWeight(.bold)
                                                .font(.title)
                                                //.fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .padding().padding(.top,60)
                                            Spacer()
                                        }
                                        
                                    }
                                    
                                    Spacer()
                                }.padding(.top,20)
                                Spacer()
                            }
                            
                        }//.padding(.horizontal,10)
                        //Spacer()
                        VStack{
                            
                            Button(action:{
                                //
                            }){
                                ZStack{
                                    Rectangle()
                                        .frame(width: 100,height:90)
                                        //.cornerRadius(15)
                                        .foregroundColor(.white)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 15)
                                                .stroke(Color.black, lineWidth: 2))
                                    HStack{
                                        Image(systemName: "applelogo")
                                            .resizable()
                                            .frame(width: 17, height:20)
                                            .foregroundColor(.black)
                                        Text("Pay")
                                            .font(.largeTitle)
                                            .foregroundColor(.black)
                                            .fontWeight(.semibold)
                                    }
                                    
                                }
                            }
                            
                            
                            
                            
                            HStack{
                                Button(action:{
                                    // self.ticket.isLike.toggle()
                                   // self.isLike.toggle()
                                    //self.likeTikets = [LikeTickets(id: ticket.id, name: ticket.name, price: ticket.price, image: ticket.image)]
                                   // ticket.isLike = true
                                    
                                }){
                                    ZStack{
                                        
                                        Image(systemName: "heart")
                                            .resizable()
                                            .frame(width:25,height:23)
                                            .foregroundColor(.black)
                                    }
                                }.offset(x:6)
                                
                               Spacer()
                                Button(action:{
                                    //
                                }){
                                    ZStack{
                                        
                                        Image(systemName:"bag.badge.plus")
                                            .resizable()
                                            .frame(width:26,height:27)
                                            .foregroundColor(.black)
                                        
                                    }
                                }.offset(x:-6)
                            }.padding(.top,30)//.padding()
                        }.offset(x:6)
                        
                    }
                }
            }
        }.navigationTitle("Tickets")
        
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
