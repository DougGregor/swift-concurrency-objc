
extension NSUserActivity {
  @available(tvOS 14.0, *)
  var interaction: INInteraction? { get }
  @available(tvOS 12.0, *)
  var suggestedInvocationPhrase: String?
  @available(tvOS 14.0, *)
  var shortcutAvailability: INShortcutAvailabilityOptions
}
