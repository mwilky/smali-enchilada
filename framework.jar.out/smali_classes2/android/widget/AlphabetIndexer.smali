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
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "alphabet"    # Ljava/lang/CharSequence;

    .line 82
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 84
    iput p2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    .line 85
    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 86
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    .line 87
    iget v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v1, v2, :cond_0

    .line 89
    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 92
    if-eqz p1, :cond_1

    .line 93
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 96
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 97
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 98
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "letter"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string v0, " "

    .local v0, "firstLetter":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v0    # "firstLetter":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 134
    .restart local v0    # "firstLetter":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getPositionForSection(I)I
    .locals 13
    .param p1, "sectionIndex"    # I

    .line 147
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 148
    .local v0, "alphaMap":Landroid/util/SparseIntArray;
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 150
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-object v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 155
    :cond_0
    if-gtz p1, :cond_1

    .line 156
    return v2

    .line 158
    :cond_1
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-lt p1, v2, :cond_2

    .line 159
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    add-int/lit8 p1, v2, -0x1

    .line 162
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 164
    .local v2, "savedCursorPos":I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 165
    .local v3, "count":I
    const/4 v4, 0x0

    .line 166
    .local v4, "start":I
    move v5, v3

    .line 169
    .local v5, "end":I
    iget-object v6, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 170
    .local v6, "letter":C
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "targetLetter":Ljava/lang/String;
    move v8, v6

    .line 173
    .local v8, "key":I
    const/high16 v9, -0x80000000

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    move v11, v10

    .local v11, "pos":I
    if-eq v9, v10, :cond_4

    .line 177
    if-gez v11, :cond_3

    .line 178
    neg-int v11, v11

    .line 179
    move v5, v11

    goto :goto_0

    .line 182
    :cond_3
    return v11

    .line 187
    :cond_4
    :goto_0
    if-lez p1, :cond_5

    .line 188
    iget-object v10, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v12, p1, -0x1

    .line 189
    invoke-interface {v10, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 190
    .local v10, "prevLetter":I
    invoke-virtual {v0, v10, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 191
    .local v12, "prevLetterPos":I
    if-eq v12, v9, :cond_5

    .line 192
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 198
    .end local v10    # "prevLetter":I
    .end local v12    # "prevLetterPos":I
    :cond_5
    add-int v9, v5, v4

    div-int/lit8 v9, v9, 0x2

    .line 200
    .end local v11    # "pos":I
    .local v9, "pos":I
    :goto_1
    if-ge v9, v5, :cond_c

    .line 202
    invoke-interface {v1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 203
    iget v10, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 204
    .local v10, "curName":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 205
    if-nez v9, :cond_6

    .line 206
    goto :goto_3

    .line 208
    :cond_6
    add-int/lit8 v9, v9, -0x1

    .line 209
    goto :goto_1

    .line 212
    :cond_7
    invoke-virtual {p0, v10, v7}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 213
    .local v11, "diff":I
    if-eqz v11, :cond_9

    .line 225
    if-gez v11, :cond_8

    .line 226
    add-int/lit8 v4, v9, 0x1

    .line 227
    if-lt v4, v3, :cond_b

    .line 228
    move v9, v3

    .line 229
    goto :goto_3

    .line 232
    :cond_8
    move v5, v9

    goto :goto_2

    .line 236
    :cond_9
    if-ne v4, v9, :cond_a

    .line 238
    goto :goto_3

    .line 241
    :cond_a
    move v5, v9

    .line 244
    :cond_b
    :goto_2
    add-int v12, v4, v5

    div-int/lit8 v9, v12, 0x2

    .line 245
    .end local v10    # "curName":Ljava/lang/String;
    .end local v11    # "diff":I
    goto :goto_1

    .line 246
    :cond_c
    :goto_3
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 248
    return v9

    .line 151
    .end local v2    # "savedCursorPos":I
    .end local v3    # "count":I
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "letter":C
    .end local v7    # "targetLetter":Ljava/lang/String;
    .end local v8    # "key":I
    .end local v9    # "pos":I
    :cond_d
    :goto_4
    return v2
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .line 256
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 257
    .local v0, "savedCursorPos":I
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 258
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    iget v2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "curName":Ljava/lang/String;
    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 262
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    if-ge v3, v4, :cond_1

    .line 263
    iget-object v4, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 264
    .local v4, "letter":C
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "targetLetter":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 266
    return v3

    .line 262
    .end local v4    # "letter":C
    .end local v5    # "targetLetter":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    .end local v3    # "i":I
    :cond_1
    return v2
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .line 277
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 278
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 279
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 286
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 287
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 288
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 113
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    :cond_0
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 117
    if-eqz p1, :cond_1

    .line 118
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 120
    :cond_1
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 121
    return-void
.end method
