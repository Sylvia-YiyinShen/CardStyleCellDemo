# CardStyleCellDemo

* Easy to use
* Based on MVVM
* Data driven

## How to use
* Make you own cell subclass CardStyleCell and override leftPadding/rightPadding
* Make you own CellViewModel conform to CardStyleCellViewModelProtocol
* Call configure(viewModel: CardStyleCellViewModelProtocol) on the cell in func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell

![Simulator Screen Shot - iPhone X - 2019-04-26 at 16 11 01](https://user-images.githubusercontent.com/46996132/56863879-4c592b80-69ff-11e9-8521-454b9734be89.png)
