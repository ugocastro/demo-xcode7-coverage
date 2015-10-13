class Operation {
    
    class func sum(x x: Float, y: Float) -> Float {
        return x + y
    }
    
    class func sub(x x: Float, y: Float) -> Float {
        return x - y
    }
    
    class func mult(x x: Float, y: Float) -> Float {
        return x * y
    }
    
    class func div(x x: Float, y: Float) throws -> Float {
        if y == 0.0 {
            throw Exception.DivideByZero
        }
        return x / y
    }
}