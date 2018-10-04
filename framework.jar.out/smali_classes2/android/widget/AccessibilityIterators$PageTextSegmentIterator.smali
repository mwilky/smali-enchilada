.class Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
.super Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageTextSegmentIterator"
.end annotation


# static fields
.field private static sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field private mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static getInstance()Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;
    .locals 1

    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    invoke-direct {v0}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    :cond_0
    sget-object v0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->sPageInstance:Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;

    return-object v0
.end method


# virtual methods
.method public following(I)[I
    .locals 10

    iget-object v0, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v5, v3, v4

    iget-object v6, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    iget-object v7, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v7, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    :goto_0
    sub-int/2addr v7, v8

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v7, v8}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {p0, v1, v9}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object v8

    return-object v8
.end method

.method public initialize(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getIterableTextForAccessibility()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-super {p0, v0, v1}, Landroid/widget/AccessibilityIterators$LineTextSegmentIterator;->initialize(Landroid/text/Spannable;Landroid/text/Layout;)V

    iput-object p1, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    return-void
.end method

.method public preceding(I)[I
    .locals 9

    iget-object v0, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    :cond_0
    if-gtz p1, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v5, v3, v4

    if-lez v5, :cond_3

    iget-object v6, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mLayout:Landroid/text/Layout;

    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_4

    if-ge v6, v2, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getLineEdgeIndex(II)I

    move-result v7

    invoke-virtual {p0, v7, v1}, Landroid/widget/AccessibilityIterators$PageTextSegmentIterator;->getRange(II)[I

    move-result-object v8

    return-object v8
.end method
