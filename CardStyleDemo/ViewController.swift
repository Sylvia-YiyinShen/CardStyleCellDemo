//
//  ViewController.swift
//  CardStyleDemo
//
//  Created by Yiyin Shen on 26/4/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let viewModel = MyCardTableViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.numberOfSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSections(at: section)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyCardCell()
        cell.textLabel?.text = "Section: \(indexPath.section) Row: \(indexPath.row)"
        cell.configure(viewModel: viewModel.cellViewModel(at: indexPath))
        return cell
    }
}

