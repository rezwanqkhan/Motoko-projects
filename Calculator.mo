// A simple Calculator project

// Canistor  =>  Smart contract 
    
    // var   -> mutable(changeable)
    // let   -> immutable 

actor Calculator{
var num: Int = 0;

// addition function
public func addition(input: Int) : async Int {
  num += input;
  num
};

// Subtraction
public func Subtraction(input: Int) : async Int{
  num -= input;
  num
};

// Multiplication
public func Multiplication(input: Int): async Int{
  num *= input;
  num
};

// Division
public func Division(input: Int) : async ?Int{
  // in case division by zero error
  if(input == 0){
    null
  } else {
    num /= input;
    ?num
  };

};

//Clean
public func Clean() : async() { 
  num := 0;
};

};