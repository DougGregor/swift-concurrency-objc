
protocol TVInterfaceCreating : NSObjectProtocol {
  @available(tvOS 9.0, *)
  optional func makeView(element: TVViewElement, existingView: UIView?) -> UIView?
  @available(tvOS 9.0, *)
  optional func makeViewController(element: TVViewElement, existingViewController: UIViewController?) -> UIViewController?
  @available(tvOS 9.0, *)
  optional func resourceURL(name resourceName: String) -> URL?
  @available(tvOS 9.2, *)
  optional func resourceImage(name resourceName: String) -> UIImage?
  @available(tvOS 10.0, *)
  optional func collectionViewCellClass(for element: TVViewElement) -> AnyClass?
  @available(tvOS 12.0, *)
  optional func playerViewController(for player: TVPlayer) -> UIViewController?
}
@available(tvOS 9.0, *)
class TVInterfaceFactory : NSObject, TVInterfaceCreating {
  class func shared() -> Self
  var extendedInterfaceCreator: TVInterfaceCreating?
}
