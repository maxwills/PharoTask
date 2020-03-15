"
""I represent a link of a linked list""

""I hold anObject (linkValue) and a reference to the next link of the list. Also implement some recursive-traversing methods.""

""MwLinkedList relies on me""

""Example:""

| newLink |
	newLink := MwLinkedListLink new.
	newLink linkValue: 'theValue'.
	newLink nextLink: (MwLinkedListLink new). 
	newLink nextLink linkValue: 'nextLinkValue'.
	newLink nextLink linkValue ""shoudl be 'nextLinkValue'""

"
Class {
	#name : #MwLinkedListLink,
	#superclass : #Object,
	#instVars : [
		'nextLink',
		'linkValue'
	],
	#category : #MaxWTask
}

{ #category : #'set and get' }
MwLinkedListLink >> lastLink [
	"Returns the last connected link"
	nextLink ifNil: [ ^ self ] ifNotNil: [ ^ nextLink lastLink ]
]

{ #category : #'set and get' }
MwLinkedListLink >> linkValue [
	"Returns the value stored in the Link"
	^ linkValue 
]

{ #category : #'set and get' }
MwLinkedListLink >> linkValue: anObject [
	"Sets the value stored in the Link"
	linkValue := anObject  
]

{ #category : #'set and get' }
MwLinkedListLink >> nextLink [
	"Returns the nextLink"
	^ nextLink 
]

{ #category : #'set and get' }
MwLinkedListLink >> nextLink: aLink [
	"Sets the nextLink"
	nextLink := aLink 
]

{ #category : #'set and get' }
MwLinkedListLink >> nthNext: anInteger [
	"Gets the nth nextLink. Zero means returning self. Returns nil if there is no link"
	anInteger < 0 ifTrue:[ ^ nil ].
	anInteger = 0
		ifTrue: [ ^ self ]
		ifFalse: [ nextLink ifNil:[^ nil] ifNotNil:[^ nextLink nthNext: anInteger-1]]
]
