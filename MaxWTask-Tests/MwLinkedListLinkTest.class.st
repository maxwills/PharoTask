Class {
	#name : #MwLinkedListLinkTest,
	#superclass : #TestCase,
	#category : #'MaxWTask-Tests'
}

{ #category : #tests }
MwLinkedListLinkTest >> testLastLink [
	"Verifoes that the last link is the expected one"
	"scope: class-variables  &  instance-variables"	
	| firstLink secondLink thirdLink |
	firstLink := MwLinkedListLink new.
	secondLink := MwLinkedListLink new.
	thirdLink := MwLinkedListLink new.
	self assert: (firstLink lastLink) equals: firstLink.
	firstLink nextLink: secondLink.
	secondLink nextLink: thirdLink.
	self assert: (firstLink lastLink) equals: thirdLink
	
	
]

{ #category : #tests }
MwLinkedListLinkTest >> testLinkValue [
	"Verifies that the linkValue getter/setter works"
	
	| aLink aValue |
	aLink := MwLinkedListLink new.
	aValue := 'aValueString'.
	aLink linkValue: aValue.
	self assert: (aLink linkValue) equals: aValue
	
	
]

{ #category : #tests }
MwLinkedListLinkTest >> testNextLink [
	"Verifies that the nextLink getter/setter works"
	
	| aLink otherLink |
	aLink := MwLinkedListLink new.
	otherLink := MwLinkedListLink new.
	aLink nextLink: otherLink.
	self assert: (aLink nextLink) equals: otherLink
	
	
]

{ #category : #tests }
MwLinkedListLinkTest >> testNthNext [
	"Verifies that the nthNext returns the expected link"
	| firstLink secondLink thirdLink |
	firstLink := MwLinkedListLink new.
	secondLink := MwLinkedListLink new.
	thirdLink := MwLinkedListLink new.
	self assert: (firstLink nthNext: 0) equals: firstLink.
	firstLink nextLink: secondLink.
	secondLink nextLink: thirdLink.
	self assert: (firstLink nthNext: 1) equals: secondLink .
	self assert: (firstLink nthNext: 2) equals: thirdLink
	
	
]
