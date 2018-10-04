.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# static fields
.field public static final FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field private static final TO_HTML_PARAGRAPH_FLAG:I = 0x1

.field public static final TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 11

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v0, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    const-class v4, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ParagraphStyle;

    const-string v5, " "

    const/4 v6, 0x0

    move-object v7, v5

    move v5, v1

    :goto_1
    array-length v8, v4

    if-ge v5, v8, :cond_3

    aget-object v8, v4, v5

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_2

    aget-object v8, v4, v5

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v8

    const/4 v6, 0x1

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "align=\"center\" "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "align=\"right\" "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "align=\"left\" "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    const-string v5, "<div "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {p0, p1, v2, v3, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    if-eqz v6, :cond_5

    const-string v5, "</div>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move v2, v3

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 8

    new-instance v0, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v0}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    :try_start_0
    const-string v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v7, Landroid/text/HtmlToSpannedConverter;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V

    invoke-virtual {v1}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sub-int v1, p2, p1

    invoke-interface {v0, p0, p1, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " dir=\"rtl\""

    return-object v0

    :cond_0
    const-string v0, " dir=\"ltr\""

    return-object v0
.end method

.method private static getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "margin-top:0; margin-bottom:0;"

    :cond_0
    if-eqz p4, :cond_4

    const-class v2, Landroid/text/style/AlignmentSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_4

    aget-object v4, v2, v3

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    const/16 v6, 0x33

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_1

    const-string/jumbo v1, "text-align:start;"

    goto :goto_1

    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_2

    const-string/jumbo v1, "text-align:center;"

    goto :goto_1

    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v5, v6, :cond_4

    const-string/jumbo v1, "text-align:end;"

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    const-string v2, ""

    return-object v2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " style=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0, p1}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    :goto_0
    return-void
.end method

.method private static withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5

    const-string v0, "<p"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_5

    const/16 v1, 0xa

    invoke-static {p1, v1, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    if-gez v2, :cond_0

    move v2, p3

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v2, p3, :cond_1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sub-int v1, v2, v3

    invoke-static {p0, p1, v0, v1}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    const/4 v1, 0x1

    if-ne v3, v1, :cond_2

    const-string v1, "<br>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/4 v1, 0x2

    :goto_2
    if-ge v1, v3, :cond_3

    const-string v4, "<br>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-eq v2, p3, :cond_4

    const-string v1, "</p>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<p"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_3
    move v0, v2

    goto :goto_0

    :cond_5
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_a

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    if-gez v2, :cond_0

    move v2, p3

    :cond_0
    if-ne v2, v0, :cond_2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v3, "</ul>\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "<br>\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_2
    const/4 v3, 0x0

    const-class v4, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v0, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ParagraphStyle;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    invoke-interface {p1, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    and-int/lit8 v10, v9, 0x33

    const/16 v11, 0x33

    if-ne v10, v11, :cond_3

    instance-of v10, v8, Landroid/text/style/BulletSpan;

    if-eqz v10, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v5, 0x1

    if-eqz v3, :cond_5

    if-nez v1, :cond_5

    const/4 v1, 0x1

    const-string v7, "<ul"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v2, v5, v6}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ">\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v1, :cond_6

    if-nez v3, :cond_6

    const/4 v1, 0x0

    const-string v7, "</ul>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v3, :cond_7

    const-string v7, "li"

    goto :goto_3

    :cond_7
    const-string/jumbo v7, "p"

    :goto_3
    const-string v8, "<"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0, v2}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_8

    move v6, v5

    nop

    :cond_8
    invoke-static {p1, v0, v2, v6, v5}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, v0, v2}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    const-string v5, "</"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v2, p3, :cond_9

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    const-string v5, "</ul>\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .locals 8

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    const-class v1, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    const-class v2, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/QuoteSpan;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-static {p0, p1, v0, v1, p4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    const-string v6, "</blockquote>\n"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .locals 2

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/text/Html;->encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 11

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1c

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, p3, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    const-class v2, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_1
    array-length v5, v2

    const/4 v6, 0x1

    if-ge v0, v5, :cond_e

    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/StyleSpan;

    if-eqz v5, :cond_1

    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/StyleSpan;

    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_0

    const-string v7, "<b>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_1

    const-string v7, "<i>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/TypefaceSpan;

    if-eqz v5, :cond_2

    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v5}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "monospace"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "<tt>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/SuperscriptSpan;

    if-eqz v5, :cond_3

    const-string v5, "<sup>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/SubscriptSpan;

    if-eqz v5, :cond_4

    const-string v5, "<sub>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/UnderlineSpan;

    if-eqz v5, :cond_5

    const-string v5, "<u>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/StrikethroughSpan;

    if-eqz v5, :cond_6

    const-string v5, "<span style=\"text-decoration:line-through;\">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/URLSpan;

    if-eqz v5, :cond_7

    const-string v5, "<a href=\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/URLSpan;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/ImageSpan;

    if-eqz v5, :cond_8

    const-string v5, "<img src=\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/ImageSpan;

    invoke-virtual {v5}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v1

    :cond_8
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v5, :cond_a

    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v5}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v9

    :cond_9
    const-string v8, "<span style=\"font-size:%.0fpx\";>"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/RelativeSizeSpan;

    if-eqz v5, :cond_b

    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v5}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v5

    const-string v7, "<span style=\"font-size:%.2fem;\">"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/ForegroundColorSpan;

    const v7, 0xffffff

    if-eqz v5, :cond_c

    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v5

    const-string v8, "<span style=\"color:#%06X;\">"

    new-array v9, v6, [Ljava/lang/Object;

    and-int v10, v7, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    aget-object v5, v2, v0

    instance-of v5, v5, Landroid/text/style/BackgroundColorSpan;

    if-eqz v5, :cond_d

    aget-object v5, v2, v0

    check-cast v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v5}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v5

    const-string v8, "<span style=\"background-color:#%06X;\">"

    new-array v6, v6, [Ljava/lang/Object;

    and-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_e
    invoke-static {p0, p1, v4, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    array-length v0, v2

    sub-int/2addr v0, v6

    :goto_2
    if-ltz v0, :cond_1b

    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/BackgroundColorSpan;

    if-eqz v3, :cond_f

    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/ForegroundColorSpan;

    if-eqz v3, :cond_10

    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/RelativeSizeSpan;

    if-eqz v3, :cond_11

    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v3, :cond_12

    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/URLSpan;

    if-eqz v3, :cond_13

    const-string v3, "</a>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/StrikethroughSpan;

    if-eqz v3, :cond_14

    const-string v3, "</span>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v3, :cond_15

    const-string v3, "</u>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/SubscriptSpan;

    if-eqz v3, :cond_16

    const-string v3, "</sub>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/SuperscriptSpan;

    if-eqz v3, :cond_17

    const-string v3, "</sup>"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/TypefaceSpan;

    if-eqz v3, :cond_18

    aget-object v3, v2, v0

    check-cast v3, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v3}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "monospace"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "</tt>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    aget-object v3, v2, v0

    instance-of v3, v3, Landroid/text/style/StyleSpan;

    if-eqz v3, :cond_1a

    aget-object v3, v2, v0

    check-cast v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v3}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v3

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_19

    const-string v5, "</b>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_1a

    const-string v5, "</i>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    :cond_1b
    move v0, v1

    goto/16 :goto_0

    :cond_1c
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 6

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_a

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    const/16 v2, 0x3e

    if-ne v1, v2, :cond_1

    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1
    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    const v2, 0xd800

    if-lt v1, v2, :cond_4

    const v3, 0xdfff

    if-gt v1, v3, :cond_4

    const v4, 0xdc00

    if-ge v1, v4, :cond_9

    add-int/lit8 v5, v0, 0x1

    if-ge v5, p3, :cond_9

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_3

    if-gt v5, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/high16 v3, 0x10000

    sub-int v2, v1, v2

    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v2, v3

    sub-int v3, v5, v4

    or-int/2addr v2, v3

    const-string v3, "&#"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    goto :goto_3

    :cond_4
    const/16 v2, 0x7e

    if-gt v1, v2, :cond_8

    const/16 v2, 0x20

    if-ge v1, v2, :cond_5

    goto :goto_2

    :cond_5
    if-ne v1, v2, :cond_7

    :goto_1
    add-int/lit8 v3, v0, 0x1

    if-ge v3, p3, :cond_6

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_6

    const-string v3, "&nbsp;"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    :goto_2
    const-string v2, "&#"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
