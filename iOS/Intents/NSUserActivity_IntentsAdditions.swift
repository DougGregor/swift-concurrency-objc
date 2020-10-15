
extension NSUserActivity {
  @available(iOS 10.0, *)
  var interaction: INInteraction? { get }
  @available(iOS 12.0, *)
  var suggestedInvocationPhrase: String?
  @available(iOS 14.0, *)
  var shortcutAvailability: INShortcutAvailabilityOptions
}
