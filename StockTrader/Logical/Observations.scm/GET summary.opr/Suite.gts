<?xml version="1.0" encoding="UTF-8"?><editableResource createdTimestamp="1543267375599" createdUser="root" id="47e57472:167516c7d0a:-7729" type="test_suite_resource" updatedTimestamp="1555283592957" updatedUser="root" version="1.0">
   <loggingConfiguration debug="false" messageClearance="true" writeStubEventsToDB="true"/>
   <resourceConfig>
      <scenario continueOnFail="true" id="47e57472:167516c7d0a:-7728" type="scenario" version="1.0">
         <loggingConfiguration debug="false" writeStubEventsToDB="false"/>
         <resourceConfig chkenv="false" name="Scenario" pacingtime="0.0" pacingtype="MIN_DURATION" parallel="false" slowfail="false" usepacing="false">
            <environmentTasks preventExecutionOnFailure="false"/>
         </resourceConfig>
         <testItem continueOnFail="true" id="2abe139a:16a1de8eff9:-7b13" lkname="get jwt" lkpath="looper/get jwt" type="test_resource"/>
         <testItem continueOnFail="true" id="47e57472:167516c7d0a:-7cd2" lkname="Trader" lkpath="Observations/GET summary/Trader" type="test_resource"/>
         <testItem continueOnFail="true" id="47e57472:167516c7d0a:-7806" lkname="Portfolio" lkpath="Portfolio/POST Test/Portfolio" type="test_resource"/>
         <testItem continueOnFail="true" id="47e57472:167516c7d0a:-77f8" lkname="Portfolio" lkpath="Portfolio/PUT Test/Portfolio" type="test_resource"/>
         <testItem continueOnFail="true" id="47e57472:167516c7d0a:-784c" lkname="Portfolio" lkpath="Portfolio/GET Test/Portfolio" type="test_resource"/>
         <testItem continueOnFail="true" id="47e57472:167516c7d0a:-783e" lkname="Portfolio" lkpath="Portfolio/DELETE Test/Portfolio" type="test_resource"/>
      </scenario>
   </resourceConfig>
</editableResource>
