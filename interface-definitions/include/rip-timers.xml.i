<!-- included start from rip-timers.xml.i -->
<node name="timers">
  <properties>
    <help>RIPng timer values</help>
  </properties>
  <children>
    <leafNode name="garbage-collection">
      <properties>
        <help>Garbage collection timer</help>
        <valueHelp>
          <format>u32:5-2147483647</format>
          <description>Garbage colletion time (default 120)</description>
        </valueHelp>
        <constraint>
          <validator name="numeric" argument="--range 5-2147483647"/>
        </constraint>
      </properties>
      <defaultValue>120</defaultValue>
    </leafNode>
    <leafNode name="timeout">
      <properties>
        <help>Routing information timeout timer</help>
        <valueHelp>
          <format>u32:5-2147483647</format>
          <description>Routing information timeout timer (default 180)</description>
        </valueHelp>
        <constraint>
          <validator name="numeric" argument="--range 5-2147483647"/>
        </constraint>
      </properties>
      <defaultValue>180</defaultValue>
    </leafNode>
    <leafNode name="update">
      <properties>
        <help>Routing table update timer</help>
        <valueHelp>
          <format>u32:5-2147483647</format>
          <description>Routing table update timer in seconds (default 30)</description>
        </valueHelp>
        <constraint>
          <validator name="numeric" argument="--range 5-2147483647"/>
        </constraint>
      </properties>
      <defaultValue>30</defaultValue>
    </leafNode>
  </children>
</node>
<!-- included end -->
