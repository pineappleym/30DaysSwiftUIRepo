//
//  WatchUtil.swift
//  StopWatch
//
//  Created by yanming05 on 2021/12/2.
//

import Foundation
import SwiftUI

class WatchUtil : ObservableObject{
    @Published var time:Double
    
    var timer:Timer?
    
    init() {
        time = 0.0
    }
    
    func play() {
        guard timer == nil else {return}
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { intimer in
            self.time += 0.1
        })
        timer?.fire()
    }

    func pause() {
        guard let actualTimer = timer else {return}
        actualTimer.invalidate()
        timer = nil
    }

    func reset() {
        time = 0
        pause()
    }

}
