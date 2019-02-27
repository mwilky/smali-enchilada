.class Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineTextSegmentIterator"
.end annotation


# static fields
.field protected static final DIRECTION_END:I = 0x1

.field protected static final DIRECTION_START:I = -0x1

.field private static sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;


# instance fields
.field protected mLayout:Landroid/text/Layout;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
    .locals 1

    sget-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    invoke-direct {v0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    :cond_0
    sget-object v0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->sLineInstance:Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 6

    iget-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-gez p1, :cond_2

    iget-object v4, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {p0, v4, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v5

    if-ne v5, p1, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    add-int/2addr v4, v3

    :goto_0
    iget-object v5, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-lt v4, v5, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0, v4, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v1

    invoke-virtual {p0, v4, v3}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method

.method protected getLineEdgeIndex(II)I
    .locals 2

    iget-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    mul-int v1, p2, v0

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public initialize(Landroid/text/Spannable;Landroid/text/Layout;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    iput-object p2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    return-void
.end method

.method public preceding(I)[I
    .locals 5

    iget-object v0, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le p1, v2, :cond_2

    iget-object v2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    iget-object v4, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v4

    add-int/2addr v4, v3

    if-ne v4, p1, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    sub-int/2addr v2, v3

    :goto_0
    if-gez v2, :cond_4

    return-object v1

    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v1

    invoke-virtual {p0, v2, v3}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v4}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method
