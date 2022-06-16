<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1654962235637" ID="ID_23535358" MODIFIED="1655134069653" TEXT="OpenAPI3">
<font BOLD="true" NAME="SansSerif" SIZE="16"/>
<node CREATED="1654962455880" ID="ID_610974762" MODIFIED="1654964369606" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      field: openapi (*)
    </p>
    <p>
      type: string<br />
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654962682801" ID="ID_1279989072" MODIFIED="1654962683533" TEXT="This string MUST be the semantic version number of the OpenAPI Specification version that the OpenAPI document uses"/>
<node CREATED="1654962693958" ID="ID_595877461" MODIFIED="1654962699214">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Example:
    </p>
    <pre style="background-color: #ffffff; color: #080808; font-family: JetBrains Mono,monospace; font-size: 9.6pt"><font color="#0033b3">openapi</font>: 3.0.3</pre>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1654962710777" ID="ID_554541019" MODIFIED="1654964370482" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      field: info (*)
    </p>
    <p>
      type: info object
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654962742444" ID="ID_1988703082" MODIFIED="1654962742444" TEXT="Provides metadata about the API"/>
<node CREATED="1654963432013" ID="ID_1138325796" MODIFIED="1654963440441" TEXT="Specs">
<node CREATED="1654963461159" ID="ID_854501416" MODIFIED="1654963466752" TEXT="title (*): string"/>
<node CREATED="1654963473751" ID="ID_1346449682" MODIFIED="1654963478348" TEXT="version (*): string"/>
<node CREATED="1654963529805" ID="ID_1771873676" MODIFIED="1654963531794" TEXT="description: string">
<node CREATED="1654963537833" ID="ID_1290591867" MODIFIED="1654963537833" TEXT="A short description of the API. CommonMark syntax MAY be used for rich text representation."/>
</node>
<node CREATED="1654963541693" ID="ID_79453905" MODIFIED="1654963542726" TEXT="..."/>
</node>
</node>
<node CREATED="1654962753353" ID="ID_1449368975" MODIFIED="1655048645128" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      field: servers
    </p>
    <p>
      type: [server object]
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654963588904" ID="ID_752565542" MODIFIED="1655166416619" TEXT="Desc">
<node CREATED="1654962924095" ID="ID_1115646824" MODIFIED="1654962924095" TEXT="An array of Server Objects, which provide connectivity information to a target server"/>
<node CREATED="1654962935622" ID="ID_1444637763" MODIFIED="1654962951483" TEXT=" the default value would be a Server Object with a url value of /."/>
</node>
<node CREATED="1654963594048" ID="ID_1599376348" MODIFIED="1654963596549" TEXT="Specs">
<node CREATED="1654963792115" ID="ID_83753115" MODIFIED="1654963796933" TEXT="url (*): string"/>
<node CREATED="1654963820865" ID="ID_1497606369" MODIFIED="1654963822590" TEXT="description: string"/>
<node CREATED="1654963935203" ID="ID_1102335211" MODIFIED="1654963961634" TEXT="variables: map[string, server variable object]">
<node CREATED="1654964049751" ID="ID_794566277" MODIFIED="1654964049751" TEXT="An object representing a Server Variable for server URL template substitution."/>
<node CREATED="1654964051598" ID="ID_1050764233" MODIFIED="1654964053200" TEXT="Specs">
<node CREATED="1654964081855" ID="ID_433337854" MODIFIED="1654964088998" TEXT="default (*): string">
<node CREATED="1654964096952" ID="ID_1989672925" MODIFIED="1654964096952" TEXT="The default value to use for substitution"/>
</node>
<node CREATED="1654964101053" ID="ID_1604051227" MODIFIED="1654964103832" TEXT="enum: [string]">
<node CREATED="1654964112461" ID="ID_1863148529" MODIFIED="1654964112461" TEXT="An enumeration of string values to be used if the substitution options are from a limited set. The array SHOULD NOT be empty."/>
</node>
<node CREATED="1654964116590" ID="ID_372465531" MODIFIED="1654964118252" TEXT="description: string"/>
</node>
</node>
</node>
<node CREATED="1654964121704" ID="ID_387563005" MODIFIED="1654964127831" TEXT="Examples">
<node CREATED="1654964156587" ID="ID_1419994968" MODIFIED="1654964225953">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      servers:
    </p>
    <p>
      - url: https://{username}.gigantic-server.com:{port}/{basePath}
    </p>
    <p>
      &#160;&#160;description: The production API server
    </p>
    <p>
      &#160;&#160;variables:
    </p>
    <p>
      &#160;&#160;&#160;&#160;username:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;# note! no enum here means it is an open value
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;default: demo
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;description: this value is assigned by the service provider, in this example `gigantic-server.com`
    </p>
    <p>
      &#160;&#160;&#160;&#160;port:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;enum:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- '8443'
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- '443'
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;default: '8443'
    </p>
    <p>
      &#160;&#160;&#160;&#160;basePath:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;# open meaning there is the opportunity to use special base paths as assigned by the provider, default is `v2`
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;default: v2
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1654962958541" ID="ID_192241147" MODIFIED="1654964374699" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      field: paths (*)
    </p>
    <p>
      type: paths objects
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654962982456" ID="ID_549075420" MODIFIED="1654962982456" TEXT="The available paths and operations for the API."/>
<node CREATED="1654992312945" ID="ID_1914588313" MODIFIED="1654992312945" TEXT="Holds the relative paths to the individual endpoints and their operations. The path is appended to the URL from the Server Object in order to construct the full URL. The Paths MAY be empty, due to ACL constraints."/>
<node CREATED="1654992317338" ID="ID_288948395" MODIFIED="1654992318835" TEXT="Specs">
<node CREATED="1654992332115" ID="ID_855356618" MODIFIED="1654992352983">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Patterned Fields
    </p>
    <p>
      /{path} : path item object
    </p>
  </body>
</html></richcontent>
<node CREATED="1654992375675" ID="ID_1229066331" MODIFIED="1655132775695" TEXT="Path Item Object">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654992400598" ID="ID_643636920" MODIFIED="1654992402363" TEXT="$ref: string"/>
<node CREATED="1654992405479" ID="ID_245082026" MODIFIED="1654992406982" TEXT="summary: string"/>
<node CREATED="1654992410616" ID="ID_1086614874" MODIFIED="1654992411919" TEXT="description: string"/>
<node CREATED="1654992415893" ID="ID_82266922" MODIFIED="1654992424309" TEXT="get: operation obj">
<node CREATED="1655132717976" ID="ID_1045122456" MODIFIED="1655132736380" TEXT="operation object">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1655133101924" ID="ID_1664778290" MODIFIED="1655133109112" TEXT="tags: [string]"/>
<node CREATED="1655133126212" ID="ID_802167855" MODIFIED="1655133128154" TEXT="summary: string"/>
<node CREATED="1655133133870" ID="ID_747775843" MODIFIED="1655133135346" TEXT="description: string"/>
<node CREATED="1655133147607" ID="ID_1797711745" MODIFIED="1655133149374" TEXT="operationId: string"/>
<node CREATED="1655133224465" ID="ID_961863965" LINK="#ID_1929303914" MODIFIED="1655304500138" TEXT="parameters: [parameter obj | ref obj]"/>
<node CREATED="1655133618006" ID="ID_1123539664" MODIFIED="1655133626176" TEXT="requestBody: request body obj | ref obj"/>
<node CREATED="1655133636430" ID="ID_492510412" LINK="#ID_1460140365" MODIFIED="1655305015270" TEXT="responses: responses obj"/>
<node CREATED="1655133673848" ID="ID_111777001" MODIFIED="1655133675915" TEXT="deprecated: bool"/>
<node CREATED="1655133688432" ID="ID_1960417856" MODIFIED="1655133711074" TEXT="security: [security requirement obj]"/>
<node CREATED="1655133723623" ID="ID_1618424261" MODIFIED="1655133733262" TEXT="servers: [server obj]"/>
</node>
</node>
<node CREATED="1654992428401" ID="ID_1870054541" MODIFIED="1654992431184" TEXT="put: operation obj"/>
<node CREATED="1654992450845" ID="ID_746099782" MODIFIED="1654992452057" TEXT="...."/>
<node CREATED="1654992454952" ID="ID_413658290" MODIFIED="1654992459252" TEXT="servers: [server obj]"/>
<node CREATED="1655132775617" ID="ID_949286119" LINK="#ID_1642725004" MODIFIED="1655133028612" TEXT="parameters: [parameter obj | ref obj]">
<node CREATED="1655047085723" ID="ID_1274927284" MODIFIED="1655047105515" TEXT="A list of parameters that are applicable for all the operations described under this path. These parameters can be overridden at the operation level, but cannot be removed there. The list MUST NOT include duplicated parameters." VSHIFT="-8"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1654963018725" ID="ID_359850612" MODIFIED="1654964367916" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      field: components
    </p>
    <p>
      type: components object
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654963050856" ID="ID_1278802013" MODIFIED="1654963050856" TEXT="hold various schemas for the specification."/>
<node CREATED="1654989032178" ID="ID_1751649208" MODIFIED="1655303917700" TEXT="Specs">
<node CREATED="1654989205520" ID="ID_592581942" MODIFIED="1655048702197">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>schemas</b>: map[string, schema object | ref object]
    </p>
  </body>
</html></richcontent>
<node CREATED="1654989909523" ID="ID_227807876" MODIFIED="1655304734434" TEXT="Schema Object">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654990184322" ID="ID_1669998197" MODIFIED="1654990184322" TEXT="The Schema Object allows the definition of input and output data types. These types can be objects, but also primitives and arrays."/>
<node CREATED="1654990187916" ID="ID_400612118" MODIFIED="1655166449280" TEXT="Specs">
<node CREATED="1654990197665" ID="ID_1393907769" MODIFIED="1655304779546">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The following properties
    </p>
    <p>
      are taken directly from the
    </p>
    <p>
      JSON Schema definition and
    </p>
    <p>
      follow the same specifications:
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1654990226355" MODIFIED="1654990226355" TEXT="title"/>
<node CREATED="1654990226358" MODIFIED="1654990226358" TEXT="multipleOf"/>
<node CREATED="1654990226359" MODIFIED="1654990226359" TEXT="maximum"/>
<node CREATED="1654990226359" MODIFIED="1654990226359" TEXT="exclusiveMaximum"/>
<node CREATED="1654990226360" MODIFIED="1654990226360" TEXT="minimum"/>
<node CREATED="1654990226361" MODIFIED="1654990226361" TEXT="exclusiveMinimum"/>
<node CREATED="1654990226361" MODIFIED="1654990226361" TEXT="maxLength"/>
<node CREATED="1654990226362" ID="ID_643196953" MODIFIED="1654990226362" TEXT="minLength"/>
<node CREATED="1654990332162" ID="ID_813069284" MODIFIED="1654990336381">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>pattern</b>&#160;(This string SHOULD be a valid regular expression, according to the Ecma-262 Edition 5.1 regular expression dialect)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990226366" ID="ID_745390429" MODIFIED="1654990226366" TEXT="maxItems"/>
<node CREATED="1654990226367" MODIFIED="1654990226367" TEXT="minItems"/>
<node CREATED="1654990226368" MODIFIED="1654990226368" TEXT="uniqueItems"/>
<node CREATED="1654990226368" MODIFIED="1654990226368" TEXT="maxProperties"/>
<node CREATED="1654990226369" MODIFIED="1654990226369" TEXT="minProperties"/>
<node CREATED="1654990226369" ID="ID_426546416" MODIFIED="1654990870067" TEXT="required">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
<node CREATED="1654990226370" ID="ID_1123413402" MODIFIED="1654990871221" TEXT="enum">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
</node>
</node>
<node CREATED="1654990237422" ID="ID_623610067" MODIFIED="1655304792999">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The following properties are
    </p>
    <p>
      taken from the JSON Schema
    </p>
    <p>
      definition but their definitions
    </p>
    <p>
      were adjusted to the OpenAPI Specification.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1654990244399" ID="ID_139181512" MODIFIED="1654990326602">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>type</b>&#160;- Value MUST be a string. Multiple types via an array are not supported.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node CREATED="1654990394409" ID="ID_166012896" MODIFIED="1654990398327">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>allOf</b>&#160;- Inline or referenced schema MUST be of a Schema Object and not a standard JSON Schema.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990406735" ID="ID_1334383093" MODIFIED="1654990409990">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>oneOf</b>&#160;- Inline or referenced schema MUST be of a Schema Object and not a standard JSON Schema.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990414576" ID="ID_633872636" MODIFIED="1654990417672">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>anyOf</b>&#160;- Inline or referenced schema MUST be of a Schema Object and not a standard JSON Schema.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990420919" ID="ID_1325481282" MODIFIED="1654990424382">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>not</b>&#160;- Inline or referenced schema MUST be of a Schema Object and not a standard JSON Schema.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990431919" ID="ID_828993906" MODIFIED="1654990435056">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>items</b>&#160;- Value MUST be an object and not an array. Inline or referenced schema MUST be of a Schema Object and not a standard JSON Schema. items MUST be present if the type is array.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990439063" ID="ID_1558506664" MODIFIED="1654990442205">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>properties</b>&#160;- Property definitions MUST be a Schema Object and not a standard JSON Schema (inline or referenced).
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990446049" ID="ID_960849216" MODIFIED="1654990449118">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>additionalProperties</b>&#160;- Value can be boolean or object. Inline or referenced schema MUST be of a Schema Object and not a standard JSON Schema. Consistent with JSON Schema, additionalProperties defaults to true.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990453168" ID="ID_1495932838" MODIFIED="1654990456551">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>description </b>- CommonMark syntax MAY be used for rich text representation.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990459458" ID="ID_365589559" MODIFIED="1654990462089">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>format </b>- See Data Type Formats for further details. While relying on JSON Schema's defined formats, the OAS offers a few additional predefined formats.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990465650" ID="ID_732760949" MODIFIED="1654990468769">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>default </b>- The default value represents what would be assumed by the consumer of the input as the value of the schema if one is not provided. Unlike JSON Schema, the value MUST conform to the defined type for the Schema Object defined at the same level. For example, if type is string, then default can be &quot;foo&quot; but cannot be 1.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1654990492270" ID="ID_263339412" MODIFIED="1654990590689" TEXT="Other than the JSON Schema subset fields, the following fields MAY be used for further schema documentation">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654990626081" ID="ID_337038847" MODIFIED="1654990628328" TEXT="nullable: bool"/>
<node CREATED="1654990638910" ID="ID_1919173129" MODIFIED="1654990641622" TEXT="readOnly: bool"/>
<node CREATED="1654990646488" ID="ID_968822805" MODIFIED="1654990648098" TEXT="writeOnly: bool"/>
<node CREATED="1654990668093" ID="ID_561310421" LINK="#ID_1015128287" MODIFIED="1655166524204" TEXT="example: Any"/>
<node CREATED="1654990741365" ID="ID_918710596" MODIFIED="1654990744193" TEXT="deprecated: bool"/>
</node>
</node>
<node CREATED="1654990764410" ID="ID_797568122" MODIFIED="1655305195560" TEXT="Exams">
<node CREATED="1654990781366" ID="ID_138913461" MODIFIED="1654991210129">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i># Primitive Sample</i>
    </p>
    <p>
      type: string
    </p>
    <p>
      format: email
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654990820366" ID="ID_536623310" MODIFIED="1654991212923">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i># Simple Model</i>
    </p>
    <p>
      type: object
    </p>
    <p>
      required:
    </p>
    <p>
      - name
    </p>
    <p>
      properties:
    </p>
    <p>
      &#160;&#160;name:
    </p>
    <p>
      &#160;&#160;&#160;&#160;type: string
    </p>
    <p>
      &#160;&#160;address:
    </p>
    <p>
      &#160;&#160;&#160;&#160;$ref: '#/components/schemas/Address'
    </p>
    <p>
      &#160;&#160;age:
    </p>
    <p>
      &#160;&#160;&#160;&#160;type: integer
    </p>
    <p>
      &#160;&#160;&#160;&#160;format: int32
    </p>
    <p>
      &#160;&#160;&#160;&#160;minimum: 0
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654991136078" ID="ID_1489243850" MODIFIED="1654991136859" TEXT="Model with Map/Dictionary Properties">
<node CREATED="1654991152076" ID="ID_1689354061" MODIFIED="1654991197536">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(33, 37, 41)" face="Open Sans, sans-serif"><i># a simple string to string mapping</i></font>
    </p>
    <p>
      type: object
    </p>
    <p>
      additionalProperties:
    </p>
    <p>
      &#160;&#160;type: string
    </p>
    <p>
      
    </p>
    <p>
      <font color="rgb(33, 37, 41)" face="Open Sans, sans-serif"><i># a string to model mapping</i></font>
    </p>
    <p>
      type: object
    </p>
    <p>
      additionalProperties:
    </p>
    <p>
      &#160;&#160;$ref: '#/components/schemas/ComplexModel'
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1654991225005" ID="ID_421729948" MODIFIED="1654991245247">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # Model with Example
    </p>
    <p>
      type: object
    </p>
    <p>
      properties:
    </p>
    <p>
      &#160;&#160;id:
    </p>
    <p>
      &#160;&#160;&#160;&#160;type: integer
    </p>
    <p>
      &#160;&#160;&#160;&#160;format: int64
    </p>
    <p>
      &#160;&#160;name:
    </p>
    <p>
      &#160;&#160;&#160;&#160;type: string
    </p>
    <p>
      required:
    </p>
    <p>
      - name
    </p>
    <p>
      example:
    </p>
    <p>
      &#160;&#160;name: Puma
    </p>
    <p>
      &#160;&#160;id: 1
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654992048077" ID="ID_486070592" MODIFIED="1654992085339">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # Models with Composition
    </p>
    <p>
      components:
    </p>
    <p>
      &#160;&#160;schemas:
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b>ErrorModel:</b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;type: object
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;required:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;- message
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;- code
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;properties:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;message:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;type: string
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;code:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;type: integer
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;minimum: 100
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;maximum: 600
    </p>
    <p>
      <b>&#160;&#160;&#160;&#160;ExtendedErrorModel:</b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;allOf:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;- $ref: '#/components/schemas/ErrorModel'
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;- type: object
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;required:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;- rootCause
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;properties:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;rootCause:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;type: string
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1654989626060" ID="ID_1190456913" MODIFIED="1655134765604" TEXT="Reference Object">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654989643980" ID="ID_1346500251" MODIFIED="1654989648039" TEXT="Specs">
<node CREATED="1654989651144" ID="ID_1942301187" MODIFIED="1654989655993" TEXT="$ref (*): string"/>
</node>
<node CREATED="1654989659229" ID="ID_76397841" MODIFIED="1654989706368" TEXT="E.g.">
<node CREATED="1654989780554" ID="ID_1282361896" MODIFIED="1654989781305" TEXT="$ref: &apos;#/components/schemas/Pet&apos;"/>
<node CREATED="1654989807592" ID="ID_514646131" MODIFIED="1654989850548">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i>Relative Schema Document Example</i>
    </p>
    <p>
      $ref: Pet.yaml
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654989858439" ID="ID_1466617980" MODIFIED="1654989878792">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i>Relative Documents With Embedded Schema Example</i>
    </p>
    <p>
      $ref: definitions.yaml#/Pet
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1654989268520" ID="ID_1460140365" MODIFIED="1655132854299">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>responses</b>: map[string, response object | ref object]
    </p>
  </body>
</html></richcontent>
<node CREATED="1655134734851" ID="ID_57861012" MODIFIED="1655134761275" TEXT="response obj">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1655134749894" ID="ID_587142370" MODIFIED="1655134754268" TEXT="Specs">
<node CREATED="1655134788878" ID="ID_1573609614" MODIFIED="1655134791556" TEXT="description (*): string"/>
<node CREATED="1655134803351" ID="ID_702194951" MODIFIED="1655134813184" TEXT="headers: map[string, header obj | ref obj]"/>
<node CREATED="1655134831654" ID="ID_17801812" MODIFIED="1655134838952" TEXT="content: map[string, media type obj]"/>
<node CREATED="1655134922067" ID="ID_964291365" MODIFIED="1655134973261" TEXT="links: map[string, link obj |  ref obj]"/>
</node>
</node>
</node>
<node CREATED="1654989304698" ID="ID_1642725004" MODIFIED="1655132858347">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>parameters</b>: map[string, parameter obj | ref obj]
    </p>
  </body>
</html></richcontent>
<node CREATED="1654992463015" ID="ID_1929303914" MODIFIED="1655303940325" TEXT="parameter obj">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1655047097715" HGAP="25" ID="ID_1171868157" MODIFIED="1655304552013" TEXT="Specs" VSHIFT="33">
<node CREATED="1655047354502" ID="ID_1415654015" MODIFIED="1655047358083" TEXT="name (*): string"/>
<node CREATED="1655047363599" ID="ID_1185828083" MODIFIED="1655047446071" TEXT="in (*): enum [&quot;query&quot;, &quot;header&quot;, &quot;path&quot;, &quot;cookie&quot;]&quot;"/>
<node CREATED="1655047494800" ID="ID_110796" MODIFIED="1655047496498" TEXT="description: string"/>
<node CREATED="1655047543460" ID="ID_1179297498" MODIFIED="1655047547041" TEXT="required: bool">
<node CREATED="1655047558109" ID="ID_1817295212" MODIFIED="1655047558109" TEXT="If the parameter location is &quot;path&quot;, this property is REQUIRED and its value MUST be true"/>
<node CREATED="1655047571176" ID="ID_95017300" MODIFIED="1655047571176" TEXT="Otherwise, the property MAY be included and its default value is false."/>
</node>
<node CREATED="1655047595738" ID="ID_181172289" MODIFIED="1655047602229" TEXT="deprecated: bool"/>
<node CREATED="1655047624829" ID="ID_1501665043" MODIFIED="1655047626786" TEXT="allowEmptyValue: bool"/>
<node CREATED="1655048146292" ID="ID_1587671970" MODIFIED="1655048148473" TEXT="..."/>
<node CREATED="1655048148943" ID="ID_450829695" LINK="#ID_227807876" MODIFIED="1655134486208" TEXT="schema: schema obj | ref obj"/>
<node CREATED="1655048184713" ID="ID_539797692" MODIFIED="1655048187403" TEXT="example: any"/>
<node CREATED="1655048190204" ID="ID_1856985550" MODIFIED="1655048215506" TEXT="examples: map[string, example obj | ref obj]"/>
<node CREATED="1655048236015" ID="ID_1732515151" MODIFIED="1655048271774" TEXT="content: map[string, media type obj]">
<node COLOR="#ff0000" CREATED="1655134376156" ID="ID_180494361" MODIFIED="1655303943647" TEXT="media type obj">
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1655048148943" ID="ID_540887642" LINK="#ID_227807876" MODIFIED="1655134486208" TEXT="schema: schema obj | ref obj"/>
<node CREATED="1655134543821" ID="ID_80003797" MODIFIED="1655134545544" TEXT="example: any"/>
<node CREATED="1655134554830" ID="ID_904420337" MODIFIED="1655134556238" TEXT="examples: map[string, example obj | ref obj] "/>
<node CREATED="1655134563575" ID="ID_994848790" MODIFIED="1655134570638" TEXT="encoding: map[string, encoding obj]"/>
</node>
</node>
</node>
<node CREATED="1655048447983" ID="ID_1723283345" MODIFIED="1655048510513" TEXT="E.g.">
<node CREATED="1655048765276" ID="ID_1989042069" MODIFIED="1655048986459">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # A header parameter with an array of 64 bit integer numbers
    </p>
    <p>
      name: token
    </p>
    <p>
      in: header
    </p>
    <p>
      description: token to be passed as a header
    </p>
    <p>
      required: true
    </p>
    <p>
      schema:
    </p>
    <p>
      &#160;&#160;type: array
    </p>
    <p>
      &#160;&#160;items:
    </p>
    <p>
      &#160;&#160;&#160;&#160;type: integer
    </p>
    <p>
      &#160;&#160;&#160;&#160;format: int64
    </p>
    <p>
      style: simple
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1655049032304" ID="ID_98249143" MODIFIED="1655049034096">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # A path parameter of a string value:
    </p>
    <p>
      name: username
    </p>
    <p>
      in: path
    </p>
    <p>
      description: username to fetch
    </p>
    <p>
      required: true
    </p>
    <p>
      schema:
    </p>
    <p>
      &#160;&#160;type: string
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1655049094023" ID="ID_1536383462" MODIFIED="1655049095460">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      # An optional query parameter of a string value, allowing multiple values by repeating the query parameter:
    </p>
    <p>
      name: id
    </p>
    <p>
      in: query
    </p>
    <p>
      description: ID of the object to fetch
    </p>
    <p>
      required: false
    </p>
    <p>
      schema:
    </p>
    <p>
      &#160;&#160;type: array
    </p>
    <p>
      &#160;&#160;items:
    </p>
    <p>
      &#160;&#160;&#160;&#160;type: string
    </p>
    <p>
      style: form
    </p>
    <p>
      explode: true
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1654989326507" ID="ID_1999720212" MODIFIED="1655132863876">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>examples</b>: map[string, example obj | ref obj]
    </p>
  </body>
</html></richcontent>
<node CREATED="1655135211871" ID="ID_1015128287" MODIFIED="1655135228277" TEXT="example obj">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1655135217786" ID="ID_190370261" MODIFIED="1655135219145" TEXT="Specs">
<node CREATED="1655135248309" ID="ID_1802717792" MODIFIED="1655135250034" TEXT="summary: string"/>
<node CREATED="1655135252845" ID="ID_667623763" MODIFIED="1655135254470" TEXT="description: string"/>
<node CREATED="1655135258359" ID="ID_759223892" MODIFIED="1655135263960" TEXT="externalValue: string"/>
<node CREATED="1655135266628" ID="ID_744922633" MODIFIED="1655135268298" TEXT="value: any"/>
</node>
</node>
</node>
<node CREATED="1654989357830" ID="ID_111689340" MODIFIED="1655133984297">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>requestBodies</b>: map[string, requestBody obj |&#160;ref obj]
    </p>
  </body>
</html></richcontent>
<node CREATED="1655133984276" ID="ID_1930381811" MODIFIED="1655134773862" TEXT="request body obj">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1655133841220" ID="ID_1575859916" MODIFIED="1655133989464" TEXT="Specs">
<node CREATED="1655133946483" ID="ID_970167804" MODIFIED="1655133948568" TEXT="description: string"/>
<node CREATED="1655133953290" ID="ID_46393187" MODIFIED="1655133955432" TEXT="required: bool"/>
<node CREATED="1655133958548" ID="ID_1609505831" LINK="#ID_1732515151" MODIFIED="1655134320736" TEXT="content (*): map[string, media type obj]"/>
</node>
</node>
</node>
<node CREATED="1654989432513" ID="ID_1260041059" MODIFIED="1655132870477">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>headers</b>: map[string, header obj | ref obj]
    </p>
  </body>
</html></richcontent>
<node CREATED="1655135035863" ID="ID_946118837" MODIFIED="1655135040709" TEXT="header obj">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1655135041993" ID="ID_1889790462" MODIFIED="1655135108450" TEXT="Header Object follows the structure of the &#xa;Parameter Object with the following changes">
<node CREATED="1655135121698" ID="ID_331518765" MODIFIED="1655135141232">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>name</b>&#160;MUST NOT be specified
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="14"/>
</node>
<node CREATED="1655135131366" ID="ID_1864642051" MODIFIED="1655135145615">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>in </b>MUST NOT be specified
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1654989491900" ID="ID_1679946326" MODIFIED="1655132874088">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>securitySchemes</b>: map[string, securityScheme obj | ref obj]
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654989516469" ID="ID_1999482106" MODIFIED="1655132876880">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>links</b>: map[string, link obj | ref obj]
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1654989535574" ID="ID_69477532" MODIFIED="1655132880426">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>callbacks</b>: map[string, callbackk&#160;&#160;obj | ref obj]
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1654963056395" ID="ID_429482801" MODIFIED="1654964372152" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      field: security
    </p>
    <p>
      type: [security requirement object]
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654963118983" ID="ID_782012367" MODIFIED="1654963118983" TEXT="A declaration of which security mechanisms can be used across the API"/>
<node CREATED="1654963133483" ID="ID_1917899836" MODIFIED="1654963133483" TEXT="Only one of the security requirement objects need to be satisfied to authorize a request."/>
<node CREATED="1654963141849" ID="ID_1107510382" MODIFIED="1654963141849" TEXT="Individual operations can override this definition"/>
<node CREATED="1654963166168" ID="ID_1077485536" MODIFIED="1654963166168" TEXT="To make security optional, an empty security requirement ({}) can be included in the array."/>
</node>
<node CREATED="1654963172644" ID="ID_1872706685" MODIFIED="1654964373069" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      field: tags
    </p>
    <p>
      type: [tag object]
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654963215771" ID="ID_1524768722" MODIFIED="1654963215771" TEXT="A list of tags used by the specification with additional metadata"/>
<node CREATED="1654963226068" ID="ID_336310825" MODIFIED="1654963226068" TEXT="Not all tags that are used by the Operation Object must be declared."/>
<node CREATED="1654963243498" ID="ID_31427008" MODIFIED="1654963243498" TEXT="The order of the tags can be used to reflect on their order by the parsing tools"/>
<node CREATED="1654963261609" ID="ID_893273133" MODIFIED="1654963261609" TEXT="The tags that are not declared MAY be organized randomly or based on the tools&apos; logic"/>
</node>
<node CREATED="1654963267891" ID="ID_1400691820" MODIFIED="1654964373543" POSITION="left">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      field: externalDocs
    </p>
    <p>
      type: external document object
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="14"/>
<node CREATED="1654963287516" ID="ID_1415955710" MODIFIED="1654963287516" TEXT="Additional external documentation."/>
</node>
</node>
</map>
