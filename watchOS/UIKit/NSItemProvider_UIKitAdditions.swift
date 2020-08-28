
extension NSItemProvider {
  enum PreferredPresentationStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unspecified
    case inline
    case attachment
  }
}
extension NSItemProvider {
}
