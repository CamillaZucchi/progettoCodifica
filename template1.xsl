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
			    <script type="text/javascript" src="prog.js"/>
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
              <li>  <a href="#lettera">Lettera</a> </li>
          
            </ul>
        </nav>
        <section class="header">
            <h1><a name="descrizione"> Descrizione</a></h1>
            <xsl:apply-templates />
        </section>
    </xsl:template>
    <xsl:template match="tei:text">
    <section class="body">
        <h1><a name="lettera"> Lettera </a></h1>
        <xsl:apply-templates />
    </section>
     </xsl:template>       
  
<!--note-->
	<xsl:template match="tei:div[@type='bibliography']">
			<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="//tei:div[@type='notes']">
		<xsl:element name="div">
		    <xsl:attribute name="id">
		    </xsl:attribute>
			<xsl:element name="h3">
				<xsl:text>Note</xsl:text>
			</xsl:element>
			<xsl:for-each select=".//tei:note">
				<xsl:element name="p">
					<xsl:attribute name="id">
						<xsl:value-of select="substring(@xml,2)"/>
					</xsl:attribute>
					[<xsl:value-of select="substring(@xml:id,5)"/>]. <xsl:value-of select="./tei:p"/>
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
	</xsl:template>




<!--teiHeader-->
    
<xsl:template match="tei:titleStmt/tei:author">
        <b>Autore:</b> 
    <xsl:apply-templates/> 
        <br/>
    </xsl:template>
    
   <xsl:template match="tei:titleStmt/tei:title">
        <b>Titolo della lettera <xsl:value-of select="./@xml:id"/> :</b>
        <i><xsl:apply-templates/> </i>
        <br/>
    </xsl:template>
     
   <xsl:template match="tei:fileDesc//tei:resp">
        <b><xsl:value-of select="."/> :</b>
    </xsl:template> 
    

    
    <xsl:template match="tei:fileDesc//tei:name">
        <ul>
            <xsl:for-each select=".">
                <xsl:choose>
                    <xsl:when test="./@xml:id">
                        <li> 
                            <xsl:apply-templates/>
                        </li>
                    </xsl:when>
                    <xsl:when test="./@ref">
                    <li> 
                        <a>
                            <xsl:attribute name="nome">
                                <xsl:value-of select="//tei:div//tei:bibliography[@source='listBibl.xml#Seminara2017']"/>
                            </xsl:attribute>
                            <xsl:apply-templates/>
                        </a>;
                    </li>
                </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </ul>
    </xsl:template>

 

    
   <xsl:template match="tei:editionStmt">
       <b> <xsl:text>Edizione:</xsl:text></b> <br/>
        <li><xsl:apply-templates/></li>
    </xsl:template>

    <xsl:template match="tei:editionStmt//tei:date">
         <xsl:apply-templates/>
        <br/>
    </xsl:template>
    
 <xsl:template match="tei:profileDesc">
        <h3>Descrizione del documento:</h3>
        <xsl:apply-templates/>
    </xsl:template> 

<xsl:template match="tei:sourceDesc//tei:bibl">
       <b>Edizione di riferimento:</b><xsl:value-of select="//tei:titleStmt//tei:respStmt//tei:name"/><xsl:value-of select="xml:id"/>
        <xsl:apply-templates/>
    </xsl:template>  
  
    <xsl:template match="tei:sourceDesc//tei:country">
       <b>Collocazione:</b> 
        <xsl:apply-templates/>
    </xsl:template>
        
<xsl:template match="tei:availability">
        <b>Licenza:</b> 
        <xsl:apply-templates/> 
    <br />
    </xsl:template>


 <xsl:template match="tei:msIdentifier/tei:idno">
        <b>Numero identificativo: </b> 
     <xsl:apply-templates/>
        <br/>
    </xsl:template>
    
    <xsl:template match="tei:settlement">
           <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:repository">
        <b> Museo: </b>
       <xsl:apply-templates/>
        <br />
    </xsl:template>
    
  <xsl:template match="tei:msIdentifier/tei:altIdentifier/tei:idno">
        <b>Collocazione: </b>
      <xsl:apply-templates/>
        <br/>
    </xsl:template>
    
    <xsl:template match="tei:msContents">
        <b>Composizione del documento:</b>
        <li>
            <xsl:apply-templates/>
            </li>
    </xsl:template>
    

    <xsl:template match="tei:msItem/tei:title">
        <b>Titolo:</b> 
        <xsl:apply-templates/>
        <br/>
    </xsl:template>

    <xsl:template match="tei:msItem/tei:author">
        <b>Autore:</b> 
        <a  class="name">
            <xsl:attribute name="autore">
                <xsl:value-of select="./@ref"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </a>
        <br/>

    </xsl:template>

    <xsl:template match="tei:msItem/tei:textLang">
        <b>Lingua usata:</b> 
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:physDesc">
        <b>Descrizione fisica:</b>
        <il>
            <xsl:apply-templates/>
        </il>
    </xsl:template>

    <xsl:template match="tei:physDesc//tei:support">
        <li>
            <b>Supporto:</b> 
            <xsl:apply-templates/>
        </li>
        <br />
    </xsl:template>
    

    <xsl:template match="tei:support/tei:p">
        <span class="support">
            <xsl:apply-templates/>
        </span>
    </xsl:template>


    <xsl:template match="tei:extent">
        <li>
            <b>Estensione:</b> <xsl:apply-templates /> </li>
           <li><b>Numero di fogli:</b> 1 </li>
          <xsl:apply-templates select="./tei:dimensions[@corresp='LL1.31_II']"/>
          
    </xsl:template>

    <xsl:template match="tei:dimensions[@corresp='#LL1.13_II']">
        Dimensioni: (<xsl:value-of select="./tei:height"/> x <xsl:value-of select="./tei:width"/>) <xsl:value-of select="../tei:dimensions/@unit"/>
    </xsl:template>
    <xsl:template match="tei:foliation">
        <li>
            <b>Impaginazione:</b> 
            <xsl:apply-templates/>
        </li>
    </xsl:template>

    <xsl:template match="tei:condition//tei:p">
        <li>
            <b>Condizioni:</b> 
            <xsl:apply-templates/>
        </li>
    </xsl:template>

    <xsl:template match="tei:handDesc">
       <li>
            <b>Contributi:</b> 
            <xsl:apply-templates/>
                
        </li> 
    </xsl:template>

    <xsl:template match="tei:handDesc/tei:handNote">
        
             <xsl:text>Contributo principale di V. Bellini</xsl:text>,      
                       <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="tei:additional">
        <b>Ulteriori informazioni:</b> 
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:material">
            <b> Materiale:</b>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="tei:correspDesc">
        <b>Descrizione corrispondenza: </b>
         
           <li> <xsl:apply-templates/></li>
    </xsl:template>

    <xsl:template match="tei:correspAction">
        <xsl:choose>
            <xsl:when test="./@type='sent'">
                <b>Invio:</b> 
           <li> <xsl:apply-templates/></li>
     
            </xsl:when>
            <xsl:when test="./@type='received'">
                
                    <b>Ricezione:</b> 
                <li><xsl:apply-templates/></li>
                
            </xsl:when>
        </xsl:choose>
    </xsl:template>

 
    <xsl:template match="tei:correspContext">
       <b>Contesto: </b>
        <li><xsl:apply-templates/> </li>
        <br/>
    </xsl:template>  
    <xsl:template match="tei:textClass">
        <b>Tipo di documento: </b> 
       <li> <xsl:apply-templates/> </li> 
        <br />
    </xsl:template>
    <xsl:template match="tei:langUsage/tei:language">
        <b>Lingua usata nella lettera: </b>
        <xsl:apply-templates/> 
        <br/>
    </xsl:template>
    
    <!-- testo-->
    <xsl:template match="tei:text[@type='letter-body']">
       
            <xsl:apply-templates/>
     </xsl:template>
    <xsl:template match="//tei:div[@type='letter-body']">
        <p><xsl:apply-templates/>
    </p></xsl:template>
   
    
    <xsl:template match="tei:lb">
       <br/>
   </xsl:template>
    
    <xsl:template match="tei:w">
        <xsl:apply-templates/>
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
   
    <xsl:template match="//tei:s">
        <p> <xsl:apply-templates/> </p>
    </xsl:template>
       
    
   <!--img-->
    
    <xsl:template match="tei:facsimile"> 
          <div class="img" align="center" >
          <section name="lettera"> 
          </section>
           <div><img src="LL1.13.II_0001.jpg" /></div>
       <div> <img src="LL1.13.II_0002.jpg" /> </div>
      </div>
  </xsl:template>
    
    <xsl:template match="tei:surface[@n='1']">
        <xsl:for-each select="tei:zone">
            <area shape="rect" class="area1">
                <xsl:attribute name="id">
                    <xsl:value-of select="./@n"/>
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
                    <xsl:value-of select="./@n"/>
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
