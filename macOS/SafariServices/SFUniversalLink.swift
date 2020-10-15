
@available(macOS 10.15, *)
class SFUniversalLink : NSObject {
  init?(webpageURL url: URL)
  var webpageURL: URL { get }
  var applicationURL: URL { get }
  var isEnabled: Bool
}
