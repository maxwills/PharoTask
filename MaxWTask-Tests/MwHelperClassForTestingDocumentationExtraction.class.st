Class {
	#name : #MwHelperClassForTestingDocumentationExtraction,
	#superclass : #Object,
	#instVars : [
		'instanceVar1',
		'instanceVar2'
	],
	#classVars : [
		'classVar1',
		'classVar2'
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
	^ 'instanceMethod2 is here. Params: ', anObject1 asString, ' ', anObject2 asString
]
