
extension MLModelCollection {
  @available(iOS 14.0, *)
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case couldNotDetermine
    case syncing
    case ready
  }
}
