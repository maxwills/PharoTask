Class {
	#name : #MwLinkedListTest,
	#superclass : #TestCase,
	#category : #'MaxWTask-Tests'
}

{ #category : #behavior }
MwLinkedListTest >> testAdd [
	"Verifies that an item can be added an retrieved from the list"
			
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	self assert: (linkedList itemAt: 0) equals: 1.
	
]

{ #category : #behavior }
MwLinkedListTest >> testCount [
	"Verifies that the item count of the list is the expected one"
	
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	self assert: (linkedList count) equals: 1.
	
]

{ #category : #behavior }
MwLinkedListTest >> testForeachItem [
	"Verifies that a block is executed for each element of the list"
			
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
	"Verifies that a list can be initialized properly"
	| linkedList |
	linkedList := MwLinkedList new.
	self assert: linkedList isNotNil.
	self assert: linkedList count equals: 0
]

{ #category : #behavior }
MwLinkedListTest >> testIsEmpty [
	"Verifies that list with no items 'isEmpty'"
			
	| linkedList |
	linkedList := MwLinkedList new.
	self assert: linkedList isEmpty.
	linkedList add: 1.
	self assert: (linkedList isEmpty) equals: false.
	linkedList remove: 1.
	self assert: linkedList isEmpty.
	
]

{ #category : #behavior }
MwLinkedListTest >> testItemAt [
	"Test if the item at the specified position is what is expected to be"
	"Note: this test relies in other method of the class: add"
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1. "item at 0"
	linkedList add: 'itemAt1'. "item at 1"
	self assert: (linkedList itemAt: 1) equals: 'itemAt1'.
	
]

{ #category : #behavior }
MwLinkedListTest >> testListAddAndRetrieveItem [
	"Verifies composed behavior"
			
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
		"Verifies composed behavior"
		
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	linkedList add: 'stringItem'.			
	linkedList add: nil.
	self assert: linkedList count equals: 3.
	
]

{ #category : #behavior }
MwLinkedListTest >> testListAddSingleItemAndCount [
	"Verifies composed behavior"
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	self assert: linkedList count equals: 1.
	
]

{ #category : #behavior }
MwLinkedListTest >> testListForeachItemAlternativeCount [
	"Verifies composed behavior. Tries to count the number of items by using the foreachItem message"	
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
MwLinkedListTest >> testListWithItemsNotEmpty [
"Verifies composed behavior"
	| linkedList |
	linkedList := MwLinkedList new.
	linkedList add: 1.
	self assert: linkedList isEmpty equals: false
]

{ #category : #behavior }
MwLinkedListTest >> testNewListCountIsZero [
	"Verifies that a new list item count is zero"
	| linkedList |
	linkedList := MwLinkedList new.
	self assert: linkedList count equals: 0
]

{ #category : #behavior }
MwLinkedListTest >> testNewListIsEmpty [
	"Verifies that a new list is empty"
	| linkedList |
	linkedList := MwLinkedList new.
	self assert: linkedList isEmpty equals: true
]

{ #category : #behavior }
MwLinkedListTest >> testRemove [
	"Verifies that the specified item is removed from the list"
			
	| linkedList itemToRemove itemFound|
	itemToRemove := 1234.
	linkedList := MwLinkedList new.
	linkedList add: 1.
	linkedList add: 'stringItem'.			
	linkedList add: itemToRemove.
	linkedList add: nil.
	
	self assert: linkedList count equals: 4.

	linkedList remove: itemToRemove.
	self assert: linkedList count equals: 3.

	itemFound := false.
	linkedList foreachItem: [ :x | (x = itemToRemove) ifTrue: [ itemFound := true ] ].
	self assert: itemFound equals: false
	
]
