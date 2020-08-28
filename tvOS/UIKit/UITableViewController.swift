
@available(tvOS 2.0, *)
class UITableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
  init(style: UITableView.Style)
  var tableView: UITableView!
  @available(tvOS 3.2, *)
  var clearsSelectionOnViewWillAppear: Bool
  @available(tvOS 6.0, *)
  var refreshControl: UIRefreshControl?
}
