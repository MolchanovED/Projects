//
//  ContentView.swift
//  WeatherPoint
//
//  Created by EgorM on 25.11.2021.
//

import Firebase
import SwiftUI


class AppViewModel: ObservableObject{
    
    @Published var signedIn = false

    let auth = Auth.auth()
    
     var isSignedIn:Bool{
        return auth.currentUser != nil
    }
    
    
    func SignIn(email:String, password:String){
        auth.signIn(withEmail: email, password: password) { [weak self]result, error in
            guard result != nil, error == nil else{
                return
            }
            DispatchQueue.main.async {
                self?.signedIn = true
            }
            
        }
    }
    
    func SignUp(email:String, password:String){
        auth.createUser(withEmail: email, password: password) {[weak self]result, error in
            guard result != nil, error == nil else{
                return
            }
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    
}


struct ContentView: View {
    @EnvironmentObject var viewModel: AppViewModel
    var body: some View {
        NavigationView{
            if viewModel.signedIn {
                TestMenuView()
            }else{
                SingIn()
            }
        }
        .onAppear{
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
      
    }
}




