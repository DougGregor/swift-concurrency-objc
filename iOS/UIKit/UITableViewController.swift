
@available(iOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableView.Style)
  var tableView: UITableView!
  @available(iOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  @available(iOS 6.0, *)
  var refreshControl: UIRefreshControl?
}
