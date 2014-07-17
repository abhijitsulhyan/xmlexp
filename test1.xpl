<?xml version="1.0"?>
<p:declare-step version="1.0" xmlns:p="http://www.w3.org/ns/xproc">
    <p:input kind="parameter" port="parameters"/>
    <p:input port="source"/>
    <p:output port="result">
        <p:pipe port="result" step="xslt1"/>
    </p:output>
    <p:output port="report">
        <p:pipe port="report" step="schematron"/>
    </p:output>
    <p:output port="result2">
        <p:pipe port="result" step="xslt2"/>
    </p:output>
    <p:validate-with-schematron assert-valid="false" name="schematron">
        <p:input port="schema">
            <p:document href="check-classifications.sch"/>
        </p:input>
        <p:input port="parameters" sequence="true">
            <p:empty/>
        </p:input>
    </p:validate-with-schematron>
    <p:xslt name="xslt1">
        <p:input port="stylesheet">
            <p:document href="stylesheet.xsl" />
        </p:input>
         <p:input port="parameters" sequence="true">
            <p:empty/>
        </p:input>
    </p:xslt>
    <p:xslt name="xslt2">
        <p:input port="stylesheet">
            <p:document href="stylesheet2.xsl" />
        </p:input>
         <p:input port="parameters" sequence="true">
            <p:empty/>
        </p:input>
    </p:xslt>
</p:declare-step>