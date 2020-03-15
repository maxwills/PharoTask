Class {
	#name : #MwLinkedList,
	#superclass : #Object,
	#instVars : [
		'firstLink'
	],
	#category : #MaxWTask
}

{ #category : #'list-behavior' }
MwLinkedList >> add: anObject [
	"Adds(appends) an object to the list"
	"scope: class-variables  &  instance-variables"
	| newLink |
	newLink := MwLinkedListLink new.
	newLink linkValue: anObject.
	firstLink
		ifNil: [ firstLink := newLink ]
		ifNotNil: [ firstLink lastLink nextLink: newLink ]
			
]

{ #category : #'list-behavior' }
MwLinkedList >> count [
	"Counts the element of the linked list. Iterative implementation"

	"scope: class-variables  &  instance-variables"

	firstLink
		ifNil: [ ^ 0 ]
		ifNotNil: [ | currentLink counter |
			counter := 0.
			currentLink := firstLink.
			[ currentLink ]
				whileNotNil: [ 
				   counter := counter + 1.
					currentLink := currentLink nextLink ].
			^ counter ]
]

{ #category : #'list-behavior' }
MwLinkedList >> foreachItem: aBlock [
	"Executes the specified block over each item of the list. DO NOT MODIFY THE LIST WITHIN THE BLOCK!. Iterative implementation"
	"scope: class-variables  &  instance-variables"				
	firstLink
		ifNotNil: [ | currentLink |
			currentLink := firstLink.
			[ currentLink ]
				whileNotNil: [ aBlock value: currentLink linkValue.
					currentLink := currentLink nextLink ].
			]
]

{ #category : #'list-behavior' }
MwLinkedList >> isEmpty [  
	"Returns true if the list is empty"

	"scope: class-variables  &  instance-variables"
   ^ (firstLink isNil)

			
]

{ #category : #'list-behavior' }
MwLinkedList >> itemAt: anInteger [
	"Returns the value of the item at the specified index"
	"scope: class-variables  &  instance-variables"				
	firstLink
		ifNotNil: [ | linkAtIndex |
			linkAtIndex := firstLink nthNext: anInteger.
			linkAtIndex ifNotNil: [ ^linkAtIndex linkValue ]
		].
	self error:'Index out of bounds error' "Index out of bounds error"
]

{ #category : #'list-behavior' }
MwLinkedList >> remove: anObject [ 
	"Removes the first occurrence of an object from the list. Iterative implementation"

	"scope: class-variables  &  instance-variables"

	self isEmpty ifTrue: [ self error: 'item could not be found' ].
	
	(firstLink linkValue) = anObject
		ifTrue: [ firstLink := firstLink nextLink . ^ nil]
		ifFalse: [ | current next|
			current := firstLink.
			next := firstLink nextLink.
			[ next ]
				whileNotNil: [ 
				   (next linkValue) = anObject
						ifTrue: [ current nextLink: next nextLink . ^ nil]
						ifFalse:[ current := next. next := next nextLink ].
				]]. ^ nil
			 

			
]
