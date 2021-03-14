<!-- include start from interface-parameters-flowlabel.xml.i -->
<leafNode name="flowlabel">
  <properties>
    <help>Specifies the flow label to use in outgoing packets</help>
    <valueHelp>
      <format>0x0-0x0FFFFF</format>
      <description>Tunnel key, 'inherit' or hex value</description>
    </valueHelp>
    <constraint>
      <regex>^((0x){0,1}(0?[0-9A-Fa-f]{1,5})|inherit)$</regex>
    </constraint>
    <constraintErrorMessage>Must be 'inherit' or a number</constraintErrorMessage>
  </properties>
</leafNode>
<!-- include end -->
