<?xml version="1.0"?>
<p:declare-step version="1.0" xmlns:p="http://www.w3.org/ns/xproc">
    <p:input kind="parameter" port="parameters"/>
    <p:input port="source"/>
    <p:output port="result"/>
    <p:validate-with-schematron name="schValidation">
        <p:input port="schema">
            <p:document href="check-classifications.sch"/>
        </p:input>
        <p:input port="parameters" sequence="true">
            <p:empty/>
        </p:input>
    </p:validate-with-schematron>
    <p:xslt>
        <p:input port="stylesheet">
            <p:document href="stylesheet.xsl" />
        </p:input>
        <p:input port="parameters" sequence="true">
            <p:empty/>
        </p:input>
    </p:xslt>    
</p:declare-step>