
@available(macOS 10.13, *)
class WKSnapshotConfiguration : NSObject, NSCopying {
  var rect: CGRect
  @NSCopying var snapshotWidth: NSNumber?
  @available(macOS 10.15, *)
  var afterScreenUpdates: Bool
}
