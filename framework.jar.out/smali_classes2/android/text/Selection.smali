.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$MEMORY;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$PositionIterator;,
        Landroid/text/Selection$MemoryTextWatcher;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field private static final SELECTION_MEMORY:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/Selection$MEMORY;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/Selection$MEMORY;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    return-object v0
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 5

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    if-gez p1, :cond_1

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    return p2

    :cond_0
    return p3

    :cond_1
    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    return p2

    :cond_2
    return p3

    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v3

    if-ne v3, p1, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4

    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 9

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    if-ge v7, v0, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v6

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    return v8

    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    if-eq v6, v0, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    return v8

    :cond_1
    return v8
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method private static extendSelection(Landroid/text/Spannable;II)V
    .locals 2

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-static {p0, p2}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v1

    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return v0
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 9

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v6

    invoke-static/range {v0 .. v5}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    return v8

    :cond_0
    if-eqz v6, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    return v8

    :cond_1
    return v8
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 5

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    mul-int v3, p2, v2

    if-gez v3, :cond_0

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    return v3

    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v3, -0x1

    return v4
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 2

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static getSelectionMemory(Ljava/lang/CharSequence;)I
    .locals 2

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 2

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    sget-object v1, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eq v0, v7, :cond_1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-nez v2, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    return v8

    :cond_1
    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v8

    if-ge v9, v2, :cond_2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    return v8

    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    if-eq v7, v2, :cond_3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v8

    :cond_3
    return v1
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/4 v3, -0x1

    invoke-static {p1, v3, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 4

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {p1, v2, v0, v1}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v3

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v1

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v0
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-eq v0, v7, :cond_1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    if-nez v2, :cond_0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    return v8

    :cond_1
    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    if-lez v9, :cond_2

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v9

    move v4, v7

    invoke-static/range {v1 .. v6}, Landroid/text/Selection;->setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V

    return v8

    :cond_2
    if-eqz v7, :cond_3

    invoke-static {p0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return v8

    :cond_3
    return v1
.end method

.method private static removeMemory(Landroid/text/Spannable;)V
    .locals 4

    sget-object v0, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/Selection$MemoryTextWatcher;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Selection$MemoryTextWatcher;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 2

    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v1, 0x200

    invoke-interface {p0, v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;I)V

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0

    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    return-void
.end method

.method private static setSelection(Landroid/text/Spannable;III)V
    .locals 4

    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_1

    :cond_0
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v3, 0x222

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {p0, p3}, Landroid/text/Selection;->updateMemory(Landroid/text/Spannable;I)V

    :cond_1
    return-void
.end method

.method private static setSelectionAndMemory(Landroid/text/Spannable;Landroid/text/Layout;IIIZ)V
    .locals 4

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    add-int v1, p2, p4

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    add-int v2, p2, p4

    invoke-virtual {p1, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    nop

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    add-int v2, p2, p4

    invoke-virtual {p1, v2, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    nop

    move v1, p3

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    add-int v0, p2, p4

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    move v3, v2

    move v2, v0

    move v0, v3

    :goto_1
    if-eqz p5, :cond_2

    invoke-static {p0, v2, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;II)V

    goto :goto_2

    :cond_2
    invoke-static {p0, v2, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;III)V

    :goto_2
    return-void
.end method

.method private static updateMemory(Landroid/text/Spannable;I)V
    .locals 5

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionMemory(Ljava/lang/CharSequence;)I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v2, Landroid/text/Selection;->SELECTION_MEMORY:Ljava/lang/Object;

    const/16 v3, 0x22

    invoke-interface {p0, v2, p1, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    if-ne v1, v0, :cond_0

    new-instance v0, Landroid/text/Selection$MemoryTextWatcher;

    invoke-direct {v0}, Landroid/text/Selection$MemoryTextWatcher;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {p0, v0, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/text/Selection;->removeMemory(Landroid/text/Spannable;)V

    :goto_0
    return-void
.end method
