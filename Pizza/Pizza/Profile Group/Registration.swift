//
//  Registration.swift
//  Pizza
//
//  Created by Матвей Глухов on 17.05.2024.
//

import SwiftUI
import iPhoneNumberField
import PhoneNumberKit

struct Registration: View {
    @Environment (\.dismiss) var dismiss
    let person: Persons
    
    @State private var phoneNumber: String = ""
    private var disableadContinue: Bool {
        if phoneNumber.count != 10 {
            return true
        } else {
            return false
        }
    }
    
    @State private var phoneNumberFormat = false
    
    var body: some View {
        VStack {
            Group {
                Text("Specify the phone number")
                    .font(.title)
                    .bold()
                Text("You will be able to place orders quickly and use bonuses")
                    .multilineTextAlignment(.center)
                    .font(.callout)
            }
            .padding(2)
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .stroke(lineWidth: 0.2)
                    .frame(width: 350, height: 50, alignment: .center)
                    .padding()
                
                HStack {
                    Group {
                        Button(action: {
                            phoneNumberFormat = true
                        }, label: {
                            HStack {
                                Text(person.formatNumber.formatNumber)
                                Image(uiImage: UIImage(systemName: "arrow.down")!)
                            }
                            .foregroundStyle(.black)
                            .padding(.leading, 35)
                        })
                        TextField("Phone number", text: $phoneNumber)
                            .keyboardType(.numberPad)
                    }
                }
            }
            
            Group {
                Text("By continuing, you agree to the terms of our")
                Link(destination: URL(string: "https://ya.ru/")!, label: {
                    Text("legal documents")
                        .underline()
                })
            }
            .multilineTextAlignment(.center)
            .font(.subheadline)
            .foregroundStyle(Color(#colorLiteral(red: 0.7725487947, green: 0.772549212, blue: 0.7811570764, alpha: 1)))
            
            Button("Continue") {
                
            }
            .frame(width: 350, height: 50, alignment: .center)
            .background(disableadContinue == false ? Color(#colorLiteral(red: 0.9014285207, green: 0.08878894895, blue: 0.5165427327, alpha: 1)) : Color(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)))
            .foregroundStyle(disableadContinue == false ? .white : Color(#colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)))
            .font(.title3)
            .bold()
            .clipShape(.capsule)
            .padding(25)
            .disabled(disableadContinue)
            
        }
        .sheet(isPresented: $phoneNumberFormat, content: {
            PhoneNumberFormat(person: person)
        })
        
    }
    
}

#Preview {
    Registration(person: Persons())
}
