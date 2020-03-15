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
	"Returns the last link"

	"scope: class-variables  &  instance-variables"

	nextLink ifNil: [ ^ self ] ifNotNil: [ ^ nextLink lastLink ]
]

{ #category : #'set and get' }
MwLinkedListLink >> linkValue [
	"Returns the value stored in the Link"
	"scope: class-variables  &  instance-variables"	
	^ linkValue 
]

{ #category : #'set and get' }
MwLinkedListLink >> linkValue: anObject [
	"Sets the value stored in the Link"
	"scope: class-variables  &  instance-variables"	
	linkValue := anObject  
]

{ #category : #'set and get' }
MwLinkedListLink >> nextLink [
	"Returns the nextLink"
	"scope: class-variables  &  instance-variables"	
	^ nextLink 
]

{ #category : #'set and get' }
MwLinkedListLink >> nextLink: aLink [
	"Sets the nextLink"
	"scope: class-variables  &  instance-variables"	
	nextLink := aLink 
]

{ #category : #'set and get' }
MwLinkedListLink >> nthNext: anInteger [
	"Gets the nth nextLink. Zero means returning self. Returns nil if there is no link"
	"scope: class-variables  &  instance-variables"	
	anInteger < 0 ifTrue:[ ^ nil ].
	anInteger = 0
		ifTrue: [ ^ self ]
		ifFalse: [ nextLink ifNil:[^ nil] ifNotNil:[^ nextLink nthNext: anInteger-1]]
]
