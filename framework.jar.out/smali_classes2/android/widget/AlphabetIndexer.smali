.class public Landroid/widget/AlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "AlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 4

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iput p2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    iget v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getPositionForSection(I)I
    .locals 13

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-object v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-gtz p1, :cond_1

    return v2

    :cond_1
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-lt p1, v2, :cond_2

    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    add-int/lit8 p1, v2, -0x1

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v3

    iget-object v6, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    move v8, v6

    const/high16 v9, -0x80000000

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    move v11, v10

    if-eq v9, v10, :cond_4

    if-gez v11, :cond_3

    neg-int v11, v11

    move v5, v11

    goto :goto_0

    :cond_3
    return v11

    :cond_4
    :goto_0
    if-lez p1, :cond_5

    iget-object v10, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v12, p1, -0x1

    invoke-interface {v10, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v0, v10, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    if-eq v12, v9, :cond_5

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    :cond_5
    add-int v9, v5, v4

    div-int/lit8 v9, v9, 0x2

    :goto_1
    if-ge v9, v5, :cond_c

    invoke-interface {v1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget v10, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v10, v7}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_9

    if-gez v11, :cond_8

    add-int/lit8 v4, v9, 0x1

    if-lt v4, v3, :cond_b

    move v9, v3

    goto :goto_3

    :cond_8
    move v5, v9

    goto :goto_2

    :cond_9
    if-ne v4, v9, :cond_a

    goto :goto_3

    :cond_a
    move v5, v9

    :cond_b
    :goto_2
    add-int v12, v4, v5

    div-int/lit8 v9, v12, 0x2

    goto :goto_1

    :cond_c
    :goto_3
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    return v9

    :cond_d
    :goto_4
    return v2
.end method

.method public getSectionForPosition(I)I
    .locals 7

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
