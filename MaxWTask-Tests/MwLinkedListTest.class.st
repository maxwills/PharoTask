Class {
	#name : #MwLinkedListTest,
	#superclass : #TestCase,
	#category : #'MaxWTask-Tests'
}

{ #category : #behavior }
MwLinkedListTest >> testAdd [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	self assert: (linkedList itemAt: 0) equals: 1.
	
]

{ #category : #behavior }
MwLinkedListTest >> testCount [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	self assert: (linkedList count) equals: 1.
	
]

{ #category : #behavior }
MwLinkedListTest >> testForeachItem [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList sum |
	sum := 0.
	linkedList := MwLinkedList new.
	linkedList add: 1.
	linkedList add: 4.			
	linkedList add: 10.
	linkedList foreachItem: [ :x | sum := sum + x ].
	self assert: sum equals: 15.
	
]

{ #category : #behavior }
MwLinkedListTest >> testInitialization [
	"comment statiasdng purpose of instance-side message"
	| linkedList |
	linkedList := MwLinkedList new.
	self assert: linkedList isNotNil
]

{ #category : #behavior }
MwLinkedListTest >> testIsEmpty [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList |
	linkedList := MwLinkedList new.
	self assert: linkedList isEmpty.
	linkedList add: 1.
	self assert: (linkedList isEmpty) equals: false.
	linkedList remove: 1.
	self assert: linkedList isEmpty.
	
]

{ #category : #behavior }
MwLinkedListTest >> testListAddAndRetrieveItem [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	linkedList add: 'stringItem'.			
	linkedList add: 3.
	linkedList add: nil.
	linkedList add: 5.
	self assert: (linkedList itemAt: 2) equals: 3.
	
]

{ #category : #behavior }
MwLinkedListTest >> testListAddItemsAndCount [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	linkedList add: 'stringItem'.			
	linkedList add: nil.
	self assert: linkedList count equals: 3.
	
]

{ #category : #behavior }
MwLinkedListTest >> testListAddSingleItemAndCount [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	self assert: linkedList count equals: 1.
	
]

{ #category : #behavior }
MwLinkedListTest >> testListForeachItemAlternativeCount [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList counter|
	counter := 0.
	linkedList := MwLinkedList new.
	linkedList add: 1.
	linkedList add: 'stringItem'.			
	linkedList add: nil.
	linkedList foreachItem: [:x | counter:= counter + 1 ].
	self assert: linkedList count equals: counter.
	
]

{ #category : #behavior }
MwLinkedListTest >> testListRemoveItem [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList item itemFound|
	item := 1234.
	linkedList := MwLinkedList new.
	linkedList add: 1.
	linkedList add: 'stringItem'.			
	linkedList add: item.
	linkedList add: nil.
	
	self assert: linkedList count equals: 4.

	linkedList remove: item.
	self assert: linkedList count equals: 3.

	itemFound := false.
	linkedList foreachItem: [ :x | (x = item) ifTrue: [ itemFound := true ] ].
	self assert: itemFound equals: false
	
]

{ #category : #behavior }
MwLinkedListTest >> testListWithItemsNotEmpty [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	self assert: linkedList isEmpty equals: false
]

{ #category : #behavior }
MwLinkedListTest >> testNewListCountIsZero [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList |
	linkedList := MwLinkedList new.
	self assert: linkedList count equals: 0
]

{ #category : #behavior }
MwLinkedListTest >> testNewListIsEmpty [
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
			
	| linkedList |
	linkedList := MwLinkedList new.
	self assert: linkedList isEmpty equals: true
]
