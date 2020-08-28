
@available(iOS 12.0, *)
protocol CPBarButtonProviding : NSObjectProtocol {
  var leadingNavigationBarButtons: [CPBarButton] { get set }
  var trailingNavigationBarButtons: [CPBarButton] { get set }
  var backButton: CPBarButton? { get set }
}
