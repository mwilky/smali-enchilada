.class public Lcom/caverock/androidsvg/CSSParser;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$Attrib;,
        Lcom/caverock/androidsvg/CSSParser$AttribOp;,
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;,
        Lcom/caverock/androidsvg/CSSParser$Combinator;,
        Lcom/caverock/androidsvg/CSSParser$MediaType;,
        Lcom/caverock/androidsvg/CSSParser$Rule;,
        Lcom/caverock/androidsvg/CSSParser$Ruleset;,
        Lcom/caverock/androidsvg/CSSParser$Selector;,
        Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    }
.end annotation


# static fields
.field private static final CLASS:Ljava/lang/String; = "class"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "AndroidSVG CSSParser"


# instance fields
.field private inMediaRule:Z

.field private rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/CSSParser$MediaType;)V
    .locals 1
    .param p1, "rendererMediaType"    # Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 284
    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 285
    return-void
.end method

.method private static getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I
    .locals 4
    .param p1, "ancestorsPos"    # I
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")I"
        }
    .end annotation

    .line 867
    .local p0, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    const/4 v0, -0x1

    if-gez p1, :cond_0

    .line 868
    return v0

    .line 869
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eq v1, v2, :cond_1

    .line 870
    return v0

    .line 871
    :cond_1
    const/4 v1, 0x0

    .line 872
    .local v1, "childPos":I
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 878
    return v0

    .line 872
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 874
    .local v3, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-ne v3, p2, :cond_3

    .line 875
    return v1

    .line 876
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .end local v3    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0
.end method

.method public static mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 4
    .param p0, "mediaListStr"    # Ljava/lang/String;
    .param p1, "rendererMediaType"    # Lcom/caverock/androidsvg/CSSParser$MediaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 299
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "scan":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 301
    invoke-static {v0}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v1

    .line 302
    .local v1, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-static {v1, p1}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v2

    return v2

    .line 303
    :cond_0
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid @media type list"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 3
    .param p1, "rendererMediaType"    # Lcom/caverock/androidsvg/CSSParser$MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ")Z"
        }
    .end annotation

    .line 553
    .local p0, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 557
    const/4 v0, 0x0

    return v0

    .line 553
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 554
    .local v1, "type":Lcom/caverock/androidsvg/CSSParser$MediaType;
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-eq v1, v2, :cond_2

    if-ne v1, p1, :cond_0

    .line 555
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 5
    .param p1, "ruleset"    # Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .param p2, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 581
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "atKeyword":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 583
    if-eqz v0, :cond_4

    .line 585
    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 587
    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v1

    .line 588
    .local v1, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    const/16 v4, 0x7b

    invoke-virtual {p2, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 591
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 592
    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser;->rendererMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v1, v4}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    iput-boolean v3, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 594
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 595
    iput-boolean v2, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 596
    goto :goto_0

    .line 597
    :cond_0
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 600
    :goto_0
    const/16 v2, 0x7d

    invoke-virtual {p2, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v1    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    goto :goto_1

    .line 601
    .restart local v1    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid @media rule: expected \'}\' at end of rule set"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 589
    :cond_2
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Invalid @media rule: missing rule set"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 609
    .end local v1    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    :cond_3
    const-string v1, "Ignoring @%s rule"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/caverock/androidsvg/CSSParser;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    .line 612
    :goto_1
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 613
    return-void

    .line 584
    :cond_4
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Invalid \'@\' rule in <style> element"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static parseClassAttribute(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 752
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 753
    .local v0, "scan":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    const/4 v1, 0x0

    .line 755
    .local v1, "classNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    return-object v1

    .line 757
    :cond_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, "className":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 760
    if-nez v1, :cond_1

    .line 761
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 762
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .end local v2    # "className":Ljava/lang/String;
    goto :goto_0

    .line 759
    .restart local v2    # "className":Ljava/lang/String;
    :cond_2
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid value for \"class\" attribute: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;
    .locals 5
    .param p1, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 714
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    .line 717
    .local v0, "ruleStyle":Lcom/caverock/androidsvg/SVG$Style;
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, "propertyName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 719
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 721
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 722
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextPropertyValue()Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "propertyValue":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 726
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 727
    const/16 v3, 0x21

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 729
    const-string v3, "important"

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 733
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_1

    .line 730
    :cond_0
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Malformed rule set in <style> element: found unexpected \'!\'"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 735
    :cond_1
    :goto_1
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    .line 736
    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 738
    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 739
    return-object v0

    .line 740
    :cond_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_5

    .end local v1    # "propertyName":Ljava/lang/String;
    .end local v2    # "propertyValue":Ljava/lang/String;
    goto :goto_0

    .line 724
    .restart local v1    # "propertyName":Ljava/lang/String;
    .restart local v2    # "propertyValue":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 720
    .end local v2    # "propertyValue":Ljava/lang/String;
    :cond_4
    nop

    .line 743
    .end local v1    # "propertyName":Ljava/lang/String;
    :cond_5
    :goto_2
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Malformed rule set in <style> element"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 5
    .param p0, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v0, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 565
    :cond_1
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "type":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser$MediaType;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    nop

    .line 572
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v2

    if-nez v2, :cond_0

    .line 573
    nop

    .line 575
    .end local v1    # "type":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 568
    .restart local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 569
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Invalid @media type list"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z
    .locals 5
    .param p1, "ruleset"    # Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .param p2, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 661
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseSelectorGroup(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v0

    .line 662
    .local v0, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$Selector;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 666
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 667
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    .line 668
    .local v1, "ruleStyle":Lcom/caverock/androidsvg/SVG$Style;
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 669
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 672
    const/4 v2, 0x1

    return v2

    .line 669
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 670
    .local v3, "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Rule;

    invoke-direct {v4, v3, v1}, Lcom/caverock/androidsvg/CSSParser$Rule;-><init>(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$Style;)V

    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->add(Lcom/caverock/androidsvg/CSSParser$Rule;)V

    .end local v3    # "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    goto :goto_0

    .line 665
    .end local v1    # "ruleStyle":Lcom/caverock/androidsvg/SVG$Style;
    :cond_1
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Malformed rule block in <style> element: missing \'{\'"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 2
    .param p1, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 637
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    .line 638
    .local v0, "ruleset":Lcom/caverock/androidsvg/CSSParser$Ruleset;
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 640
    :cond_0
    const-string v1, "<!--"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    goto :goto_0

    .line 642
    :cond_1
    const-string v1, "-->"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 643
    goto :goto_0

    .line 645
    :cond_2
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 646
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    .line 647
    goto :goto_0

    .line 649
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 655
    :cond_4
    :goto_1
    return-object v0
.end method

.method private parseSelectorGroup(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 3
    .param p1, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 686
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const/4 v0, 0x0

    return-object v0

    .line 689
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 690
    .local v0, "selectorGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/caverock/androidsvg/CSSParser$Selector;>;"
    new-instance v1, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v1}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    .line 692
    .local v1, "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 694
    :cond_1
    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 697
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v2

    if-nez v2, :cond_2

    .line 698
    goto :goto_0

    .line 699
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v2}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    move-object v1, v2

    goto :goto_0

    .line 705
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 706
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_4
    return-object v0
.end method

.method private static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 4
    .param p0, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .param p1, "selPartPos"    # I
    .param p3, "ancestorsPos"    # I
    .param p4, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .line 798
    .local p2, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v0

    .line 799
    .local v0, "sel":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-static {v0, p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 800
    return v2

    .line 803
    :cond_0
    iget-object v1, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v1, v3, :cond_4

    .line 805
    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 806
    return v1

    .line 808
    :cond_1
    :goto_0
    if-gez p3, :cond_2

    .line 813
    return v2

    .line 809
    :cond_2
    add-int/lit8 v3, p1, -0x1

    invoke-static {p0, v3, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 810
    return v1

    .line 811
    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 815
    :cond_4
    iget-object v1, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v1, v3, :cond_5

    .line 817
    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v1

    return v1

    .line 821
    :cond_5
    invoke-static {p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v1

    .line 822
    .local v1, "childPos":I
    if-gtz v1, :cond_6

    .line 823
    return v2

    .line 824
    :cond_6
    iget-object v2, p4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 825
    .local v2, "prevSibling":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    add-int/lit8 v3, p1, -0x1

    invoke-static {p0, v3, p2, p3, v2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    return v3
.end method

.method protected static ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 6
    .param p0, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v0, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 777
    .local v1, "parent":Lcom/caverock/androidsvg/SVG$SvgContainer;
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 782
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 785
    .local v3, "ancestorsPos":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 786
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v2

    invoke-static {v2, v0, v3, p1}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    return v2

    .line 790
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {p0, v2, v0, v3, p1}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    return v2

    .line 778
    .end local v3    # "ancestorsPos":I
    :cond_1
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 779
    move-object v2, v1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto :goto_0
.end method

.method private static ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z
    .locals 5
    .param p0, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .param p1, "selPartPos"    # I
    .param p3, "ancestorsPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I)Z"
        }
    .end annotation

    .line 832
    .local p2, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v0

    .line 833
    .local v0, "sel":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 835
    .local v1, "obj":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    invoke-static {v0, p2, p3, v1}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 836
    return v3

    .line 839
    :cond_0
    iget-object v2, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v2, v4, :cond_3

    .line 841
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 842
    return v2

    .line 844
    :cond_1
    if-gtz p3, :cond_2

    .line 848
    return v3

    .line 845
    :cond_2
    add-int/lit8 v4, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, v4, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 846
    return v2

    .line 850
    :cond_3
    iget-object v2, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v2, v4, :cond_4

    .line 852
    add-int/lit8 v2, p1, -0x1

    add-int/lit8 v3, p3, -0x1

    invoke-static {p0, v2, p2, v3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v2

    return v2

    .line 856
    :cond_4
    invoke-static {p2, p3, v1}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v2

    .line 857
    .local v2, "childPos":I
    if-gtz v2, :cond_5

    .line 858
    return v3

    .line 859
    :cond_5
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 860
    .local v3, "prevSibling":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    add-int/lit8 v4, p1, -0x1

    invoke-static {p0, v4, p2, p3, v3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v4

    return v4
.end method

.method private static selectorMatch(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 5
    .param p0, "sel"    # Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .param p2, "ancestorsPos"    # I
    .param p3, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .line 885
    .local p1, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const-string v2, "G"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    instance-of v0, p3, Lcom/caverock/androidsvg/SVG$Group;

    if-nez v0, :cond_1

    .line 890
    return v1

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 895
    return v1

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 903
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$Attrib;

    .line 905
    .local v2, "attr":Lcom/caverock/androidsvg/CSSParser$Attrib;
    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    const-string v4, "id"

    if-ne v3, v4, :cond_4

    .line 907
    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    iget-object v4, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 908
    return v1

    .line 910
    :cond_4
    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    const-string v4, "class"

    if-ne v3, v4, :cond_6

    .line 912
    iget-object v3, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    if-nez v3, :cond_5

    .line 913
    return v1

    .line 914
    :cond_5
    iget-object v3, p3, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    iget-object v4, v2, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 915
    return v1

    .line 920
    :cond_6
    return v1

    .line 926
    .end local v2    # "attr":Lcom/caverock/androidsvg/CSSParser$Attrib;
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 927
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 928
    .local v2, "pseudo":Ljava/lang/String;
    const-string v3, "first-child"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 929
    invoke-static {p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 930
    return v1

    .line 932
    :cond_a
    return v1

    .line 938
    .end local v2    # "pseudo":Ljava/lang/String;
    :cond_b
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 3
    .param p1, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    return-void

    .line 622
    :cond_1
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 623
    .local v1, "ch":I
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 624
    return-void

    .line 625
    :cond_2
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_3

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    :cond_3
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 628
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 629
    return-void
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 313
    const-string v0, "AndroidSVG CSSParser"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 2
    .param p1, "sheet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 290
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "scan":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 293
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v1

    return-object v1
.end method
