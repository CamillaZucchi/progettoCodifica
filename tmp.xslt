<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:tei="http://www.tei-c.org/ns/1.0"
	xmlns="http://www.w3.org/1999/xhtml">

    <xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes" />

	<xsl:template match="/tei:TEI">
	
		<html>
			<head>
				<meta charset="UTF-8"/>
				<meta name="viewport" content="initial-scale=1.0, width=device-width" />
				  
		        <link rel="stylesheet" type="text/css" href="style.css" />
			    <script type="text/javascript" src="load.js"/>
				<title>LL1.13.II</title>
			
			</head>   
			<body>   
			    <xsl:apply-templates />
	        </body>     
		</html>
	    
	</xsl:template >

<!-- nav -->
    <xsl:template match="tei:teiHeader">
        <nav><h1 id="title">Lettera LL1.13.II </h1>
            <h2>Menu</h2>
            <ul>
              <li> <a href="#descrizione">Descrizione</a></li> 
              <li> <a href="#lettera">Lettera</a> </li>
          
            </ul>
        </nav>
        <section class="header">
            <h1><a name="descrizione"> Descrizione</a></h1>
            <xsl:apply-templates />
        </section>
    </xsl:template>
    <xsl:template match="tei:text">
    <section class="body">
        <h3><a name="lettera"> Lettera </a></h3>
        <xsl:apply-templates />
    </section>
     </xsl:template>       
  
<!--note-->


<xsl:template match="tei:listBibl">
 <div id="bibl"> <h2> Bibliografia della lettera LL1.13.II: </h2>
 <xsl:for-each select=".//tei:bibl">
 <xsl:apply-templates/>
    </xsl:for-each></div>
    </xsl:template>

	<xsl:template match="//tei:div[@type='notes']">
    <div id="note">
    <h2> Note: </h2> 
		<xsl:element name="div">
		    <xsl:attribute name="id">
		    </xsl:attribute>
			<xsl:for-each select=".//tei:note">
				<xsl:element name="p">
                    <xsl:choose>
                    <xsl:when test="./@xml:id='LL1.13.II_note1'">
					<sup> <a name="1"><xsl:text> 1</xsl:text> </a> </sup> 
                    </xsl:when>
                    <xsl:when test="./@xml:id='LL1.13.II_note2'">	
                    <sup> <a name="2"><xsl:text> 2</xsl:text> </a></sup> 
                    </xsl:when>
                    </xsl:choose>
           <xsl:value-of select="./tei:p"/>
					<xsl:for-each select="current()/tei:bibl">
						<xsl:element name="p">
							<xsl:text> Fonte: </xsl:text>
							<xsl:if test="parent::tei:note[@source='listBibl.xml#Seminara2017']">
								<xsl:text>Seminara 2017, </xsl:text>
							</xsl:if>
							<xsl:value-of select="text()"/>p.<xsl:value-of select="current()/tei:citedRange"/>
							<xsl:if test="parent::tei:note[@ana = '547']">
								<xsl:text> n.328</xsl:text>
							</xsl:if>
							<xsl:if test="parent::tei:note[@ana = '548']">
								<xsl:text> n.328</xsl:text>
							</xsl:if>
						</xsl:element>
					</xsl:for-each>	
				</xsl:element>
			</xsl:for-each>
		</xsl:element>
        </div>
	</xsl:template>


<!--header-->

 <xsl:template match="tei:titleStmt//tei:title">
        <b><xsl:text>Titolo della lettera:</xsl:text></b>
        <i><xsl:apply-templates/> </i>
       <br />
    </xsl:template>

<xsl:template match="tei:titleStmt/tei:author">
        <b>Autore:</b> 
    <xsl:apply-templates/> 
    <br />
    </xsl:template>

    <xsl:template match="tei:editionStmt//tei:edition">
       <b> Edizione: </b> 
       <ul><li><xsl:apply-templates/></li></ul>
    </xsl:template>

<xsl:template match="tei:fileDesc//tei:name">
        <ul>
 <xsl:for-each select=".">
 <xsl:choose>
     <xsl:when test="./@xml:id">
     <li><xsl:apply-templates/></li>
        </xsl:when>
         <xsl:when test="./@ref"> 
      <xsl:attribute name="nome"> 
     <br />
        </xsl:attribute>
    <li><xsl:apply-templates/></li>
    </xsl:when>
     </xsl:choose>
    </xsl:for-each>
      </ul>
    </xsl:template> 


<xsl:template match="tei:fileDesc//tei:resp">
<xsl:for-each select=".">
 <b><xsl:apply-templates/>: </b>   
    </xsl:for-each>
    </xsl:template>

  
  <xsl:template match="tei:publicationStmt//tei:publisher/tei:orgName">
<b> Nome organizzazione: </b>
<ul>
 <li><xsl:apply-templates/> </li> 
</ul>
</xsl:template>

<xsl:template match="tei:availability//tei:licence">
<b> Licenza: </b>
<ul>
 <li><xsl:apply-templates/></li>
 </ul>
</xsl:template>

<xsl:template match="tei:sourceDesc//tei:bibl//tei:citedRange">
<b> Edizione di riferimento: </b>
<ul>
<li><xsl:apply-templates/></li>
<xsl:value-of select="tei:bibl[@xml:source='listBibl.xml#Seminara2017']" /><xsl:text>Seminara 2017 </xsl:text>
</ul>
</xsl:template>

 <xsl:template match="tei:msDesc//tei:msIdentifier">
<b> Collocazione del manoscritto: </b>
<ul>
 <li>
 <xsl:value-of select="tei:country"/>
 <xsl:value-of select="tei:settlement"/>
 <xsl:value-of select="tei:repository"/>
 <xsl:value-of select="tei:altIdentifier"/>
 </li>
 </ul>
  <b>Codice identificativo:</b>
 <ul>
 <li>
 <xsl:value-of select="tei:idno"/>
 </li>
 </ul>
</xsl:template>


<xsl:template match="tei:msContents//tei:msItem">
  
<b>Intestazione: </b> 
  <ul>
    <li><xsl:value-of select="tei:title" /></li>
  </ul>
  <b> Lingua: </b>
  <ul>
    <li><xsl:value-of select="tei:textLang"/></li>
  </ul>
</xsl:template> 

<xsl:template match="tei:msDesc//tei:supportDesc//tei:support">
<b> Materiale: </b>
 <ul><li><xsl:value-of select="tei:material"/></li></ul> 
<b>Descrizione fisica: </b>
<ul><li><xsl:value-of select="tei:p"/></li></ul>
</xsl:template>

    <xsl:template match="tei:extent">
   <b> Numero di fogli: </b>
 <ul><li> <xsl:value-of select="tei:measure"/>  </li></ul>
       <b> Dimensioni: </b>
     <ul><li>  <xsl:value-of select="tei:dimensions//tei:height"/><xsl:text>mm</xsl:text> </li>
      <li>  <xsl:value-of select="tei:dimensions//tei:width"/><xsl:text>mm</xsl:text> </li></ul>
    </xsl:template>


<xsl:template match="tei:condition//tei:p">
 <b>Condizioni:</b> 
        <ul>  <li>  <xsl:apply-templates/></li></ul>
    </xsl:template>
 
   <xsl:template match="tei:handDesc">   
    <b> Considerazioni sulla scrittura: </b>
        <ul><li> <xsl:value-of select="//tei:handNote[@xml:id='h1']"/></li>
        <li><xsl:value-of select="//tei:handNote[@xml:id='h2']"/></li></ul>
    </xsl:template>

<xsl:template match="tei:additional//tei:adminInfo">
    <b>Ulteriori informazioni: </b>  
    <ul>
     <li>  <xsl:apply-templates/> </li>
           </ul>
    </xsl:template>

 <xsl:template match="tei:profileDesc//tei:correspAction">
        <xsl:choose>
           <xsl:when test="./@type='sent'">
                <b>Invio:</b>  
                <ul>
      <li>  <xsl:apply-templates/> </li>
      </ul>
            </xsl:when>
            <xsl:when test="./@type='received'">
                    <b>Ricezione:</b> 
                    <ul>
           <li> <xsl:apply-templates/> </li>
           </ul>
            </xsl:when>
        </xsl:choose>
    </xsl:template>

<xsl:template match="tei:correspDesc//tei:note">
        <b> Note:  </b> 
        <ul>
       <li> <xsl:apply-templates/></li>
        </ul>
    </xsl:template>


<xsl:template match="tei:textClass//tei:term">
        <b> Tipo:  </b> 
       <ul><li> <xsl:apply-templates/></li></ul>
    </xsl:template>

    <xsl:template match="tei:langUsage//tei:language">
        <b> Lingua:  </b> 
       <ul><li> <xsl:apply-templates/></li></ul>
        <br />
    </xsl:template>

<!-- testo-->

<xsl:template match="tei:text//tei:front">
 <xsl:value-of select="tei:ab" />
      <div id="front"><xsl:apply-templates/> </div>
     </xsl:template>

   <xsl:template match="tei:body//tei:div[@type='opener']">
     <i><xsl:apply-templates/> </i> 
     </xsl:template>

  <xsl:template match="//tei:div[@type='recto']">
  <xsl:choose>
        <xsl:when test="//@xml:id='LL1.13.II_fol_1r'">
        </xsl:when>
           </xsl:choose> 
      <div id="lettera1"><i><xsl:apply-templates/> </i></div> 
  </xsl:template>

    <xsl:template match="//tei:div[@type='verso']">
   <xsl:choose>
        <xsl:when test="//@xml:id='LL1.13.II_fol_2r'">
        </xsl:when>
           </xsl:choose>
        <div id="lettera2"><i><xsl:apply-templates/> </i> </div>
  </xsl:template>

    <xsl:template match="tei:lb">
       <br/>
     </xsl:template>

    <xsl:template match="tei:body">
    <xsl:apply-templates/>
    </xsl:template>

   <xsl:template match="tei:pc">
   <xsl:apply-templates/>
   </xsl:template>
    
    <xsl:template match="tei:w">
        <span><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="tei:gap">
        <del> <xsl:apply-templates/></del>
    </xsl:template>
   
    <xsl:template match="tei:del">
        <del> <xsl:apply-templates/></del>
    </xsl:template>
    
    <xsl:template match="tei:add">
        <sup> <xsl:apply-templates/> </sup>
    </xsl:template>

    <xsl:template match="tei:corr">
    <u>(<xsl:apply-templates/>)</u>
    </xsl:template>
   

    <xsl:template match="tei:mentioned[@xml:lang='fr']">
    <b><xsl:apply-templates/></b>
    </xsl:template>   

    <xsl:template match="tei:hi[@rend='superscript']">
    <sup><b><xsl:apply-templates/></b></sup>
    </xsl:template>

    <xsl:template match="tei:ptr[@target='#LL1.13.II_note1']">
    <sup> <xsl:apply-templates/><a href="#1"><xsl:text>1</xsl:text></a></sup>
    </xsl:template>

    <xsl:template match="tei:ptr[@target='#LL1.13.II_note2']">
    <sup> <xsl:apply-templates/><a href="#2"><xsl:text>2</xsl:text></a></sup>
    </xsl:template>


      
 <!--img-->


<xsl:template match="tei:facsimile"> 
<span> 
       <div id="img1"> <img src="LL1.13.II_0001.jpg" id="img1"  height="800px" width="600px"/> </div>
       <div id="img2"><img src="LL1.13.II_0002.jpg" id="img2"  height="800px" width="600px" /></div>
       <xsl:apply-templates />
       </span>
  </xsl:template> 
    
    <xsl:template match="tei:surface[@n='1']">
        <xsl:for-each select="tei:zone">
            <area shape="rect" class="area1">
                <xsl:attribute name="id">
                    <xsl:value-of select="tei:surface[@xml:id='LL1.13.II_fronte']"/>
                </xsl:attribute>
                <xsl:attribute name="coords">
                    <xsl:value-of select="./@ulx"/>, 
                    <xsl:value-of select="./@uly"/>,
                    <xsl:value-of select="./@lrx"/>, 
                    <xsl:value-of select="./@lry"/> 
                </xsl:attribute>
            </area>	
        </xsl:for-each>
    </xsl:template> 
    
    <xsl:template match="tei:surface[@n='2']">
        <xsl:for-each select="tei:zone">
            <area shape="rect" class="area2">
                <xsl:attribute name="id">
                    <xsl:value-of select="tei:surface[@xml:id='LL1.13.II_retro']"/>
                </xsl:attribute>
                <xsl:attribute name="coords">
                    <xsl:value-of select="./@ulx"/>, 
                    <xsl:value-of select="./@uly"/>,
                    <xsl:value-of select="./@lrx"/>, 
                    <xsl:value-of select="./@lry"/> 
                </xsl:attribute>
            </area>		
        </xsl:for-each>
    </xsl:template> 
    


</xsl:stylesheet>