"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) designasd:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	classObject:		<Object>


    Implementation Points
"
Class {
	#name : #MwDocExtractor,
	#superclass : #Object,
	#instVars : [
		'classObject'
	],
	#category : #MaxWTask
}

{ #category : #behavior }
MwDocExtractor >> classObject: aClass [
	"Sets the instance variable"
	classObject := aClass 
]

{ #category : #behavior }
MwDocExtractor >> extractDoc: anObject [
	"Extracts the comments and documentation from an object. returns a string"
	"scope: class-variables  &  instance-variables"	
	^ anObject comment
	"self error: 'not implemented'"
]

{ #category : #behavior }
MwDocExtractor >> getCategoryName [
^ classObject category asString 
]

{ #category : #behavior }
MwDocExtractor >> getClassMethods [
"Returns a collection with the definion of each class Method."
| collectionResult |
collectionResult := OrderedCollection new.
(classObject class) methodsDo: [:each | collectionResult add: each asString].
^ collectionResult

]

{ #category : #behavior }
MwDocExtractor >> getClassName [
^ classObject asString
]

{ #category : #behavior }
MwDocExtractor >> getClassVariables [
"gets the documentation of the methods"
| collectionResult |
collectionResult := OrderedCollection new.
(classObject class) classPool keysDo: [:each | collectionResult add: each asString].
^ collectionResult

]

{ #category : #behavior }
MwDocExtractor >> getFullDocumentation [
	"Gets the complete documentation of the class"
	^{ 
'****** Class ******', String cr.
self getClassName.
String cr,'*******************',String cr.
String cr,'*** Category ***',String cr.
self getCategoryName.
String cr.
String cr,'*** Class Variables ***',String cr.
self getClassVariables asStringWithCr  .
String cr.
String cr,'*** Instance Variables ***',String cr.
self getInstanceVariables asStringWithCr .
String cr.
String cr,'*** Class Methods ***', String cr.
self getClassMethods  asStringWithCr.
String cr.
String cr,'*** Instance Methods ***',String cr.
self getInstanceMethods  asStringWithCr.
	} asStringWithCr
	

]

{ #category : #behavior }
MwDocExtractor >> getInstanceMethods [
"gets the documentation of the methods"
| collectionResult |
collectionResult := OrderedCollection new.
classObject methodsDo: [:each | collectionResult add: each asString].
^ collectionResult
]

{ #category : #behavior }
MwDocExtractor >> getInstanceVariables [
	"gets the documentation of the methods"
^ classObject instVarNames collect: [:each | each asString].
]
