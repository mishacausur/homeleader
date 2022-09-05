//
//  MainView.swift
//  homeleader
//
//  Created by Misha Causur on 01.09.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "gear")
                Text("Settings")
                Image(systemName: "arrow.right")
            }
            .foregroundColor(.indigo)
            .font(.title)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .ignoresSafeArea()
        .background(.gray)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

@objc
class MainViewBridge: NSObject {
    @objc func makeMainViewUI() -> UIViewController {
        let view = MainView()
        return UIHostingController(rootView: view)
    }
}
