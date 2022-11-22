//
//  AccountView.swift
//  CarsomeDemo
//
//  Created by 王海龙 on 2022/11/13.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ZStack(alignment: .top) {
                    Color.hexColor(0xE6EBF2).frame(width: UIScreen.main.bounds.width, height: 214)
                    VStack(spacing: 32) {
                        Text("My Account")
                            .fontWeight(.bold).font(.system(size: 18))
                            .foregroundColor(Color.hexColor(0x2E2E2E))
                        HStack{
                            Text("Log in for best experience!")
                                .bold()
                                .foregroundColor(Color.hexColor(0x173559))
                                .padding(.leading, 16)
                                .font(.system(size: 18))
                                .fontWeight(.heavy)
                            
                            Spacer()
                            Image("setting").padding(.trailing, 16)
                        }.frame(width: UIScreen.main.bounds.width, height: 24)
                        HeaderView().padding(.horizontal, 16)
                    }.padding(.top, 60)
                    
                }.frame(width: UIScreen.main.bounds.width, height: 242).ignoresSafeArea()
                ItemView(imageName: "favoritepng", title: "My Favorites").onTapGesture {
                    print("Push Favorite")
                }
                ItemView(imageName: "broswingHistory", title: "Browsing History")
                    .onTapGesture {
                        print("Push broswing")
                    }
                ItemView(imageName: "myCarsOnBid", title: "My Cars on Bid")
                    .onTapGesture {
                        print("Push myCarsOnBid")
                    }
                Divider().padding(.top, 16).padding(.horizontal, 16)
                ItemView(imageName: "faq", title: "FAQ")
                    .onTapGesture {
                        print("Push FAQ")
                    }
                ItemView(imageName: "calling", title: "Contact Us", showPhoneNumber: true)
                    .onTapGesture {
                        print("Push calling")
                    }
                HStack {
                    Button {
                        print("login")
                    } label: {
                        Text("Login")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 48)
                            .font(.system(size: 16))
                            .bold()
                            .foregroundColor(Color.hexColor(0x173559))
                            .background(RoundedRectangle(cornerRadius: 4).fill(Color.hexColor(0xFDCF33)))
                            .padding(.horizontal, 16)
                            .padding(.top, 16)
                        
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(spacing: 15) {
                Image("myAppointments")
                Text("My Apppinment")
                    .font(.system(size: 12))
            }.frame(width: (UIScreen.main.bounds.width-32)/3,height: 86)
            VStack(spacing: 15) {
                
                Image("myOrder")
                Text("My Orders")
                    .font(.system(size: 12))
            }.frame(width: (UIScreen.main.bounds.width-32)/3,height: 86)
            VStack(spacing: 15) {
                Image("myVouchers")
                Text("My Vouchers")
                    .font(.system(size: 12))
            }.frame(width: (UIScreen.main.bounds.width-32)/3,height: 86)
        }
        .background(Color.white.shadow(color: Color.hexColor(0x1363FF,alphaValue: 0.06), radius: 1, y: 2).blur(radius: 4))
        .cornerRadius(4)
    }
}

struct ItemView: View {
    var imageName: String
    var title: String
    var showPhoneNumber: Bool = false
    var body: some View {
        HStack(alignment: .center) {
            Image(imageName)
            Text(title)
            Spacer()
            showPhoneNumber ? Text("1-800-82-3388")
                .foregroundColor(Color.hexColor(0x3D82C3)).font(.system(size: 14)) : Text("")
            showPhoneNumber ? Image("") : Image("arrow")
        }
        .padding(.horizontal, 16)
        .padding(.top, 16)
        .frame(height: 48)
    }
    
    init(imageName: String, title: String, showPhoneNumber : Bool = false) {
        self.imageName = imageName
        self.title = title
        self.showPhoneNumber = showPhoneNumber
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
