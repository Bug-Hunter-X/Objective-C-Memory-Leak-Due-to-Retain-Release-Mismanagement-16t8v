The solution involves correctly managing the retain count of `myString`. Here's the corrected code:

```objectivec
@interface MyClass : NSObject
@property (nonatomic, strong) NSString *myString; //Use strong in ARC
@end

@implementation MyClass
// dealloc is no longer needed in ARC
@end

// ... later in your code ...
MyClass *obj = [[MyClass alloc] init];
obj.myString = @"Hello"; //The string is now managed by ARC
[obj release]; //Only needed if not using ARC

```

If you are not using ARC (Automatic Reference Counting), ensure that `myString`'s retain count is properly managed.  Using `copy` instead of `retain` in the property declaration can also prevent leaks in some scenarios.

If using ARC, the compiler will handle retain and release automatically, so manually managing the retain count is not required. Using the `strong` keyword instead of `retain` will ensure the compiler handles this appropriately.