//
//  ContentView.swift
//  StopWatch
//
//  Created by yanming05 on 2021/12/2.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm: WatchUtil = WatchUtil.init()
    
    var body: some View {
        VStack(spacing:20) {
            HStack {
                Spacer()
                Button(action:{
                    vm.reset()
                }){
                    Text("Reset").foregroundColor(Color.white)
                }.padding()
            }
            Spacer()
            Spacer()
            Text(String(format: "%.1f", vm.time)).font(.system(size: 80)).foregroundColor(Color.white)
            Spacer()
            Spacer()
            HStack(spacing:0) {
                Group {
                    Button(action:{
                        vm.play()
                    }){
                        Image("play")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
                Group {
                    Button(action:{
                        vm.pause()
                    }){
                        Image("pause")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
