//
//  EnglishRefView.swift
//  EnglishRefView
//
//  Created by Mark Wike on 16/09/2021.
//

import SwiftUI

struct EnglishRefView: View {
    @ObservedObject var dataController = EnglishRefDataController()
    var body: some View {
        List {
            ForEach(dataController.englishRefs?.data ?? [], id: \.self) { refs in
                Text("\(refs.common_name)")
            }
        }
    }
}

struct EnglishRefView_Previews: PreviewProvider {
    static var previews: some View {
        EnglishRefView()
    }
}
