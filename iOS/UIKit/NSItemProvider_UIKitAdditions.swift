
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
  @available(iOS 11.0, *)
  var teamData: Data?
  @available(iOS 11.0, *)
  var preferredPresentationSize: CGSize
  @available(iOS 11.0, *)
  var preferredPresentationStyle: NSItemProvider.PreferredPresentationStyle
}
@available(iOS 11.0, *)
protocol UIItemProviderPresentationSizeProviding : NSObjectProtocol {
  var preferredPresentationSizeForItemProvider: CGSize { get }
}
