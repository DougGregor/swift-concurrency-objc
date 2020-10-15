
@available(iOS 14.0, *)
extension MPSGraph {
  func identity(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func exponent(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func exponentBase2(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func exponentBase10(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func logarithm(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func logarithmBase2(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func logarithmBase10(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func square(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func squareRoot(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func reverseSquareRoot(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func reciprocal(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func absolute(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func negative(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func sign(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func signbit(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func ceil(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func floor(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func round(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func rint(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func sin(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func cos(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func tan(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func sinh(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func cosh(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func tanh(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func asin(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func acos(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func atan(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func asinh(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func acosh(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func atanh(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func not(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func isInfinite(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func isFinite(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func isNaN(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func erf(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func addition(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func subtraction(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func multiplication(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func division(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func modulo(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func power(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func minimum(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func maximum(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func equal(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func notEqual(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func lessThan(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func lessThanOrEqualTo(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func greaterThan(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func greaterThanOrEqualTo(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func logicalAND(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func logicalOR(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func logicalNAND(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func logicalNOR(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func logicalXOR(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func logicalXNOR(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func atan2(withPrimaryTensor primaryTensor: MPSGraphTensor, secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func select(predicate predicateTensor: MPSGraphTensor, trueTensor truePredicateTensor: MPSGraphTensor, falseTensor falseSelectTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func clamp(_ tensor: MPSGraphTensor, min minValueTensor: MPSGraphTensor, max maxValueTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func divisionNoNaN(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func floorModulo(_ primaryTensor: MPSGraphTensor, _ secondaryTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
}
