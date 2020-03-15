Class {
	#name : #MwDocExtractorTest,
	#superclass : #TestCase,
	#category : #'MaxWTask-Tests'
}

{ #category : #tests }
MwDocExtractorTest >> testClassObject [
	"Verifies that the classObject getter and setter work"
	| classToExtractDocumentation docExtractor|
	classToExtractDocumentation := MwHelperClassForTestingDocumentationExtraction .
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.
self assert: (docExtractor classObject) equals: classToExtractDocumentation
	
	
]

{ #category : #tests }
MwDocExtractorTest >> testGetCategoryName [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	| classToExtractDocumentation docExtractor|
	classToExtractDocumentation := MwHelperClassForTestingDocumentationExtraction .
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.
self assert: (docExtractor getCategoryName) equals: 'MaxWTask-Tests'
	
	
]

{ #category : #tests }
MwDocExtractorTest >> testGetClassMethods [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	| classToExtractDocumentation docExtractor|
	classToExtractDocumentation := MwHelperClassForTestingDocumentationExtraction .
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.

self assert: (docExtractor getClassMethods) size equals: 2
	
]

{ #category : #tests }
MwDocExtractorTest >> testGetClassName [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	| classToExtractDocumentation docExtractor|
	classToExtractDocumentation := Collection.
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.
self assert: (docExtractor getClassName) equals: 'Collection'
	
	
]

{ #category : #tests }
MwDocExtractorTest >> testGetClassVariables [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	| classToExtractDocumentation docExtractor expectedClassVariable1 expectedClassVariable2|
	classToExtractDocumentation := MwHelperClassForTestingDocumentationExtraction .
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.
	expectedClassVariable1 := 'ClassVar1'.
	expectedClassVariable2 := 'ClassVar2'.

self assert: (((docExtractor getClassVariables ) includes: expectedClassVariable1)
					and: 	((docExtractor getClassVariables) includes: expectedClassVariable2))
	
]

{ #category : #tests }
MwDocExtractorTest >> testGetClassVariablesSearchingWrongNames [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	| classToExtractDocumentation docExtractor expectedClassVariable1|
	classToExtractDocumentation := MwHelperClassForTestingDocumentationExtraction .
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.
	expectedClassVariable1 := 'classVar1WrongVarName'.

self assert: false equals: ((docExtractor getClassVariables) includes: expectedClassVariable1)
					
	
]

{ #category : #tests }
MwDocExtractorTest >> testGetFullDocumentation [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	| classToExtractDocumentation docExtractor|
	classToExtractDocumentation := Collection.
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.
self assert: (docExtractor getFullDocumentation) isNotNil
	
	
]

{ #category : #tests }
MwDocExtractorTest >> testGetInstanceMethods [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	| classToExtractDocumentation docExtractor|
	classToExtractDocumentation := MwHelperClassForTestingDocumentationExtraction .
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.

self assert: (docExtractor getInstanceMethods) size equals: 3
	
]

{ #category : #tests }
MwDocExtractorTest >> testGetInstanceVariables [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	| classToExtractDocumentation docExtractor expectedInstanceVariable1 expectedInstanceVariable2|
	classToExtractDocumentation := MwHelperClassForTestingDocumentationExtraction .
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.
	expectedInstanceVariable1 := 'instanceVar1'.
	expectedInstanceVariable2 := 'instanceVar2'.

self assert: (((docExtractor getInstanceVariables) includes: expectedInstanceVariable1)
					and: 	((docExtractor getInstanceVariables) includes: expectedInstanceVariable2))
	
]

{ #category : #tests }
MwDocExtractorTest >> testGetInstanceVariablesSearchingWrongNames [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	| classToExtractDocumentation docExtractor expectedInstanceVariable1|
	classToExtractDocumentation := MwHelperClassForTestingDocumentationExtraction .
	docExtractor := MwDocExtractor new.
	docExtractor classObject: classToExtractDocumentation.
	expectedInstanceVariable1 := 'instanceVar1WrongVarName'.

self assert: false equals: ((docExtractor getInstanceVariables) includes: expectedInstanceVariable1)
					
	
]
