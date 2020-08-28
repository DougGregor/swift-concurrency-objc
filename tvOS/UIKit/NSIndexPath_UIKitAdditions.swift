
extension NSIndexPath {
  convenience init(row: Int, section: Int)
  @available(tvOS 6.0, *)
  convenience init(item: Int, section: Int)
  var section: Int { get }
  var row: Int { get }
  @available(tvOS 6.0, *)
  var item: Int { get }
}
