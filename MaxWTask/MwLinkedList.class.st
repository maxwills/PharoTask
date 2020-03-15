"
""I represent a linked list""

""I implement some basic list functionalities, while hiding the 'link-complexity' to the user""

""Collaborators: Relies on the MwLinkedListLink class (a link that holds data and a referent to the next link)""

""Example:""

| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 7. ""adds an item with value 7""
	(linkedList itemAt: 0) = 7. ""should be true""
"
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
	"Executes the specified block over each item of the list. Note: DO NOT MODIFY THE LIST WITHIN THE BLOCK!. Iterative implementation"			
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
   ^ (firstLink isNil)

			
]

{ #category : #'list-behavior' }
MwLinkedList >> itemAt: anInteger [
	"Returns the value of the item at the specified index"			
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
	self isEmpty ifTrue: [ self error: 'item could not be found' ].
	
	(firstLink linkValue) = anObject
		ifTrue: [ firstLink := firstLink nextLink . ^ nil]
		ifFalse: [ | current next|
			current := firstLink.
			next := firstLink nextLink.
			[ next ]
				whileNotNil: [ 
				   (next linkValue) = anObject
						ifTrue: [ current nextLink: next nextLink . ^ nil] "here is the 'deletion'"
						ifFalse:[ current := next. next := next nextLink ].
				]]. ^ nil
			 

			
]
