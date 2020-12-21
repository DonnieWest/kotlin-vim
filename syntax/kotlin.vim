" Vim syntax file
" Language: Kotlin
" Maintainer: Alexander Udalov
" Latest Revision: 13 July 2020

if exists('b:current_syntax')
    finish
endif

syn keyword ktStatement break continue return
syn keyword ktConditional if else when
syn keyword ktRepeat do for while
syn keyword ktOperator in is by
syn keyword ktKeyword get set out super this where
syn keyword ktException try catch finally throw

syn keyword ktInclude import package

" The following is generated by generate-stdlib-class-names.main.kts
syn keyword ktType AbstractCollection AbstractCoroutineContextElement AbstractCoroutineContextKey AbstractDoubleTimeSource AbstractIterator AbstractList AbstractLongTimeSource
syn keyword ktType AbstractMap AbstractMutableCollection AbstractMutableList AbstractMutableMap AbstractMutableSet AbstractSet AccessDeniedException Accessor Annotation
syn keyword ktType AnnotationRetention AnnotationTarget Any Appendable ArithmeticException Array ArrayDeque ArrayList AssertionError Boolean BooleanArray BooleanIterator
syn keyword ktType BuilderInference Byte ByteArray ByteIterator CallsInPlace CancellationException Char CharArray CharCategory CharDirectionality CharIterator CharProgression
syn keyword ktType CharRange CharSequence CharacterCodingException Charsets ClassCastException Cloneable ClosedFloatingPointRange ClosedRange Collection Comparable Comparator
syn keyword ktType ConcurrentModificationException ConditionalEffect Continuation ContinuationInterceptor ContractBuilder CoroutineContext DeepRecursiveFunction DeepRecursiveScope
syn keyword ktType Delegates Deprecated DeprecatedSinceKotlin DeprecationLevel Destructured Double DoubleArray DoubleIterator DslMarker Duration DurationUnit Effect Element
syn keyword ktType EmptyCoroutineContext Entry Enum Error Exception Experimental ExperimentalContracts ExperimentalJsExport ExperimentalMultiplatform ExperimentalStdlibApi
syn keyword ktType ExperimentalTime ExperimentalTypeInference ExperimentalUnsignedTypes ExtensionFunctionType FileAlreadyExistsException FileSystemException FileTreeWalk
syn keyword ktType FileWalkDirection Float FloatArray FloatIterator Function Function0 Function1 Function10 Function11 Function12 Function13 Function14 Function15 Function16
syn keyword ktType Function17 Function18 Function19 Function2 Function20 Function21 Function22 Function3 Function4 Function5 Function6 Function7 Function8 Function9 FunctionN
syn keyword ktType Getter Grouping HashMap HashSet IllegalArgumentException IllegalStateException IndexOutOfBoundsException IndexedValue Int IntArray IntIterator IntProgression
syn keyword ktType IntRange InvocationKind Iterable Iterator JsExport JsName JvmDefault JvmDefaultWithoutCompatibility JvmField JvmMultifileClass JvmName JvmOverloads JvmStatic
syn keyword ktType JvmSuppressWildcards JvmSynthetic JvmWildcard KAnnotatedElement KCallable KClass KClassifier KDeclarationContainer KFunction KMutableProperty KMutableProperty0
syn keyword ktType KMutableProperty1 KMutableProperty2 KParameter KProperty KProperty0 KProperty1 KProperty2 KType KTypeParameter KTypeProjection KVariance KVisibility Key Kind
syn keyword ktType KotlinNullPointerException KotlinReflectionNotSupportedError KotlinVersion Lazy LazyThreadSafetyMode Level LinkedHashMap LinkedHashSet List ListIterator Long
syn keyword ktType LongArray LongIterator LongProgression LongRange Map MatchGroup MatchGroupCollection MatchNamedGroupCollection MatchResult Metadata Monotonic MustBeDocumented
syn keyword ktType MutableCollection MutableEntry MutableIterable MutableIterator MutableList MutableListIterator MutableMap MutableSet NoSuchElementException NoSuchFileException
syn keyword ktType NoWhenBranchMatchedException NotImplementedError Nothing NullPointerException Number NumberFormatException ObservableProperty OnErrorAction OptIn
syn keyword ktType OptionalExpectation OverloadResolutionByLambdaReturnType Pair ParameterName PropertyDelegateProvider PublishedApi PurelyImplements Random RandomAccess
syn keyword ktType ReadOnlyProperty ReadWriteProperty Regex RegexOption Repeatable ReplaceWith RequiresOptIn RestrictsSuspension Result Retention Returns ReturnsNotNull
syn keyword ktType RuntimeException Sequence SequenceScope Set Setter SharedImmutable Short ShortArray ShortIterator SimpleEffect SinceKotlin Strictfp String StringBuilder Suppress
syn keyword ktType Synchronized Target TestTimeSource ThreadLocal Throwable Throws TimeMark TimeSource TimedValue Transient Triple TypeCastException Typography UByte UByteArray
syn keyword ktType UByteIterator UInt UIntArray UIntIterator UIntProgression UIntRange ULong ULongArray ULongIterator ULongProgression ULongRange UShort UShortArray UShortIterator
syn keyword ktType UninitializedPropertyAccessException Unit UnsafeVariance UnsupportedOperationException UseExperimental Volatile

syn keyword ktModifier annotation companion enum inner internal private protected public abstract final open override sealed vararg dynamic expect actual
syn keyword ktStructure class object interface typealias nextgroup=ktClassName skipwhite skipempty
syn keyword ktDeclStruct val var
syn keyword ktKeyword constructor init

syn keyword ktStructure fun nextgroup=ktItemName skipwhite skipempty

syn keyword ktReservedKeyword typeof

syn keyword ktBoolean true false
syn keyword ktConstant null

syn keyword ktModifier data tailrec lateinit reified external inline noinline crossinline const operator infix suspend

syn match ktOperator "\v\?:|::|\<\=? | \>\=?|[!=]\=\=?|<as>\??|[-!%&*+/|]|\.\."

syn keyword ktTodo TODO FIXME XXX contained
syn match ktShebang "\v^#!.*$"
syn match ktLineComment "\v//.*$" contains=ktTodo,@Spell
syn region ktComment matchgroup=ktCommentMatchGroup start="/\*" end="\*/" contains=ktComment,ktTodo,@Spell

syn region ktDocComment start="/\*\*" end="\*/" contains=ktDocTag,ktTodo,@Spell
syn match ktDocTag "\v\@(author|constructor|receiver|return|since|suppress)>" contained
syn match ktDocTag "\v\@(exception|param|property|throws|see|sample)>\s*\S+" contains=ktDocTagParam contained
syn match ktDocTagParam "\v(\s|\[)\S+" contained
syn match ktComment "/\*\*/"
syn match ktItemName "\v([a-zA-Z_][a-zA-Z0-9_]*|`[^`]+`)" contained
syn match ktClassName "\v[A-Z][a-zA-Z0-9_]*" contained

syn match ktFunctionCall "\v([[:alpha:]_][[:alnum:]_]*|`[^`]+`)(\(|\<)"he=e-1,me=e-1
syn match ktFunctionCall "\v([a-z_][[:alnum:]_]*|`[^`]+`) \{"he=e-2,me=e-2
syn match ktConstructorCall "\v[A-Z][[:alnum:]_]*(\(|\<)"he=e-1,me=e-1

syn match ktTypeParameter "\v\<\w+(, \w+)*\>"hs=s+1,he=e-1,ms=s+1,me=e-1
syn match ktTypeParameter "\v\<\w+((, )?\w+)*\<"hs=s+1,he=e-1,ms=s+1,me=e-1

" arguments, fields, locals, return types
syn match ktType "\v\:\s?\w+\s?[\<\>\)\,\=\s\{]"hs=s+1,ms=s+1,he=e-1,me=e-1

syn match ktSpecialCharError "\v\\." contained
syn match ktSpecialChar "\v\\([tbnr'"$\\]|u\x{4})" contained
syn region ktString start='"' skip='\\"' end='"' contains=ktSimpleInterpolation,ktComplexInterpolation,ktSpecialChar,ktSpecialCharError
syn region ktString start='"""' end='""""*' contains=ktSimpleInterpolation,ktComplexInterpolation
syn match ktCharacter "\v'[^']*'" contains=ktSpecialChar,ktSpecialCharError
syn match ktCharacter "\v'\\''" contains=ktSpecialChar
syn match ktCharacter "\v'[^\\]'"

" TODO: highlight label in 'this@Foo'
syn match ktAnnotation "\v(\w)@<!\@[[:alnum:]_.]*(:[[:alnum:]_.]*)?"
syn match ktLabel "\v\w+\@"

syn match ktSimpleInterpolation "\v\$\h\w*" contained
syn region ktComplexInterpolation matchgroup=ktComplexInterpolationBrace start="\v\$\{" end="\v\}" contains=ALLBUT,ktSimpleInterpolation,ktTodo,ktSpecialCharError,ktSpecialChar,ktDocTag,ktDocTagParam

syn match ktNumber "\v<\d+[_[:digit:]]*(uL?|UL?|[LFf])?"
syn match ktNumber "\v<0[Xx]\x+[_[:xdigit:]]*(uL?|UL?|L)?"
syn match ktNumber "\v<0[Bb][01]+[_01]*(uL?|UL?|L)?"
syn match ktFloat "\v<\d*(\d[eE][-+]?\d+|\.\d+([eE][-+]?\d+)?)[Ff]?"

syn match ktEscapedName "\v`.*`"

syn match ktExclExcl "!!"
syn match ktArrow "->"

syn match ktLParen /(/
syn match ktRParen /)/

syn match ktIdentifier "_?[[:alpha:]]\+[[:digit:]]*" contained
syn match ktArgs "(.*)" contains=ktString,ktNumber,ktIdentifier,ktLParen,ktRParen,ktType,ktOperator,ktDeclStruct
syn match ktFunction "\w\+(.*)" contains=ktArgs

hi def link ktFunction Function
hi def link ktIdentifier Identifier

hi def link ktStatement Statement
hi def link ktConditional Conditional
hi def link ktRepeat Repeat
hi def link ktOperator Operator
hi def link ktKeyword Keyword
hi def link ktException Exception
hi def link ktReservedKeyword Error

hi def link ktInclude Include

hi def link ktType Type
hi def link ktTypeParameter Type
hi def link ktClassName Type
hi def link ktModifier StorageClass
hi def link ktStructure Structure
hi def link ktDeclStruct Structure
hi def link ktTypedef Typedef
hi def link ktItemName Function
hi def link ktFunctionCall Function
hi def link ktConstructorCall Type

hi def link ktBoolean Boolean
hi def link ktConstant Constant

hi def link ktTodo Todo
hi def link ktShebang Comment
hi def link ktLineComment Comment
hi def link ktComment Comment
hi def link ktCommentMatchGroup Comment
hi def link ktDocComment Comment
hi def link ktDocTag Special
hi def link ktDocTagParam Identifier

hi def link ktSpecialChar SpecialChar
hi def link ktSpecialCharError Error
hi def link ktString String
hi def link ktCharacter Character

hi def link ktAnnotation Identifier
hi def link ktLabel Identifier

hi def link ktSimpleInterpolation Identifier
hi def link ktComplexInterpolationBrace Identifier

hi def link ktNumber Number
hi def link ktFloat Float

hi def link ktExclExcl Special
hi def link ktArrow Structure

let b:current_syntax = 'kotlin'
