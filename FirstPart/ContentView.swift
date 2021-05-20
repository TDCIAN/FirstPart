//
//  ContentView.swift
//  FirstPart
//
//  Created by APPLE on 2021/05/20.
//

import SwiftUI

/*
 Font.TextStyle 종류
 .largeTitle
 .title
 .headline
 .subheadline
 .body
 .callout
 .caption
 .footnote
 
 Font.Design 종류
 .default
 .monospaced
 .rounded
 .serif
 */

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            NavigationView {
                ZStack {
                    imageBackground
                        .overlay(
                            VStack(alignment: .leading, spacing: 0) {
                                HStack {
                                    Spacer().frame(width: 20)

                                    Text("게스트 초대")
//                                        .font(.system(size: 30, weight: .heavy, design: .monospaced))
//                                        .font(.system(.largeTitle, design: .monospaced))
//                                        .font(.system(.largeTitle, design: .serif))
                                        .font(.nb26)
//                                        .font(.h1)
//                                        .font(.headline)
//                                        .font(.system(size: 70))
                                        .foregroundColor(Color.white)
                                }
                                .background(Color.yellow) // 글씨에 들어가는 백그라운드
                                .frame(height: 67) // 이 높이 만큼 이미지가 나온다
                                
                                VStack(alignment: .leading, spacing: 0) {
                                    Spacer()
                            
                                    VStack(spacing: 10) { // spacing은 Text간 간격을 보여줌
//                                        MenuView()
                                        ZStack {
                                            Image(systemName: "person.circle")
                                                .resizable()
                                                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .background(Color.orange)
                                            
                                            Image(systemName: "pencil.circle.fill")
                                                .resizable()
                                                .frame(width: 30, height: 30, alignment: .trailing)
                                                .background(Color.green)
                                                .padding(.leading, 70)
                                                .padding(.top, 70)
                                        }
                                        .onTapGesture {
                                            print("프로필 사진 선택")
                                        }
                                        
                                        HStack {
                                            Spacer()
                                            
                                            Text("CG")
                                                .foregroundColor(Color.white)
                                                .background(Color.blue)
                                                .lineLimit(7)
                                                .lineLimit(nil) // nil 넣으면 라인 제한 수가 사라진다
                                                .truncationMode(.tail)
                                                .allowsTightening(true) // allowsTightening을 사용하면 공간이 부족할 경우 자간을 줄여 최대한 많은 콘텐츠를 표시한다
                                            
                                            Spacer().frame(width: 30)
                                            
                                            Text("포스텍")
                                                .foregroundColor(Color.white)
                                                .background(Color.yellow)
                                            
                                            Spacer()
                                        }
                                        .background(Color.green)
                                        .padding()
                                        
                                        Text("Hong Gil Dong")
                                            .font(.largeTitle)
                                            .foregroundColor(.blue)
                                        
                                        Spacer().frame(height: 30)
                                        
                                        List {
                                            HStack {
                                                Spacer().frame(width: 20)
                                                Image(systemName: "creditcard")
                                                    .resizable()
                                                    .renderingMode(.original)
                                                    .frame(width: 20, height:20)
                                                
                                                Spacer().frame(width: 20)
                                                Text("MY일정")
                                                Spacer()
                                                Image(systemName: "chevron.forward")
                                                    .foregroundColor(Color.gray)
                                            }
                                            .background(Color.yellow)
                                            .onTapGesture {
                                                print("MY일정 클릭했어")
                                            }
                                            HStack {
                                                Spacer().frame(width: 20)
                                                Image(systemName: "lock.shield")
                                                    .resizable()
                                                    .frame(width: 20, height:20)
                                                Spacer().frame(width: 20)
                                                Text("인증/보안 관리")
                                                Spacer()
                                                Image(systemName: "chevron.forward")
                                                    .foregroundColor(Color.gray)
                                            }
                                            .onTapGesture {
                                                print("인증/보안 관리 클릭했어")
                                            }
                                            HStack {
                                                Spacer().frame(width: 20)
                                                Image(systemName: "book.fill")
                                                    .resizable()
                                                    .frame(width: 20, height:20)
                                                Spacer().frame(width: 20)
                                                Text("오피스 가이드")
                                                Spacer()
                                                Image(systemName: "chevron.forward")
                                                    .foregroundColor(Color.gray)
                                            }
                                            .onTapGesture {
                                                print("오피스 가이드 클릭했어")
                                            }
                                            HStack {
                                                Spacer().frame(width: 20)
                                                Image(systemName: "gearshape")
                                                    .resizable()
                                                    .frame(width: 20, height:20)
                                                Spacer().frame(width: 20)
                                                Text("설정")
                                                Spacer()
                                                Image(systemName: "chevron.forward")
                                                    .foregroundColor(Color.gray)
                                            }
                                            .onTapGesture {
                                                print("설정 클릭했어")
                                            }
                                        }
//                                        .listStyle(DefaultListStyle())
//                                        .listStyle(GroupedListStyle())
                                        .listStyle(PlainListStyle())
//                                        .listStyle(SidebarListStyle())
                                        
                                        Spacer()
                                    }
                                    .padding(.bottom, 20) // 아래로부터 얼마나 떨어지나
                                    .frame(maxWidth: .infinity, alignment: .bottom) // 흰색 뷰의 넓이
                                }
                                    .background(Color.white)
                                    .cornerRadius(12.0) // 흰색 뷰 상단 좌우측 라디우스값
                                    .edgesIgnoringSafeArea(.bottom) // 이거 없으면 세이프에이리어 사라짐
                            }
                    )
                }
                .navigationBarHidden(true)
                
            }
        }
            .transition(.move(edge: .trailing))
    }
}

private var imageBackground: some View {
    GeometryReader { geometry in
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .frame(width: geometry.size.width)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
