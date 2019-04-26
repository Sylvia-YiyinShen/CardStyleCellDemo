//
//  MyCardTableViewModel.swift
//  CardStyleDemo
//
//  Created by Yiyin Shen on 26/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import Foundation

class MyCardTableViewModel {

    // dummy data
    private var sectionViewModels: [[MyCardCellViewModel]] {
        let model1_1 = MyCardCellViewModel()
        model1_1.isFirstRow = true
        model1_1.isLastRow = true

        let model2_1 = MyCardCellViewModel()
        model2_1.isFirstRow = true
        let model2_2 = MyCardCellViewModel()
        model2_2.isLastRow = true

        let model3_1 = MyCardCellViewModel()
        model3_1.isFirstRow = true
        let model3_2 = MyCardCellViewModel()
        let model3_3 = MyCardCellViewModel()
        model3_3.isLastRow = true
        return [[model1_1], [model2_1, model2_2], [model3_1, model3_2, model3_3]]
    }

    var numberOfSections: Int {
        return sectionViewModels.count
    }

    func numberOfRowsInSections(at section: Int) -> Int {
        return sectionViewModels[section].count
    }

    func cellViewModel(at indexPath: IndexPath) -> MyCardCellViewModel {
        return sectionViewModels[indexPath.section][indexPath.row]
    }
}
