import UIKit

class ViewController: UITableViewController {

    @IBOutlet weak var searchBar: UISearchBar!

    let words = [
        "ร้านอาหารกินฟรี", "เปลี่ยนยาง รถ", "BQuick",
        "ซูชิ", "รถ", "บ้านพัก คนชรา", "บ้านง", "บ้าน_พัก",
        "Home", "HOME", "HomE", "Care", "B+Quick"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func showSearchView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchResultViewController")
        searchViewController.modalPresentationStyle = .overCurrentContext
        present(searchViewController, animated: true, completion: nil)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? Cell
        cell?.titleLabel.text = words[indexPath.row]

        return cell ?? UITableViewCell()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return words.count
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showSearchView()
    }
}

class Cell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
}
