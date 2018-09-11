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
    .param p1, "input"    # Ljava/lang/String;

    .line 339
    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private nextAttribValue()Ljava/lang/String;
    .locals 2

    .line 513
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x0

    return-object v0

    .line 516
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 518
    return-object v0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private scanForIdentifier()I
    .locals 10

    .line 357
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v0

    .line 359
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 360
    .local v0, "start":I
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 362
    .local v1, "lastValidPos":I
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 363
    .local v2, "ch":I
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    .line 366
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

    .line 368
    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    .line 370
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

    .line 373
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_1

    .line 371
    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    .line 375
    :cond_9
    :goto_1
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 376
    return v1
.end method


# virtual methods
.method public nextIdentifier()Ljava/lang/String;
    .locals 3

    .line 347
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v0

    .line 348
    .local v0, "end":I
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-ne v0, v1, :cond_0

    .line 349
    const/4 v1, 0x0

    return-object v1

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "result":Ljava/lang/String;
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 352
    return-object v1
.end method

.method public nextPropertyValue()Ljava/lang/String;
    .locals 5

    .line 527
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 528
    return-object v1

    .line 529
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 530
    .local v0, "start":I
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 532
    .local v2, "lastValidPos":I
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 533
    .local v3, "ch":I
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

    .line 534
    :cond_1
    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 535
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 536
    .end local v2    # "lastValidPos":I
    .local v4, "lastValidPos":I
    move v2, v4

    .end local v4    # "lastValidPos":I
    .restart local v2    # "lastValidPos":I
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v3

    goto :goto_0

    .line 538
    :cond_3
    :goto_1
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-le v4, v0, :cond_4

    .line 539
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 540
    :cond_4
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 541
    return-object v1
.end method

.method public nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .locals 9
    .param p1, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 387
    return v1

    .line 389
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 390
    .local v0, "start":I
    const/4 v2, 0x0

    .line 391
    .local v2, "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    const/4 v3, 0x0

    .line 393
    .local v3, "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 395
    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 396
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 397
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 398
    goto :goto_0

    :cond_1
    const/16 v4, 0x2b

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 399
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 400
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 404
    :cond_2
    :goto_0
    const/16 v4, 0x2a

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 405
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    .line 406
    goto :goto_1

    .line 407
    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "tag":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 409
    new-instance v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v6, v2, v4}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v6

    .line 410
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    .line 414
    .end local v4    # "tag":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_6

    .line 416
    :cond_5
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 419
    if-nez v3, :cond_6

    .line 420
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    .line 421
    :cond_6
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 424
    const-string v6, "class"

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v3, v6, v7, v4}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 426
    goto :goto_1

    .line 423
    :cond_7
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid \".class\" selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    .end local v4    # "value":Ljava/lang/String;
    :cond_8
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 432
    if-nez v3, :cond_9

    .line 433
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    .line 434
    :cond_9
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 435
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 437
    const-string v6, "id"

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v3, v6, v7, v4}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    .end local v4    # "value":Ljava/lang/String;
    goto :goto_2

    .line 436
    .restart local v4    # "value":Ljava/lang/String;
    :cond_a
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    .end local v4    # "value":Ljava/lang/String;
    :cond_b
    :goto_2
    if-nez v3, :cond_c

    .line 442
    goto/16 :goto_6

    .line 445
    :cond_c
    const/16 v4, 0x5b

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 447
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 448
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, "attrName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 450
    .local v6, "attrValue":Ljava/lang/String;
    if-eqz v4, :cond_14

    .line 452
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 453
    const/4 v7, 0x0

    .line 454
    .local v7, "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    const/16 v8, 0x3d

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 455
    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_3

    .line 456
    :cond_d
    const-string v8, "~="

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 457
    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_3

    .line 458
    :cond_e
    const-string v8, "|="

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 459
    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 460
    :cond_f
    :goto_3
    if-eqz v7, :cond_11

    .line 461
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 462
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v6

    .line 463
    if-eqz v6, :cond_10

    .line 465
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_4

    .line 464
    :cond_10
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid attribute selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_11
    :goto_4
    const/16 v8, 0x5d

    invoke-virtual {p0, v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 469
    if-nez v7, :cond_12

    sget-object v8, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_5

    :cond_12
    move-object v8, v7

    :goto_5
    invoke-virtual {v3, v4, v8, v6}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 471
    goto/16 :goto_1

    .line 468
    :cond_13
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid attribute selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    .end local v7    # "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    :cond_14
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v5, "Invalid attribute selector in <style> element"

    invoke-direct {v1, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v6    # "attrValue":Ljava/lang/String;
    :cond_15
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 477
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 478
    .local v4, "pseudoStart":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 479
    const/16 v5, 0x28

    invoke-virtual {p0, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 480
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 481
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 482
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 483
    const/16 v5, 0x29

    invoke-virtual {p0, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    if-nez v5, :cond_16

    .line 484
    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 485
    goto :goto_6

    .line 489
    :cond_16
    iget-object v5, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 494
    .end local v4    # "pseudoStart":I
    nop

    .line 497
    :cond_17
    :goto_6
    if-eqz v3, :cond_18

    .line 499
    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    .line 500
    const/4 v1, 0x1

    return v1

    .line 504
    :cond_18
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 505
    return v1
.end method
