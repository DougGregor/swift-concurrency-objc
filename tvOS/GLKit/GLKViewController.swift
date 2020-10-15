
@available(tvOS, introduced: 9.0, deprecated: 12.0, message: "OpenGLES API deprecated. (Define GLES_SILENCE_DEPRECATION to silence these warnings)")
class GLKViewController : UIViewController, NSCoding, GLKViewDelegate {
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged GLKViewControllerDelegate?
  var preferredFramesPerSecond: Int
  var framesPerSecond: Int { get }
  var isPaused: Bool
  var framesDisplayed: Int { get }
  var timeSinceFirstResume: TimeInterval { get }
  var timeSinceLastResume: TimeInterval { get }
  var timeSinceLastUpdate: TimeInterval { get }
  var timeSinceLastDraw: TimeInterval { get }
  var pauseOnWillResignActive: Bool
  var resumeOnDidBecomeActive: Bool
}
protocol GLKViewControllerDelegate : NSObjectProtocol {
  @available(tvOS 9.0, *)
  func glkViewControllerUpdate(_ controller: GLKViewController)
  @available(tvOS 9.0, *)
  optional func glkViewController(_ controller: GLKViewController, willPause pause: Bool)
}
