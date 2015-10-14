/**
This class contains the implementation of the basic operations
*/
class Math {
    
    /**
    Sum operation (x + y)
    
    - parameter x: Left operand
    - parameter y: Right operand
    
    - returns: the sum of the operands
    */
    class func sum(x x: Float, y: Float) -> Float {
        return x + y
    }
    
    /**
    Subtract operation (x - y)
    
    - parameter x: Left operand
    - parameter y: Right operand
    
    - returns: the subtraction of the operands
    */
    class func subtract(x x: Float, y: Float) -> Float {
        return x - y
    }
    
    /**
    Multiply operation (x * y)
    
    - parameter x: Left operand
    - parameter y: Right operand
    
    - returns: the multiplication of the operands
    */
    class func multiply(x x: Float, y: Float) -> Float {
        return x * y
    }
    
    /**
    Division operation (x / y)
    
    - parameter x: Left operand
    - parameter y: Right operand
    
    - throws: an exception in case of a division by zero
    
    - returns: the division of the operands
    */
    class func divide(x x: Float, y: Float) throws -> Float {
        if y == 0.0 {
            throw Exception.DivideByZero
        }
        return x / y
    }
}

/**
Enumeration that contains the errors on operations
*/
enum Exception: ErrorType {
    /// Error thrown in case of a division by zero
    case DivideByZero
}
