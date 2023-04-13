//
//  OnboardingView.swift
//  SwiftUIThinkingBootcampApp
//
//  Created by User03 on 12.04.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State private var onboardingState = 0
    
    // Onboarding inputs
    @State private var name = ""
    @State private var age = 50.0
    @State private var gender = "Male"
    
    // for the alert
    @State private var alertTitle = ""
    @State private var showAlert = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signedIn") var currentUserSignedIn = false
    
    let transition = AnyTransition.asymmetric(insertion: .move(edge: .trailing),
                                              removal: .move(edge: .leading))
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default :
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            
            // buttons
            VStack {
                Spacer()
                
                bottomButton
            }
            .padding(30)
        }
        .alert(alertTitle, isPresented: $showAlert) {}
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

//MARK: COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SING UP" :
                onboardingState == 3 ? "FINISH" :
                "NEXT"
        )
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                hadleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            
            Text("This is the #1 app for finding your match online!")
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Picker(selection: $gender) {
                Text("Male")
                    .tag("Male")
                Text("Femail")
                    .tag("Femail")
                Text("Non-Binary")
                    .tag("Non-Binary")
            } label: {
                Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            
//            Picker(selection: $gender,
//                   label:
//                    Text(gender.count > 0 ? gender : "Select a gender")
//                        .font(.headline)
//                        .foregroundColor(.purple)
//                        .frame(height: 55)
//                        .frame(maxWidth: .infinity)
//                        .background(Color.white)
//                        .cornerRadius(10)
//                   ,
//                   content: {
//                Text("Male")
//                    .tag("Male")
//                Text("Femail")
//                    .tag("Femail")
//                Text("Non-Binary")
//                    .tag("Non-Binary")
//
//            })
            .pickerStyle(.menu)
            
            Spacer()
            Spacer()
        }
    }
}

//MARK: FUNCTION

extension OnboardingView {
    func hadleNextButtonPressed() {
        // check inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long! 😩")
                return
            }
        case 3:
            guard name.count >= 1 else {
                showAlert(title: "Please select a gender before moving forward! 😳")
                return
            }
        default:
            break
        }
        
        // go to next section
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
