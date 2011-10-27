//--Global import--
#import "NSMutableArray+QueueAdditions.h"



//--Inside some function--

// add 3 objects
[q enqueue:@"object1"];
[q enqueue:@"object2"];
[q enqueue:@"object3"];

[q peekHead];
[q peekTail];
[q peek:1];

// print them
NSLog(@"%@", [q dequeue] );
NSLog(@"%@", [q dequeue] );
NSLog(@"%@", [q dequeue] );
