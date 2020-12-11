
@available(iOS 13.0, *)
protocol PKToolPickerObserver : NSObjectProtocol {
  optional func toolPickerSelectedToolDidChange(_ toolPicker: PKToolPicker)
  optional func toolPickerIsRulerActiveDidChange(_ toolPicker: PKToolPicker)
  optional func toolPickerVisibilityDidChange(_ toolPicker: PKToolPicker)
  optional func toolPickerFramesObscuredDidChange(_ toolPicker: PKToolPicker)
}
@available(iOS 13.0, *)
class PKToolPicker : NSObject {
  func addObserver(_ observer: PKToolPickerObserver)
  func removeObserver(_ observer: PKToolPickerObserver)
  func setVisible(_ visible: Bool, forFirstResponder responder: UIResponder)
  var __selectedTool: __PKTool
  var isRulerActive: Bool
  var isVisible: Bool { get }
  @available(iOS 14.0, *)
  var stateAutosaveName: String?
  func frameObscured(in view: UIView) -> CGRect
  var overrideUserInterfaceStyle: UIUserInterfaceStyle
  var colorUserInterfaceStyle: UIUserInterfaceStyle
  @available(iOS 14.0, *)
  var showsDrawingPolicyControls: Bool
  @available(iOS, introduced: 13.0, deprecated: 14.0, message: "Create individual instances instead.")
  class func shared(for window: UIWindow) -> PKToolPicker?
}

@available(iOS 13.0, *)
extension PKToolPicker {
  var selectedTool: PKTool
}
