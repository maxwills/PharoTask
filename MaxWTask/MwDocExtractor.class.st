"
""I represent a Documentation Generator/Extractor helper""

""I help retrieving classes implementation details for documentation (text generation)""

""Example:""

|docExtractor|
docExtractor := MwDocExtractor new.
docExtractor classObject: MwHelperClassForTestingDocumentationExtraction.
Transcript open.
Transcript clear.

Transcript show: docExtractor getFullDocumentation ""should open a clean transcript with the documentation""
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
MwDocExtractor >> classObject [
	"Gets the class Object"
	^classObject 
]

{ #category : #behavior }
MwDocExtractor >> classObject: aClass [
	"Sets the instance variable"
	classObject := aClass 
]

{ #category : #behavior }
MwDocExtractor >> getCategoryName [
"Returns a string with the Category name of the classObject"
^ classObject category asString 
]

{ #category : #behavior }
MwDocExtractor >> getClassMethods [
"Returns a collection of strings with the definion of each class Method."
| collectionResult |
collectionResult := OrderedCollection new.
(classObject class) methodsDo: [:each | collectionResult add: each asString].
^ collectionResult

]

{ #category : #behavior }
MwDocExtractor >> getClassName [
"Returns a string with the class name of the classObject"
^ classObject asString
]

{ #category : #behavior }
MwDocExtractor >> getClassVariables [
"Returns a list of strings with the names of each class variable"
| collectionResult |
collectionResult := OrderedCollection new.
(classObject class) classPool keysDo: [:each | collectionResult add: each asString].
^ collectionResult

]

{ #category : #behavior }
MwDocExtractor >> getFullDocumentation [
	"returns a string with the complete documentation of the class, in full 'ugly-unformatted-plain-text' format"
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
"Returns a collection of strings, with the 'documentation' of each instance method"
| collectionResult |
collectionResult := OrderedCollection new.
classObject methodsDo: [:each | collectionResult add: each asString].
^ collectionResult
]

{ #category : #behavior }
MwDocExtractor >> getInstanceVariables [
"Returns a list of strings with the names of each instance variable"
^ classObject instVarNames collect: [:each | each asString].
]
