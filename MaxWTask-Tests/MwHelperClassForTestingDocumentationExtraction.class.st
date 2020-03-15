"
Class part:
""I am a class that does nothing, but I have predictable members which can be queried for testing""

Responsibility and Collaborator:
""My class/instance variables/methods will are expected to be fixed for MwDocExtratorTest""

"
Class {
	#name : #MwHelperClassForTestingDocumentationExtraction,
	#superclass : #Object,
	#instVars : [
		'instanceVar1',
		'instanceVar2'
	],
	#classVars : [
		'ClassVar1',
		'ClassVar2'
	],
	#category : #'MaxWTask-Tests'
}

{ #category : #helpers }
MwHelperClassForTestingDocumentationExtraction class >> classMethod1 [
	"comment stating purpose of class-side message"
	"scope: class-variables  &  class-instance-variables"	
^'classMethod1 is here'
]

{ #category : #helpers }
MwHelperClassForTestingDocumentationExtraction class >> classMethod2 [
	"comment stating purpose of class-side message"
	"scope: class-variables  &  class-instance-variables"	
^'classMethod2 is here'
]

{ #category : #helpers }
MwHelperClassForTestingDocumentationExtraction >> instanceMethod1 [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	^ 'instanceMethod1 is here'
]

{ #category : #helpers }
MwHelperClassForTestingDocumentationExtraction >> instanceMethod2: anObject [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	^ 'instanceMethod2 is here. Param: ', anObject asString
]

{ #category : #helpers }
MwHelperClassForTestingDocumentationExtraction >> instanceMethod3: anObject1 anotherParam: anObject2 [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	^ 'instanceMethod3 is here. Params: ', anObject1 asString, ' ', anObject2 asString
]
