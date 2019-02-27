.class public Landroid/text/method/MultiTapKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "MultiTapKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MultiTapKeyListener$Timeout;
    }
.end annotation


# static fields
.field private static sInstance:[Landroid/text/method/MultiTapKeyListener;

.field private static final sRecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoText:Z

.field private mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/MultiTapKeyListener;

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, ".,1!@#$%^&*:/?\'=()"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "abc2ABC"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "def3DEF"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "ghi4GHI"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "jkl5JKL"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string/jumbo v1, "mno6MNO"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string/jumbo v1, "pqrs7PQRS"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string/jumbo v1, "tuv8TUV"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string/jumbo v1, "wxyz9WXYZ"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, "0+"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    const-string v1, " "

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    iput-boolean p2, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;
    .locals 3

    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    new-instance v2, Landroid/text/method/MultiTapKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/MultiTapKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    :cond_0
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private static removeTimeouts(Landroid/text/Spannable;)V
    .locals 4

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/MultiTapKeyListener$Timeout;

    nop

    :goto_0
    move v1, v2

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2, v2}, Landroid/text/method/MultiTapKeyListener$Timeout;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/method/MultiTapKeyListener$Timeout;->access$002(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)Landroid/text/Editable;

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/MultiTapKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v1

    :cond_0
    move v9, v1

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    ushr-int/lit8 v14, v1, 0x18

    const/16 v1, 0x11

    const/4 v6, 0x1

    if-ne v12, v10, :cond_4

    if-ne v13, v11, :cond_4

    sub-int v2, v11, v10

    if-ne v2, v6, :cond_4

    if-ltz v14, :cond_4

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v14, v2, :cond_4

    if-ne v8, v1, :cond_2

    invoke-interface {v7, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v10, v11, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v1, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    return v6

    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_2

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v10, v11, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v1, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    return v6

    :cond_2
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ne v2, v14, :cond_3

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-interface {v7, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    rem-int v15, v1, v3

    add-int/lit8 v16, v15, 0x1

    move-object v1, v7

    move v2, v10

    move v3, v11

    move/from16 v17, v4

    move-object v4, v5

    move-object/from16 v18, v5

    move v5, v15

    move/from16 v19, v6

    move/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v1, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    return v19

    :cond_3
    move/from16 v19, v6

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_5

    invoke-static {v7, v11, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v3, v11

    move v10, v2

    move v14, v3

    goto :goto_0

    :cond_4
    move/from16 v19, v6

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    :cond_5
    move v14, v10

    move v10, v2

    :goto_0
    if-ltz v10, :cond_c

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    const/4 v2, 0x0

    and-int/lit8 v3, v9, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    iget-object v3, v0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v3, v7, v14}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v5

    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    move v15, v2

    if-eq v14, v11, :cond_8

    invoke-static {v7, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_8
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v7, v2, v14, v14, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v16, v15, 0x1

    move-object v1, v7

    move v2, v14

    move v3, v11

    move-object v4, v6

    move/from16 v20, v9

    move v9, v5

    move v5, v15

    move-object/from16 v17, v6

    move/from16 v6, v16

    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    sget-object v1, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-eq v2, v1, :cond_9

    invoke-static {v7, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    sget-object v3, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v4, 0x21

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    sget-object v3, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    shl-int/lit8 v5, v10, 0x18

    or-int/2addr v4, v5

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    new-instance v3, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v3, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    invoke-interface {v7, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_b

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Landroid/text/method/KeyListener;

    invoke-interface {v7, v9, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/KeyListener;

    array-length v4, v3

    move v5, v9

    :goto_3
    if-ge v5, v4, :cond_a

    aget-object v6, v3, v5

    invoke-interface {v7, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v7, v0, v9, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    return v19

    :cond_c
    move/from16 v20, v9

    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method
