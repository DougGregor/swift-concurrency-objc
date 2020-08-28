
extension NSUserActivity {
  @available(watchOS 3.2, *)
  var interaction: INInteraction? { get }
  @available(watchOS 5.0, *)
  var suggestedInvocationPhrase: String?
  @available(watchOS 7.0, *)
  var shortcutAvailability: INShortcutAvailabilityOptions
}
