
extension SKOverlay {
  @available(iOS 14.0, *)
  class Configuration : NSObject {
  }
  @available(iOS 14.0, *)
  enum Position : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case bottom
    case bottomRaised
  }
  @available(iOS 14.0, *)
  class AppConfiguration : SKOverlay.Configuration {
    init(appIdentifier: String, position: SKOverlay.Position)
    var appIdentifier: String
    var campaignToken: String?
    var providerToken: String?
    var position: SKOverlay.Position
    var userDismissible: Bool
    func setAdditionalValue(_ value: Any?, forKey key: String)
    func additionalValue(forKey key: String) -> Any?
  }
  @available(iOS 14.0, *)
  class AppClipConfiguration : SKOverlay.Configuration {
    init(position: SKOverlay.Position)
    var campaignToken: String?
    var providerToken: String?
    var position: SKOverlay.Position
    func setAdditionalValue(_ value: Any?, forKey key: String)
    func additionalValue(forKey key: String) -> Any?
  }
}
