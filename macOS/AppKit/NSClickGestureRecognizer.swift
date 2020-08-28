
@available(macOS 10.10, *)
class NSClickGestureRecognizer : NSGestureRecognizer, NSCoding {
  var buttonMask: Int
  var numberOfClicksRequired: Int
  @available(macOS 10.12.2, *)
  var numberOfTouchesRequired: Int
}
