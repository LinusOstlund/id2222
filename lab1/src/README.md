# README

Använd följande pipeline enl föreläsningen:

1. "Shingla" dokumentet, använd en *n*-stor sekvens, eller "the set of strings of lenght *k* that appear in the document". Shingle kallas även *k-gram*.
2. Mata in resultatet från 1) till *min hashing* algoritmen. Output blir *signaturer*: "short integer vectors that represent the sets, and reflect their similarity".
3. **OPTIONAL:** Använd Locality-Sensitive Hashing för att få *candidate pairs*: "those pairs of signatures that we need to test for similarity". Appliceras vid stort antal dokument.

## Shingling

Dokument D är en mängd av sina k-shingles `C=S(D)`, där `C` är antalet shingles.

Exempel: `abcdab` = `{ab, bc, da}`

Bryt ned ett textdokument till substrängar. Därefter representerar vi varje shingle med en matris, 

> *Equivalently, each document is a 0/1 vector in the space of k-shingles* 

* Varje unik shingle är en dimension, och ett element av vektorn som representerar dokumentet. 
* Väldig gles vektor

Vektorn ser ut hur då? Typ såhär:

v = [1; 1; 1] med rader `ab, bc, da` och

u = [0; 1; 1] med samma rader.

Vad gäller storleken på shingle borde *k* = 5 ifallf

| *k* size  | When?  |  
|---|---|
| 5  | Smaller documents, emails, forums posts, etc |
| 9 | Larger bodies of text, like, research articles, web pages perhaps? |