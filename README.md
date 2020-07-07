# progettoCodifica
<?xml version="1.0" encoding="UTF-8"?>
<!--?xml-model href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_all.rng" schematypens="http://relaxng.org/ns/structure/1.0"?-->

<!DOCTYPE TEI SYSTEM "tei_all.dtd">

<TEI xmlns="http://www.tei-c.org/ns/1.0">
	<teiHeader>
		<fileDesc>
			<titleStmt xml:id="LL1.31_I-II">
				<title xml:id="LL1.31_I">Vincenzo Bellini a destinatario sconosciuto, in Parigi, giugno 1835. </title>
				<title xml:id="LL1.31_II">Vincenzo Bellini a Eugène Troupenas, in Parigi, giugno 1835. </title>
				<!--formato titolo: mittente a destinatario, in luogo, data di scrittura della lettera -->
				<author ref="#VB">Vincenzo Bellini</author>
				<respStmt>
					<resp>Transcription by</resp>
					<name xml:id="GS">Graziella Seminara</name>
				</respStmt>
			</titleStmt>
			<editionStmt>
				<edition>Digital Edition
					<date when="2018-06">June 2020</date>
				</edition>
				<respStmt>
					<resp>Digital edition project coordineted by</resp>
					<name xml:id="AMDG">Angelo Mario Del Grosso</name>
					<name xml:id="DS">Daria Spampinato</name>
				</respStmt>
				<respStmt>
					<resp>Encoding by</resp>
					<name ref="#AMDG">Angelo Mario Del Grosso</name>
					<name xml:id="EC">Erica Capizzi</name>
					<name ref="#DS">Daria Spampinato</name>
				</respStmt>
				<respStmt>
					<resp>Encoding letter</resp>
					<name xml:id="AD">Ada Desideri</name>
				</respStmt>
			
			</editionStmt>
			<publicationStmt>
				<publisher />
				<!-- editore sarà la Fondazione Bellini -->
				<availability>
					<licence target="https://creativecommons.org/licenses/by/4.0/">CC-BY 4.0</licence>
				</availability>
				<!-- <idno type="url">http://xxxxxx</idno>
                <date when="yyyyyy" /> va indicato l'uri dell'edizione digitale delle lettere -->
			</publicationStmt>
			<sourceDesc>
				<bibl source="#Seminara2017" resp="#GS" ana="455">
							<citedRange unit="page" from="525" to="526">pag. 525-526</citedRange>
				</bibl>
				<msDesc corresp="#LL1.31">
					<msIdentifier corresp="#LL1.31">
						<country>Italy</country>
						<settlement>Catania</settlement>
						<repository role="museum" ref="http://www.rism.info/typo3conf/ext/user_apachesolr/result.php?q=id:30003436" n="I-CATm">Museo Belliniano Catania</repository>
						<!-- riferimento al catalogo delle sigle dei musei in cui è definito I-CATm -->
						<!-- mettere come secondo valore di ref del tag repository l'URI del nodo museo del dataset del Belliniano -->
						<idno type="inventory" corresp="#LL1.31">LL1.31 (I-II)</idno>						<!-- segnatura della singola lettera -->
						<altIdentifier corresp="#LL1.31"><idno type="collocation">in esposizione nella casa natale, sala B, vetrina 6, ripiano 1, II</idno></altIdentifier>
						<!-- collocazione della lettera al museo -->
					</msIdentifier>
					<msContents>
						<msItem corresp="#LL1.31_I">
							<author xml:lang="it" ref="#VB">Vincenzo Bellini</author>
							<title type="uniform" xml:lang="it">
								<persName ref="#VB" role="composer">Vincenzo Bellini</persName> a	destinatario sconosciuto, in <placeName ref="#Paris">Parigi</placeName>, <date when="1834-06">giugno 1834</date>
							</title>
							<textLang mainLang="fr">Francese con espressioni idiomatiche presumibilmente scorrette<note n="1" type="certainty" resp="#AD">Le espressioni sono ritenute errate perchè non sono corrette in Francese contemporaneo e non sono riconducibili al Francese Antico (che era usato fino al XIV secolo). Potrebbero essere delle forme di Francese ottocentesco, ma si presume che siano degli errori perché sembrano traduzioni letterali di espressioni idiomatiche italiane.</note>.</textLang>
						</msItem>
						<msItem corresp="#LL1.31_II">
							<author xml:lang="it" ref="#VB">Vincenzo Bellini</author>
							<title type="uniform" xml:lang="it">
								<persName ref="#VB" role="composer">Vincenzo Bellini</persName> a	<persName ref="#ETT">Eugène Troupenas</persName>, in <placeName ref="#Paris">Parigi</placeName>, <date when="1834-06">giugno 1834</date>
							</title>
							<textLang mainLang="fr">Francese.</textLang>
						</msItem>
					</msContents>
					<physDesc>
						<objectDesc>
							<supportDesc>
								<support>
									<material>carta sottile</material>
									<p> Documento composto da due minute di lettere, su due fogli distinti. 
                                        Un foglio è piegato in due, formando quindi quattro superfici, due esterne e due interne. La prima faccia esterna è la sola a recare del testo.
                                        Le altre facce del foglio piegato, vuote, sono in condizioni abbastanza buone : nella faccia interna a destra si possono vedere due segni di impronte digitali in basso a destra, e dei leggerissimi segni di inchiostro, che probabilmente sono trapassati dal lato scritto durante la scrittura o la conservazione. 
                                        Il secondo foglio, invece, non è intero, ed è sciupato su tutti i lati : a sinistra e in basso ci sono segni di strappi che sembrano derivare da un cattivo taglio del foglio; a destra e in alto ci sono segni di usura. Nel retro di questo foglio possiamo vedere altri due segni in alto a sinistra, forse causati dalla colla.
                                        La carta è sottile e senza filigrana, di colore beige. Il testo è scritto con inchiostro nero.
					 							<!-- descrizione fisica della lettera -->
									</p>
								</support>
								<extent>
									<measure corresp="#LL1.31_II" type="folio">2</measure>				<!--  va inserita la quantità dell'oggetto, indicando in type il tipo descritto --> <!-- primo foglio-->
									<dimensions unit="mm" corresp="#LL1.31_II"> 
										<height>135</height>
										<width>102</width>
                                    </dimensions>
                                    <measure corresp="#LL1.31_I" type="folio">1</measure> <!-- secondo foglio-->
                                    <dimensions unit="mm" corresp="#LL1.31_I"> 
										<height>97</height>
										<width>133</width>
									</dimensions>
								</extent>
								<foliation>
									<p>		<!-- es. folio verso a sx, folio recto a dx con suddivisioni ulteriori. -->
                                            Il <ref target="#LL1.31_II">foglio superiore</ref> è piegato in due parti uguali.
											Il <ref target="#LL1.31_I">foglio inferiore</ref> è attaccato alla superfice frontale del <ref target="#LL1.31_II">primo foglio</ref> con della colla.
										</p>
								</foliation>
								<condition>
									<!-- descrizione delle condizioni fisiche di conservazione della lettera -->
									<p>Il <ref target="#LL1.31_II">primo foglio</ref> è in condizioni abbastanza buone, il <ref target="#LL1.31_I">secondo</ref> invece è in condizioni peggiori, ma il testo rimane leggibile.</p>
								</condition>
							</supportDesc>
						</objectDesc>
						<handDesc hands="3">
							<handNote corresp="#VB"><p>
                                Scrittura a mano libera leggibile. Presenti due correzioni ed una cancellatura nel <ref target="#LL1.31_I">secondo foglio</ref>. 
							</p></handNote>
							<handNote xml:id="h2">
								<p>Scrittura a mano libera poco leggibile; probabilmente si tratta di un codice di una vecchia catalogazione francese, seguito da una firma cifrata. Questi segni appaiono sul lato scritto di entrambi i fogli.
								</p>
							</handNote>
							<handNote xml:id="h1">	
								<p> Scrittura a mano libera leggibile; probabilmente numeri di una vecchia catalogazione, a matita blu. Questi segni appaiono sull'ultima faccia del <ref target="#LL1.31_II">primo foglio</ref>.
								</p>
							</handNote>
						</handDesc>
					</physDesc>
					<additional>
						<adminInfo>
							<note n="2" type="ann_notes">		<!-- descrizione del significato della segnatura della lettera -->
								All'interno del carteggio belliniano (LL), la segnatura LL1.31 identifica la trentunesima missiva in ordine cronologico del primo sottogruppo, che corrisponde alle lettere scritte da Vincenzo Bellini.
												<!-- Note aggiuntive non strutturabili con altri tag TEI -->
							</note>
						</adminInfo>
					</additional>
				</msDesc>
			</sourceDesc>
		</fileDesc>
		<profileDesc>
			<correspDesc ref="#LL1.31_I"> 
				<correspAction type="sent">
					<persName ref="#VB" role="composer">Vincenzo Bellini</persName>
					<placeName ref="#Paris" type="writing">Parigi</placeName>
					<date when="1834-06" type="postmark">giugno 1834</date>
				</correspAction>
				<correspAction type="received">
					<persName ref="#unknownPers">Monsieur Frederic</persName>
					<placeName ref="#Paris" type="receving">Paris</placeName>
					<date when="1834-06">giugno 1834</date>			
				</correspAction >
				<correspContext >
					<p>Del destinatario del messaggio non si conosce più del suo nome (<persName ref="#unknownPers">Frederic</persName>), ma sembra che lui e <persName ref="#VB" role="composer">Bellini</persName> avessero parlato dell'accordatura di un pianoforte precedentemente alla scrittura di queste righe. Il <persName ref="#unknownPers">signor Frederic</persName> sembra d'altra parte sapere che l'alloggio di <persName ref="#VB" role="composer">Bellini</persName> è vicino ai <orgName ref="#Bains_Chinois">Bains Chinois</orgName>.</p>
				</correspContext>
			</correspDesc>
			<correspDesc ref="#LL1.31_II">
				<correspAction type="sent">
					<persName ref="#VB" role="composer">Vincenzo Bellini</persName>
					<placeName ref="#Paris" type="receving">Parigi</placeName>
					<date when="1834-06">giugno 1834</date>
				</correspAction>
				<correspAction type="received">
					<persName ref="#ETT">Eugène Troupenas</persName>
					<placeName ref="#Paris" type="writing">Paris</placeName>
					<date when="1834-06" type="postmark">giugno 1834</date>			
				</correspAction >
				<correspContext>
					<p>Dal testo di questa minuta, si può dedurre che <persName ref="#VB" role="composer">Bellini</persName> e <persName ref="#ETT">Troupenas</persName> avessero già parlato di una persona che chiedeva la <term type="music-term" ref="#partitura">partitura</term> dei <term type="work" ref="#Puritani">Puritani</term>.</p>
				</correspContext>
			</correspDesc>

			<textClass>
				<keywords scheme="http://thes.bncf.firenze.sbn.it">			
					<term resp="#GS"> Minuta di lettera 					
					</term>
				</keywords>
			</textClass>
			<langUsage>
				<language ident="fr" corresp="#LL1.31_I">Francese.</language>
				<language ident="fr" corresp="#LL1.31_II">Francese con espressioni idiomatiche presumibilmente scorrette.</language>
			</langUsage>
		</profileDesc>
	</teiHeader>
  </TEI>
