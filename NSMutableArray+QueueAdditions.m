
@implementation NSMutableArray (QueueAdditions) 

// Add to the tail of the queue (no one likes it when people cut in line!)
- (void) enqueue:(id)anObject {
    [self addObject:anObject];
    //this method automatically adds to the end of the array
}

- (id)dequeue {
    if ([self count] == 0) {
        return nil;
    }
    id queueObject = [[[self objectAtIndex:0] retain] autorelease];
    [self removeObjectAtIndex:0];       // beginning of the array is the back of the queue
    return queueObject;
}

- (id)peek:(int)index {
	if ([self count] == 0 || index < 0) {
        return nil;
    }
	return [[self objectAtIndex:index] retain];
}

- (id)peekHead
{
	// if there aren't any objects in the queue
	// peek returns nil, and we will too
	return [self peek:0];
}

- (id)peekTail
{
	// if 0 objects, we call peek:-1 which returns nil
	return [self peek:([self count]-1)];
}


- (int)empty {
	if ([self count] == 0) {
        return true;
    }
	else
	{
		return false;
	}
}

@end
