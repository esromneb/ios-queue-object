#### Queue Object for iOS
This is a simple addition to NSMutableArray which gives you a queue object.  Use enqueue and dequeue to manage your first-in-first-out queue.  It can handle any kind of object.

_I found this code floating around on the internet, by no means am I claiming it for myself!!_

Example:

    // add 3 objects
    [q enqueue:@"object1"];
    [q enqueue:@"object2"];
    [q enqueue:@"object3"];

    // print them
    NSLog(@"%@", [q dequeue] );
    NSLog(@"%@", [q dequeue] );
    NSLog(@"%@", [q dequeue] );




