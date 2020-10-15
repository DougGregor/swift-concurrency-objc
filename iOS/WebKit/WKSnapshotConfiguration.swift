
@available(iOS 11.0, *)
class WKSnapshotConfiguration : NSObject, NSCopying {
  var rect: CGRect
  @NSCopying var snapshotWidth: NSNumber?
  @available(iOS 13.0, *)
  var afterScreenUpdates: Bool
}
