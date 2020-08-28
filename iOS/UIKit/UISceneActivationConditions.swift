
@available(iOS 13.0, *)
class UISceneActivationConditions : NSObject, NSSecureCoding {
  @NSCopying var canActivateForTargetContentIdentifierPredicate: NSPredicate
  @NSCopying var prefersToActivateForTargetContentIdentifierPredicate: NSPredicate
}
extension NSUserActivity {
}
