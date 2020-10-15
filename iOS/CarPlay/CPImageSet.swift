
@available(iOS 12.0, *)
class CPImageSet : NSObject, NSSecureCoding {
  init(lightContentImage lightImage: UIImage, darkContentImage darkImage: UIImage)
  var lightContentImage: UIImage { get }
  var darkContentImage: UIImage { get }
}
