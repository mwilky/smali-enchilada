.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private nextAttribValue()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private scanForIdentifier()I
    .locals 10

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v0

    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    :cond_1
    const/16 v4, 0x5f

    const/16 v5, 0x7a

    const/16 v6, 0x61

    const/16 v7, 0x5a

    const/16 v8, 0x41

    if-lt v2, v8, :cond_2

    if-le v2, v7, :cond_4

    :cond_2
    if-lt v2, v6, :cond_3

    if-le v2, v5, :cond_4

    :cond_3
    if-ne v2, v4, :cond_9

    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    :goto_0
    if-lt v2, v8, :cond_5

    if-le v2, v7, :cond_8

    :cond_5
    if-lt v2, v6, :cond_6

    if-le v2, v5, :cond_8

    :cond_6
    const/16 v9, 0x30

    if-lt v2, v9, :cond_7

    const/16 v9, 0x39

    if-le v2, v9, :cond_8

    :cond_7
    if-eq v2, v3, :cond_8

    if-eq v2, v4, :cond_8

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    :cond_9
    :goto_1
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v1
.end method


# virtual methods
.method public nextIdentifier()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v0

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v1
.end method

.method public nextPropertyValue()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v3

    goto :goto_0

    :cond_3
    :goto_1
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-le v4, v0, :cond_4

    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return-object v1
.end method

.method public nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    :cond_1
    const/16 v4, 0x2b

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    :cond_2
    :goto_0
    const/16 v4, 0x2a

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v6, v2, v4}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v6

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_6

    :cond_5
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v3, :cond_6

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    :cond_6
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v6, "class"

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v3, v6, v7, v4}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_1

    :cond_7
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid \".class\" selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v3, :cond_9

    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    :cond_9
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v6, "id"

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v3, v6, v7, v4}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    goto :goto_2

    :cond_a
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_2
    if-nez v3, :cond_c

    goto/16 :goto_6

    :cond_c
    const/16 v4, 0x5b

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/4 v7, 0x0

    const/16 v8, 0x3d

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_d

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_3

    :cond_d
    const-string v8, "~="

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_3

    :cond_e
    const-string v8, "|="

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    :cond_f
    :goto_3
    if-eqz v7, :cond_11

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_4

    :cond_10
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid attribute selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_4
    const/16 v8, 0x5d

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_13

    if-nez v7, :cond_12

    sget-object v8, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_5

    :cond_12
    move-object v8, v7

    :goto_5
    invoke-virtual {v3, v4, v8, v6}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_1

    :cond_13
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid attribute selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid attribute selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_17

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    const/16 v5, 0x28

    invoke-virtual {p0, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_16

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_6

    :cond_16
    iget-object v5, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    nop

    :cond_17
    :goto_6
    if-eqz v3, :cond_18

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    const/4 v1, 0x1

    return v1

    :cond_18
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v1
.end method
