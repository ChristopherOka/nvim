;; extends

(
 (variable_declarator
   name: (identifier) @variable_declaration 
 ) 
 (#set! "priority" 128)
)

(
 (variable_declarator
  name: (array_pattern
    (identifier) @declaration_array_member
      ))
 (#set! "priority" 128)
 )

(
(variable_declarator
   name: (object_pattern
    (pair_pattern 
     key: (property_identifier)
     value: (identifier) @declaration_object_member
    )
  )
)
(#set! "priority" 128)
 )
