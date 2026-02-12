(line_comment) @comment
(block_comment) @comment

(using
  namespace: (ident) @module)

(type_name
  name: (ident) @type)
(type_name
  namespace: (ident) @module)

(object
  id: (ident) @variable)
(closure_expression
  name: (ident) @variable)
(lookup_expression (ident) @property)
(child_annotation
  (child_internal
    name: (ident) @variable))

(property
  name: (ident) @property)
(ext_adw_dialog_response
  id: (ident) @property)
(ext_adw_breakpoint
  property: (ident) @property)
(ext_combo_box_items
  id: (ident) @property)
(ext_accessibility
  name: (ident) @property)
(ext_layout
  name: (ident) @property)
(menu_attribute
  name: (ident) @property)
(ext_adw_breakpoint
  object: (ident) @property)

(signal
  handler: (ident) @function)

(escape_sequence) @string.escape

(integer_literal) @number
(hex_literal) @number
(float_literal) @number.float
(quoted) @string

(flags (ident) @constant)

((literal (ident) @constant.builtin)
  (#eq? @constant.builtin "null"))
((literal (ident) @boolean)
  (#any-of? @boolean "true" "false"))

(child_annotation
  child_type: (ident) @attribute)

"internal-child" @attribute

[
  "action"
  "response"
  "default"
] @attribute

"=" @operator

[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
  "<"
  ">"
] @punctuation.bracket

[
  ":"
  ";"
  "."
  ","
  "::"
  "|"
  "=>"
] @punctuation.delimiter

[
  "$"
  "_"
  "C_"
] @punctuation.special

"using" @keyword.import

(binding
  flags: (ident) @constant)
(ext_adw_dialog_response
  flags: (ident) @constant)

(binding
  flags: (ident) @constant.builtin
  (#any-of? @constant.builtin "inverted" "bidirectional" "no-sync-create" "sync-create"))
(ext_adw_dialog_response
  flags: (ident) @constant.builtin
  (#any-of? @constant.builtin "destructive" "suggested" "disabled"))

[
  "+"
  "-"
] @operator

[
  "template"
  "menu"
  "submenu"
  "section"
  "item"
  "accessibility"
  "styles"
  "bind"
  "bind-property"
  "responses"
  "condition"
  "setters"
  "items"
  "as"
  "expr"
  "mime-types"
  "patterns"
  "suffixes"
  "layout"
  "marks"
  "mark"
  "widgets"
  "strings"
  "translation-domain"
  "typeof"
  "offsets"
  "offset"
] @keyword
