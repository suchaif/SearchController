import Foundation
import UIKit

class SearchResultViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        view.isOpaque = false
        searchController.delegate = self
        searchController.searchResultsUpdater = self
        searchController.dimsBackgroundDuringPresentation = true

        tableView.tableHeaderView = searchController.searchBar
    }

}

extension SearchResultViewController: UISearchResultsUpdating {

    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text!)
    }

}

extension SearchResultViewController: UISearchControllerDelegate {

    func didDismissSearchController(_ searchController: UISearchController) {
        dismiss(animated: true, completion: nil)
    }

}

extension SearchResultViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

}
