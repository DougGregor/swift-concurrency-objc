
@available(watchOS 3.2, *)
class INSetCarLockStatusIntent : INIntent {
  init(__locked locked: NSNumber?, carName: INSpeakableString?)
  @NSCopying var __locked: NSNumber? { get }
  @NSCopying var carName: INSpeakableString? { get }
}

@available(macOS 10.15, iOS 10.3, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSetCarLockStatusIntent {
  @nonobjc convenience init(locked: Bool?, carName: INSpeakableString?)
  @nonobjc final var locked: Bool? { get }
}
@available(watchOS 3.2, *)
protocol INSetCarLockStatusIntentHandling : NSObjectProtocol {
  func handle(intent: INSetCarLockStatusIntent, completion: @escaping (INSetCarLockStatusIntentResponse) -> Void)
  optional func confirm(intent: INSetCarLockStatusIntent, completion: @escaping (INSetCarLockStatusIntentResponse) -> Void)
  optional func resolveLocked(for intent: INSetCarLockStatusIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
  optional func resolveCarName(for intent: INSetCarLockStatusIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
}
