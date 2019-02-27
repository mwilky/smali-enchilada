.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_ADDED:I = 0x800

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"

.field private static final sCachedIntBuffer:[[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCachedIntBuffer"
    .end annotation
.end field


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWaterMark:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanInsertCount:I

.field private mSpanMax:[I

.field private mSpanOrder:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C

.field private mTextWatcherDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1776
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/text/InputFilter;

    sput-object v1, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 1779
    const/4 v1, 0x6

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 63
    move/from16 v10, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 64
    sub-int v11, v10, v9

    .line 66
    .local v11, "srclen":I
    if-ltz v11, :cond_7

    .line 68
    invoke-static {v11}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 69
    iput v11, v7, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 70
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    sub-int/2addr v0, v11

    iput v0, v7, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 72
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mText:[C

    const/4 v1, 0x0

    invoke-static {v8, v9, v10, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 74
    iput v1, v7, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 75
    iput v1, v7, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 77
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 78
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 79
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 80
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 81
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, v7, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 83
    instance-of v0, v8, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 84
    move-object v12, v8

    check-cast v12, Landroid/text/Spanned;

    .line 85
    .local v12, "sp":Landroid/text/Spanned;
    const-class v0, Ljava/lang/Object;

    invoke-interface {v12, v9, v10, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    .line 87
    .local v13, "spans":[Ljava/lang/Object;
    nop

    .local v1, "i":I
    :goto_0
    move v14, v1

    .end local v1    # "i":I
    .local v14, "i":I
    array-length v0, v13

    if-ge v14, v0, :cond_5

    .line 88
    aget-object v0, v13, v14

    instance-of v0, v0, Landroid/text/NoCopySpan;

    if-eqz v0, :cond_0

    .line 89
    goto :goto_2

    .line 92
    :cond_0
    aget-object v0, v13, v14

    invoke-interface {v12, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, v9

    .line 93
    .local v0, "st":I
    aget-object v1, v13, v14

    invoke-interface {v12, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, v9

    .line 94
    .local v1, "en":I
    aget-object v2, v13, v14

    invoke-interface {v12, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v15

    .line 96
    .local v15, "fl":I
    if-gez v0, :cond_1

    .line 97
    const/4 v0, 0x0

    .line 98
    :cond_1
    sub-int v2, v10, v9

    if-le v0, v2, :cond_2

    .line 99
    sub-int v0, v10, v9

    .line 101
    .end local v0    # "st":I
    .local v16, "st":I
    :cond_2
    move/from16 v16, v0

    if-gez v1, :cond_3

    .line 102
    const/4 v1, 0x0

    .line 103
    :cond_3
    sub-int v0, v10, v9

    if-le v1, v0, :cond_4

    .line 104
    sub-int v0, v10, v9

    .line 106
    .end local v1    # "en":I
    .local v0, "en":I
    move/from16 v17, v0

    goto :goto_1

    .end local v0    # "en":I
    .restart local v1    # "en":I
    :cond_4
    move/from16 v17, v1

    .end local v1    # "en":I
    .local v17, "en":I
    :goto_1
    const/4 v1, 0x0

    aget-object v2, v13, v14

    const/4 v6, 0x0

    move-object v0, v7

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 87
    .end local v15    # "fl":I
    .end local v16    # "st":I
    .end local v17    # "en":I
    :goto_2
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 108
    .end local v1    # "i":I
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 110
    .end local v12    # "sp":Landroid/text/Spanned;
    .end local v13    # "spans":[Ljava/lang/Object;
    :cond_6
    return-void

    .line 66
    :cond_7
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private calcMax(I)I
    .locals 2
    .param p1, "i"    # I

    .line 1708
    const/4 v0, 0x0

    .line 1709
    .local v0, "max":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1711
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v0

    .line 1713
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p1, v1, :cond_1

    .line 1714
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1715
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 1716
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1719
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aput v0, v1, p1

    .line 1720
    return v0
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .locals 26
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "cs"    # Ljava/lang/CharSequence;
    .param p4, "csStart"    # I
    .param p5, "csEnd"    # I

    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v12, p3

    move/from16 v11, p4

    .line 331
    move/from16 v10, p5

    sub-int v16, v15, v14

    .line 332
    .local v16, "replacedLength":I
    sub-int v17, v10, v11

    .line 333
    .local v17, "replacementLength":I
    sub-int v9, v17, v16

    .line 335
    .local v9, "nbNewChars":I
    const/4 v0, 0x0

    .line 336
    .local v0, "changed":Z
    iget v1, v13, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move/from16 v18, v0

    .line 336
    .end local v0    # "changed":Z
    .local v1, "i":I
    .local v18, "changed":Z
    :goto_0
    move v8, v1

    .line 336
    .end local v1    # "i":I
    .local v8, "i":I
    if-ltz v8, :cond_e

    .line 337
    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, v8

    .line 338
    .local v0, "spanStart":I
    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v1, :cond_0

    .line 339
    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    .line 341
    :cond_0
    iget-object v1, v13, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v8

    .line 342
    .local v1, "spanEnd":I
    iget v2, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_1

    .line 343
    iget v2, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    .line 345
    :cond_1
    iget-object v2, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v2, v2, v8

    const/16 v3, 0x33

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    .line 346
    move v6, v0

    .line 347
    .local v6, "ost":I
    move v5, v1

    .line 348
    .local v5, "oen":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 350
    .local v4, "clen":I
    const/16 v2, 0xa

    if-le v0, v14, :cond_3

    if-gt v0, v15, :cond_3

    .line 351
    move v0, v15

    :goto_1
    if-ge v0, v4, :cond_3

    .line 352
    if-le v0, v15, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v13, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_2

    .line 353
    goto :goto_2

    .line 351
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 356
    :cond_3
    :goto_2
    move v3, v0

    .line 356
    .end local v0    # "spanStart":I
    .local v3, "spanStart":I
    if-le v1, v14, :cond_6

    if-gt v1, v15, :cond_6

    .line 357
    move v0, v15

    .line 357
    .end local v1    # "spanEnd":I
    .local v0, "spanEnd":I
    :goto_3
    if-ge v0, v4, :cond_5

    .line 358
    if-le v0, v15, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v13, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    .line 359
    goto :goto_4

    .line 357
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 362
    :cond_5
    :goto_4
    move v2, v0

    goto :goto_5

    .line 362
    .end local v0    # "spanEnd":I
    .restart local v1    # "spanEnd":I
    :cond_6
    move v2, v1

    .line 362
    .end local v1    # "spanEnd":I
    .local v2, "spanEnd":I
    :goto_5
    if-ne v3, v6, :cond_8

    if-eq v2, v5, :cond_7

    goto :goto_6

    .line 369
    .end local v4    # "clen":I
    .end local v5    # "oen":I
    .end local v6    # "ost":I
    :cond_7
    move v1, v2

    move v0, v3

    goto :goto_7

    .line 363
    .restart local v4    # "clen":I
    .restart local v5    # "oen":I
    .restart local v6    # "ost":I
    :cond_8
    :goto_6
    const/4 v1, 0x0

    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v19, v0, v8

    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v20, v0, v8

    const/16 v21, 0x1

    move-object v0, v13

    move/from16 v22, v2

    move-object/from16 v2, v19

    .end local v2    # "spanEnd":I
    .local v22, "spanEnd":I
    move/from16 v19, v3

    .line 363
    .end local v3    # "spanStart":I
    .local v19, "spanStart":I
    move/from16 v23, v4

    move/from16 v4, v22

    .line 363
    .end local v4    # "clen":I
    .local v23, "clen":I
    move/from16 v24, v5

    move/from16 v5, v20

    .line 363
    .end local v5    # "oen":I
    .local v24, "oen":I
    move/from16 v20, v6

    move/from16 v6, v21

    .line 363
    .end local v6    # "ost":I
    .local v20, "ost":I
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 365
    const/4 v0, 0x1

    .line 369
    .end local v18    # "changed":Z
    .end local v20    # "ost":I
    .end local v23    # "clen":I
    .end local v24    # "oen":I
    .local v0, "changed":Z
    move/from16 v18, v0

    move/from16 v0, v19

    move/from16 v1, v22

    .line 369
    .end local v19    # "spanStart":I
    .end local v22    # "spanEnd":I
    .local v0, "spanStart":I
    .restart local v1    # "spanEnd":I
    .restart local v18    # "changed":Z
    :cond_9
    :goto_7
    const/4 v2, 0x0

    .line 370
    .local v2, "flags":I
    if-ne v0, v14, :cond_a

    or-int/lit16 v2, v2, 0x1000

    goto :goto_8

    .line 371
    :cond_a
    add-int v3, v15, v9

    if-ne v0, v3, :cond_b

    or-int/lit16 v2, v2, 0x2000

    .line 372
    :cond_b
    :goto_8
    if-ne v1, v14, :cond_c

    or-int/lit16 v2, v2, 0x4000

    goto :goto_9

    .line 373
    :cond_c
    add-int v3, v15, v9

    if-ne v1, v3, :cond_d

    const v3, 0x8000

    or-int/2addr v2, v3

    .line 374
    :cond_d
    :goto_9
    iget-object v3, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v3, v8

    or-int/2addr v4, v2

    aput v4, v3, v8

    .line 336
    .end local v0    # "spanStart":I
    .end local v1    # "spanEnd":I
    .end local v2    # "flags":I
    add-int/lit8 v1, v8, -0x1

    .line 336
    .end local v8    # "i":I
    .local v1, "i":I
    goto/16 :goto_0

    .line 376
    .end local v1    # "i":I
    :cond_e
    if-eqz v18, :cond_f

    .line 377
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 380
    :cond_f
    invoke-direct {v13, v15}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 382
    iget v0, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v9, v0, :cond_10

    .line 383
    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    add-int/2addr v0, v9

    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    invoke-direct {v13, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 386
    :cond_10
    const/16 v19, 0x0

    if-nez v17, :cond_11

    move v0, v7

    goto :goto_a

    :cond_11
    move/from16 v0, v19

    :goto_a
    move v8, v0

    .line 389
    .local v8, "textIsRemoved":Z
    if-lez v16, :cond_12

    .line 390
    :goto_b
    iget v0, v13, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lez v0, :cond_12

    .line 391
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {v13, v14, v15, v8, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_b

    .line 397
    :cond_12
    iget v0, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v0, v9

    iput v0, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 398
    iget v0, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v9

    iput v0, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 400
    iget v0, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-ge v0, v7, :cond_13

    .line 401
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "mGapLength < 1"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    :cond_13
    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {v12, v11, v10, v0, v14}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 405
    if-lez v16, :cond_16

    .line 407
    iget v0, v13, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, v13, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    iget-object v1, v13, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v1, v1

    if-ne v0, v1, :cond_14

    move v5, v7

    goto :goto_c

    :cond_14
    move/from16 v5, v19

    .line 409
    .local v5, "atEnd":Z
    :goto_c
    move/from16 v0, v19

    .line 409
    .local v0, "i":I
    :goto_d
    move v7, v0

    .line 409
    .end local v0    # "i":I
    .local v7, "i":I
    iget v0, v13, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v7, v0, :cond_15

    .line 410
    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, v7

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v20, v0, 0x4

    .line 411
    .local v20, "startFlag":I
    iget-object v6, v13, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v0, v7

    move-object v0, v13

    move v2, v14

    move v3, v9

    move/from16 v4, v20

    move-object/from16 v21, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v0

    aput v0, v21, v7

    .line 414
    iget-object v0, v13, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, v7

    and-int/lit8 v0, v0, 0xf

    .line 415
    .local v0, "endFlag":I
    iget-object v1, v13, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v2, v13, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, v7

    move-object v6, v13

    move v3, v7

    move v7, v2

    .line 415
    .end local v7    # "i":I
    .local v3, "i":I
    move/from16 v21, v8

    move v8, v14

    .line 415
    .end local v8    # "textIsRemoved":Z
    .local v21, "textIsRemoved":Z
    move/from16 v22, v9

    .line 415
    .end local v9    # "nbNewChars":I
    .local v22, "nbNewChars":I
    move v4, v10

    move v10, v0

    move v2, v11

    move v11, v5

    move-object v15, v12

    move/from16 v12, v21

    invoke-direct/range {v6 .. v12}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v6

    aput v6, v1, v3

    .line 409
    .end local v0    # "endFlag":I
    .end local v20    # "startFlag":I
    add-int/lit8 v0, v3, 0x1

    .line 409
    .end local v3    # "i":I
    .local v0, "i":I
    move v11, v2

    move v10, v4

    move-object v12, v15

    move/from16 v8, v21

    move/from16 v15, p2

    goto :goto_d

    .line 419
    .end local v0    # "i":I
    .end local v21    # "textIsRemoved":Z
    .end local v22    # "nbNewChars":I
    .restart local v8    # "textIsRemoved":Z
    .restart local v9    # "nbNewChars":I
    :cond_15
    move/from16 v21, v8

    move/from16 v22, v9

    move v4, v10

    move v2, v11

    move-object v15, v12

    .line 419
    .end local v8    # "textIsRemoved":Z
    .end local v9    # "nbNewChars":I
    .restart local v21    # "textIsRemoved":Z
    .restart local v22    # "nbNewChars":I
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 419
    .end local v5    # "atEnd":Z
    goto :goto_e

    .line 422
    .end local v21    # "textIsRemoved":Z
    .end local v22    # "nbNewChars":I
    .restart local v8    # "textIsRemoved":Z
    .restart local v9    # "nbNewChars":I
    :cond_16
    move/from16 v21, v8

    move/from16 v22, v9

    move v4, v10

    move v2, v11

    move-object v15, v12

    .line 422
    .end local v8    # "textIsRemoved":Z
    .end local v9    # "nbNewChars":I
    .restart local v21    # "textIsRemoved":Z
    .restart local v22    # "nbNewChars":I
    :goto_e
    instance-of v0, v15, Landroid/text/Spanned;

    if-eqz v0, :cond_1b

    .line 423
    move-object v7, v15

    check-cast v7, Landroid/text/Spanned;

    .line 424
    .local v7, "sp":Landroid/text/Spanned;
    const-class v0, Ljava/lang/Object;

    invoke-interface {v7, v2, v4, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    .line 426
    .local v8, "spans":[Ljava/lang/Object;
    nop

    .line 426
    .local v19, "i":I
    :goto_f
    move/from16 v9, v19

    .line 426
    .end local v19    # "i":I
    .local v9, "i":I
    array-length v0, v8

    if-ge v9, v0, :cond_1a

    .line 427
    aget-object v0, v8, v9

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 428
    .local v0, "st":I
    aget-object v1, v8, v9

    invoke-interface {v7, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 430
    .local v1, "en":I
    if-ge v0, v2, :cond_17

    move v0, v2

    .line 431
    .end local v0    # "st":I
    .local v10, "st":I
    :cond_17
    move v10, v0

    if-le v1, v4, :cond_18

    move v1, v4

    .line 434
    .end local v1    # "en":I
    .local v11, "en":I
    :cond_18
    move v11, v1

    aget-object v0, v8, v9

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_19

    .line 435
    sub-int v0, v10, v2

    add-int v12, v0, v14

    .line 436
    .local v12, "copySpanStart":I
    sub-int v0, v11, v2

    add-int v19, v0, v14

    .line 437
    .local v19, "copySpanEnd":I
    aget-object v0, v8, v9

    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    or-int/lit16 v6, v0, 0x800

    .line 439
    .local v6, "copySpanFlags":I
    const/4 v1, 0x0

    aget-object v3, v8, v9

    const/16 v20, 0x0

    move-object v0, v13

    move-object v2, v3

    move v3, v12

    move/from16 v4, v19

    move v5, v6

    move/from16 v23, v6

    move/from16 v6, v20

    .line 439
    .end local v6    # "copySpanFlags":I
    .local v23, "copySpanFlags":I
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 426
    .end local v10    # "st":I
    .end local v11    # "en":I
    .end local v12    # "copySpanStart":I
    .end local v19    # "copySpanEnd":I
    .end local v23    # "copySpanFlags":I
    :cond_19
    add-int/lit8 v19, v9, 0x1

    .line 426
    .end local v9    # "i":I
    .local v19, "i":I
    move/from16 v2, p4

    move/from16 v4, p5

    goto :goto_f

    .line 443
    .end local v19    # "i":I
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 445
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "spans":[Ljava/lang/Object;
    :cond_1b
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1327
    if-lt p3, p2, :cond_2

    .line 1332
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1334
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    if-gt p3, v0, :cond_1

    .line 1339
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 1343
    return-void

    .line 1340
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1335
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1328
    .end local v0    # "len":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has end before start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkSortBuffer([II)[I
    .locals 1
    .param p0, "buffer"    # [I
    .param p1, "size"    # I

    .line 1067
    if-eqz p0, :cond_1

    array-length v0, p0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1070
    :cond_0
    return-object p0

    .line 1068
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method private final compareSpans(II[I[I)I
    .locals 4
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "priority"    # [I
    .param p4, "insertionOrder"    # [I

    .line 1158
    aget v0, p3, p1

    .line 1159
    .local v0, "priority1":I
    aget v1, p3, p2

    .line 1160
    .local v1, "priority2":I
    if-ne v0, v1, :cond_0

    .line 1161
    aget v2, p4, p1

    aget v3, p4, p2

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    .line 1165
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method private countSpans(IILjava/lang/Class;I)I
    .locals 4
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, "count":I
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    .line 906
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 907
    .local v1, "left":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v2, v2, v1

    .line 908
    .local v2, "spanMax":I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_0

    .line 909
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 911
    :cond_0
    if-lt v2, p1, :cond_1

    .line 912
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v0

    .line 915
    .end local v1    # "left":I
    .end local v2    # "spanMax":I
    :cond_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v1, :cond_7

    .line 916
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    .line 917
    .local v1, "spanStart":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_2

    .line 918
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    .line 920
    :cond_2
    if-gt v1, p2, :cond_7

    .line 921
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    .line 922
    .local v2, "spanEnd":I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_3

    .line 923
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 925
    :cond_3
    if-lt v2, p1, :cond_6

    if-eq v1, v2, :cond_4

    if-eq p1, p2, :cond_4

    if-eq v1, p2, :cond_6

    if-eq v2, p1, :cond_6

    :cond_4
    const-class v3, Ljava/lang/Object;

    if-eq v3, p3, :cond_5

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    .line 928
    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 929
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 931
    :cond_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    .line 932
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v3

    invoke-direct {p0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 936
    .end local v1    # "spanStart":I
    .end local v2    # "spanEnd":I
    :cond_7
    return v0
.end method

.method private getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I
    .locals 21
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "i"    # I
    .param p6, "priority"    # [I
    .param p7, "insertionOrder"    # [I
    .param p8, "count"    # I
    .param p9, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;I[TT;[I[IIZ)I"
        }
    .end annotation

    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "ret":[Ljava/lang/Object;, "[TT;"
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    .line 958
    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_1

    .line 960
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v16

    .line 961
    .local v16, "left":I
    iget-object v0, v10, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v0, v0, v16

    .line 962
    .local v0, "spanMax":I
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v1, :cond_0

    .line 963
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    .line 965
    .end local v0    # "spanMax":I
    .local v9, "spanMax":I
    :cond_0
    move v9, v0

    if-lt v9, v11, :cond_1

    .line 966
    move-object v0, v10

    move v1, v11

    move v2, v12

    move-object v3, v13

    move/from16 v4, v16

    move-object v5, v15

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v17, v9

    move/from16 v9, p9

    .end local v9    # "spanMax":I
    .local v17, "spanMax":I
    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v0

    .end local v16    # "left":I
    .end local v17    # "spanMax":I
    .end local p8    # "count":I
    .local v0, "count":I
    goto :goto_0

    .line 970
    .end local v0    # "count":I
    .restart local p8    # "count":I
    :cond_1
    move/from16 v0, p8

    .end local p8    # "count":I
    .restart local v0    # "count":I
    :goto_0
    iget v1, v10, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lt v14, v1, :cond_2

    return v0

    .line 971
    :cond_2
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v14

    .line 972
    .local v1, "spanStart":I
    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_3

    .line 973
    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    .line 975
    .end local v1    # "spanStart":I
    .local v9, "spanStart":I
    :cond_3
    move v9, v1

    if-gt v9, v12, :cond_d

    .line 976
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v14

    .line 977
    .local v1, "spanEnd":I
    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_4

    .line 978
    iget v2, v10, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    .line 980
    .end local v1    # "spanEnd":I
    .local v8, "spanEnd":I
    :cond_4
    move v8, v1

    if-lt v8, v11, :cond_b

    if-eq v9, v8, :cond_5

    if-eq v11, v12, :cond_5

    if-eq v9, v12, :cond_b

    if-eq v8, v11, :cond_b

    :cond_5
    const-class v1, Ljava/lang/Object;

    if-eq v1, v13, :cond_6

    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v14

    .line 983
    invoke-virtual {v13, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 984
    :cond_6
    iget-object v1, v10, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v14

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    .line 985
    .local v1, "spanPriority":I
    move v3, v0

    .line 986
    .local v3, "target":I
    if-eqz p9, :cond_7

    .line 987
    aput v1, p6, v3

    .line 988
    iget-object v2, v10, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v2, v2, v14

    aput v2, p7, v3

    goto :goto_3

    .line 989
    :cond_7
    if-eqz v1, :cond_a

    .line 991
    const/4 v4, 0x0

    .line 992
    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_9

    .line 993
    aget-object v5, v15, v4

    invoke-virtual {v10, v5}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/2addr v5, v2

    .line 994
    .local v5, "p":I
    if-le v1, v5, :cond_8

    goto :goto_2

    .line 992
    .end local v5    # "p":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 996
    :cond_9
    :goto_2
    add-int/lit8 v2, v4, 0x1

    sub-int v5, v0, v4

    invoke-static {v15, v4, v15, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 997
    move v3, v4

    .line 999
    .end local v4    # "j":I
    :cond_a
    :goto_3
    iget-object v2, v10, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v14

    aput-object v2, v15, v3

    .line 1000
    add-int/lit8 v0, v0, 0x1

    .line 1002
    .end local v0    # "count":I
    .end local v1    # "spanPriority":I
    .end local v3    # "target":I
    .local v7, "count":I
    :cond_b
    move v7, v0

    array-length v0, v15

    if-ge v7, v0, :cond_c

    and-int/lit8 v0, v14, 0x1

    if-eqz v0, :cond_c

    .line 1003
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v4

    move-object v0, v10

    move v1, v11

    move v2, v12

    move-object v3, v13

    move-object v5, v15

    move-object/from16 v6, p6

    move/from16 v18, v7

    move-object/from16 v7, p7

    .end local v7    # "count":I
    .local v18, "count":I
    move/from16 v19, v8

    move/from16 v8, v18

    .end local v8    # "spanEnd":I
    .local v19, "spanEnd":I
    move/from16 v20, v9

    move/from16 v9, p9

    .end local v9    # "spanStart":I
    .local v20, "spanStart":I
    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v0

    .end local v18    # "count":I
    .end local v19    # "spanEnd":I
    .restart local v0    # "count":I
    goto :goto_4

    .line 1007
    .end local v0    # "count":I
    .end local v20    # "spanStart":I
    .restart local v7    # "count":I
    .restart local v9    # "spanStart":I
    :cond_c
    move/from16 v18, v7

    move/from16 v20, v9

    .end local v7    # "count":I
    .end local v9    # "spanStart":I
    .restart local v18    # "count":I
    .restart local v20    # "spanStart":I
    move/from16 v0, v18

    goto :goto_4

    .end local v18    # "count":I
    .end local v20    # "spanStart":I
    .restart local v0    # "count":I
    .restart local v9    # "spanStart":I
    :cond_d
    move/from16 v20, v9

    .end local v9    # "spanStart":I
    .restart local v20    # "spanStart":I
    :goto_4
    return v0
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 600
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 601
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 602
    .local v0, "spanned":Landroid/text/Spanned;
    const-class v2, Ljava/lang/Object;

    invoke-interface {v0, p1, p1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 603
    .local v2, "spans":[Ljava/lang/Object;
    array-length v3, v2

    .line 604
    .local v3, "length":I
    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 605
    aget-object v5, v2, v4

    .line 606
    .local v5, "span":Ljava/lang/Object;
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 607
    .local v6, "flags":I
    const/16 v7, 0x21

    if-eq v6, v7, :cond_0

    const/4 v1, 0x1

    return v1

    .line 604
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "flags":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 610
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v2    # "spans":[Ljava/lang/Object;
    .end local v3    # "length":I
    .end local v4    # "i":I
    :cond_1
    return v1
.end method

.method private invalidateIndex(I)V
    .locals 1
    .param p1, "i"    # I

    .line 1773
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1774
    return-void
.end method

.method private isInvalidParagraph(II)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "flag"    # I

    .line 795
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static leftChild(I)I
    .locals 2
    .param p0, "i"    # I

    .line 1692
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private moveGapTo(I)V
    .locals 8
    .param p1, "where"    # I

    .line 172
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v0, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 177
    .local v0, "atEnd":Z
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v2, :cond_2

    .line 178
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    .line 179
    .local v2, "overlap":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-static {v3, p1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    .end local v2    # "overlap":I
    goto :goto_1

    .line 181
    :cond_2
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v2, p1, v2

    .line 182
    .restart local v2    # "overlap":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, p1

    sub-int/2addr v4, v2

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    .end local v2    # "overlap":I
    :goto_1
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v2, :cond_c

    .line 187
    nop

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_b

    .line 188
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v1

    .line 189
    .local v2, "start":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v1

    .line 191
    .local v3, "end":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_3

    .line 192
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 193
    :cond_3
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-le v2, p1, :cond_4

    .line 194
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v6

    goto :goto_3

    .line 195
    :cond_4
    if-ne v2, p1, :cond_6

    .line 196
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    .line 198
    .local v6, "flag":I
    if-eq v6, v5, :cond_5

    if-eqz v0, :cond_6

    if-ne v6, v4, :cond_6

    .line 199
    :cond_5
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v7

    .line 202
    .end local v6    # "flag":I
    :cond_6
    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v6, :cond_7

    .line 203
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v6

    .line 204
    :cond_7
    if-le v3, p1, :cond_8

    .line 205
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    goto :goto_4

    .line 206
    :cond_8
    if-ne v3, p1, :cond_a

    .line 207
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit8 v6, v6, 0xf

    .line 209
    .restart local v6    # "flag":I
    if-eq v6, v5, :cond_9

    if-eqz v0, :cond_a

    if-ne v6, v4, :cond_a

    .line 210
    :cond_9
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    .line 213
    .end local v6    # "flag":I
    :cond_a
    :goto_4
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v4, v1

    .line 214
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v4, v1

    .line 187
    .end local v2    # "start":I
    .end local v3    # "end":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 216
    .end local v1    # "i":I
    :cond_b
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 219
    :cond_c
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 220
    return-void
.end method

.method private nextSpanTransitionRec(IILjava/lang/Class;I)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .line 1182
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 1184
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v0

    .line 1185
    .local v0, "left":I
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 1186
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 1189
    .end local v0    # "left":I
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v0, :cond_3

    .line 1190
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    .line 1191
    .local v0, "st":I
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    .line 1192
    .local v1, "en":I
    if-le v0, p1, :cond_1

    if-ge v0, p2, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1193
    move p2, v0

    .line 1194
    :cond_1
    if-le v1, p1, :cond_2

    if-ge v1, p2, :cond_2

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1195
    move p2, v1

    .line 1196
    :cond_2
    if-ge v0, p2, :cond_3

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_3

    .line 1197
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 1201
    .end local v0    # "st":I
    .end local v1    # "en":I
    :cond_3
    return p2
.end method

.method private static obtain(I)[I
    .locals 6
    .param p0, "elementCount"    # I

    .line 1017
    const/4 v0, 0x0

    .line 1018
    .local v0, "result":[I
    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v1

    .line 1021
    const/4 v2, -0x1

    .line 1022
    .local v2, "candidateIndex":I
    :try_start_0
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, -0x1

    if-ltz v3, :cond_2

    .line 1023
    sget-object v5, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 1024
    sget-object v5, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v5, v5, v3

    array-length v5, v5

    if-lt v5, p0, :cond_0

    .line 1025
    move v2, v3

    .line 1026
    goto :goto_1

    .line 1027
    :cond_0
    if-ne v2, v4, :cond_1

    .line 1028
    move v2, v3

    .line 1022
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1033
    .end local v3    # "i":I
    :cond_2
    :goto_1
    if-eq v2, v4, :cond_3

    .line 1034
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v2

    move-object v0, v3

    .line 1035
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1037
    .end local v2    # "candidateIndex":I
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    invoke-static {v0, p0}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    move-result-object v0

    .line 1039
    return-object v0

    .line 1037
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static recycle([I)V
    .locals 4
    .param p0, "buffer"    # [I

    .line 1048
    sget-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v0

    .line 1049
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1050
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    array-length v2, p0

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 1049
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1051
    :cond_1
    :goto_1
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aput-object p0, v2, v1

    .line 1052
    nop

    .line 1055
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 1056
    return-void

    .line 1055
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSpan(II)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "flags"    # I

    .line 481
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 483
    .local v0, "object":Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p1

    .line 484
    .local v1, "start":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p1

    .line 486
    .local v2, "end":I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v3, :cond_0

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v3

    .line 487
    :cond_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_1

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 489
    :cond_1
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    .line 490
    .local v3, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 498
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 499
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 502
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 504
    and-int/lit16 v4, p2, 0x200

    if-nez v4, :cond_2

    .line 505
    invoke-direct {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 507
    :cond_2
    return-void
.end method

.method private removeSpansForChange(IIZI)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textIsRemoved"    # Z
    .param p4, "i"    # I

    .line 305
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v0, v0, p4

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 308
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    return v1

    .line 312
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v2, 0x0

    if-ge p4, v0, :cond_4

    .line 313
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, p4

    const/16 v3, 0x21

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v0, p4

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v0, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v0, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge v0, v3, :cond_2

    .line 319
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-direct {p0, p4, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    .line 321
    return v1

    .line 323
    :cond_2
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    if-gt v0, p2, :cond_3

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3

    .line 324
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 323
    :cond_3
    move v1, v2

    :goto_0
    return v1

    .line 326
    :cond_4
    return v2
.end method

.method private resizeFor(I)V
    .locals 9
    .param p1, "size"    # I

    .line 145
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    .line 146
    .local v0, "oldLength":I
    add-int/lit8 v1, p1, 0x1

    if-gt v1, v0, :cond_0

    .line 147
    return-void

    .line 150
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    .line 151
    .local v1, "newText":[C
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    array-length v2, v1

    .line 153
    .local v2, "newLength":I
    sub-int v3, v2, v0

    .line 154
    .local v3, "delta":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    sub-int v5, v0, v5

    .line 155
    .local v5, "after":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v7, v0, v5

    sub-int v8, v2, v5

    invoke-static {v6, v7, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 158
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v3

    iput v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 159
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    .line 160
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "mGapLength < 1"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :cond_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v6, :cond_5

    .line 163
    nop

    .line 163
    .local v4, "i":I
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v4, v6, :cond_4

    .line 164
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v6, v4

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_2

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v6, v4

    add-int/2addr v7, v3

    aput v7, v6, v4

    .line 165
    :cond_2
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v6, v4

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v7, v6, v4

    add-int/2addr v7, v3

    aput v7, v6, v4

    .line 163
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    .end local v4    # "i":I
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 169
    :cond_5
    return-void
.end method

.method private resolveGap(I)I
    .locals 1
    .param p1, "i"    # I

    .line 822
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v0, p1, v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private restoreInvariants()V
    .locals 10

    .line 1725
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_0

    return-void

    .line 1730
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_4

    .line 1731
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_3

    .line 1732
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1733
    .local v1, "span":Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 1734
    .local v2, "start":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 1735
    .local v3, "end":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v0

    .line 1736
    .local v4, "flags":I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v5, v5, v0

    .line 1737
    .local v5, "insertionOrder":I
    move v6, v0

    .line 1739
    .local v6, "j":I
    :cond_1
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v9, v6, -0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v6

    .line 1740
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1741
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1742
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1743
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1744
    add-int/lit8 v6, v6, -0x1

    .line 1745
    if-lez v6, :cond_2

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v8, v6, -0x1

    aget v7, v7, v8

    if-lt v2, v7, :cond_1

    .line 1746
    :cond_2
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v1, v7, v6

    .line 1747
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v7, v6

    .line 1748
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v7, v6

    .line 1749
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v4, v7, v6

    .line 1750
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aput v5, v7, v6

    .line 1751
    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 1730
    .end local v1    # "span":Ljava/lang/Object;
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "flags":I
    .end local v5    # "insertionOrder":I
    .end local v6    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1756
    .end local v0    # "i":I
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 1759
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_5

    .line 1760
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 1762
    :cond_5
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_8

    .line 1763
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1764
    .local v1, "existing":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_7

    .line 1765
    :cond_6
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    .end local v1    # "existing":Ljava/lang/Integer;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1768
    .end local v0    # "i":I
    :cond_8
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1769
    return-void
.end method

.method private static rightChild(I)I
    .locals 2
    .param p0, "i"    # I

    .line 1696
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;

    .line 1284
    array-length v0, p1

    .line 1286
    .local v0, "n":I
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1288
    aget-object v2, p1, v1

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 1287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1290
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1291
    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 1264
    array-length v0, p1

    .line 1266
    .local v0, "n":I
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1268
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 1267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1270
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1271
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1294
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1295
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 1297
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1298
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1300
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "oldStart"    # I
    .param p3, "oldEnd"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .line 1314
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1315
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    .line 1314
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1316
    .local v0, "spanWatchers":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 1317
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1318
    aget-object v3, v0, v2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 1317
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1320
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1303
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1304
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 1306
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1307
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1306
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1309
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 1274
    array-length v0, p1

    .line 1276
    .local v0, "n":I
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1278
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1280
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1281
    return-void
.end method

.method private sendToSpanWatchers(III)V
    .locals 17
    .param p1, "replaceStart"    # I
    .param p2, "replaceEnd"    # I
    .param p3, "nbNewChars"    # I

    move-object/from16 v6, p0

    move/from16 v7, p1

    .line 614
    const/4 v8, 0x0

    move v0, v8

    .local v0, "i":I
    :goto_0
    move v9, v0

    .end local v0    # "i":I
    .local v9, "i":I
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v9, v0, :cond_c

    .line 615
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v10, v0, v9

    .line 618
    .local v10, "spanFlags":I
    and-int/lit16 v0, v10, 0x800

    if-eqz v0, :cond_0

    .end local v10    # "spanFlags":I
    goto/16 :goto_3

    .line 619
    .restart local v10    # "spanFlags":I
    :cond_0
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, v9

    .line 620
    .local v0, "spanStart":I
    iget-object v1, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v9

    .line 621
    .local v1, "spanEnd":I
    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v2, :cond_1

    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v2

    .line 622
    .end local v0    # "spanStart":I
    .local v11, "spanStart":I
    :cond_1
    move v11, v0

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v0, :cond_2

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v0

    .line 624
    .end local v1    # "spanEnd":I
    .local v12, "spanEnd":I
    :cond_2
    move v12, v1

    add-int v13, p2, p3

    .line 625
    .local v13, "newReplaceEnd":I
    const/4 v0, 0x0

    .line 627
    .local v0, "spanChanged":Z
    move v1, v11

    .line 628
    .local v1, "previousSpanStart":I
    if-le v11, v13, :cond_3

    .line 629
    if-eqz p3, :cond_6

    .line 630
    sub-int v1, v1, p3

    .line 631
    const/4 v0, 0x1

    goto :goto_1

    .line 633
    :cond_3
    if-lt v11, v7, :cond_6

    .line 635
    if-ne v11, v7, :cond_4

    and-int/lit16 v2, v10, 0x1000

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_6

    :cond_4
    if-ne v11, v13, :cond_5

    and-int/lit16 v2, v10, 0x2000

    const/16 v3, 0x2000

    if-eq v2, v3, :cond_6

    .line 642
    :cond_5
    const/4 v0, 0x1

    .line 646
    .end local v1    # "previousSpanStart":I
    .local v14, "previousSpanStart":I
    :cond_6
    :goto_1
    move v14, v1

    move v1, v12

    .line 647
    .local v1, "previousSpanEnd":I
    if-le v12, v13, :cond_7

    .line 648
    if-eqz p3, :cond_a

    .line 649
    sub-int v1, v1, p3

    .line 650
    const/4 v0, 0x1

    goto :goto_2

    .line 652
    :cond_7
    if-lt v12, v7, :cond_a

    .line 654
    if-ne v12, v7, :cond_8

    and-int/lit16 v2, v10, 0x4000

    const/16 v3, 0x4000

    if-eq v2, v3, :cond_a

    :cond_8
    if-ne v12, v13, :cond_9

    const v2, 0x8000

    and-int v3, v10, v2

    if-eq v3, v2, :cond_a

    .line 659
    :cond_9
    const/4 v0, 0x1

    .line 663
    .end local v0    # "spanChanged":Z
    .end local v1    # "previousSpanEnd":I
    .local v15, "spanChanged":Z
    .local v16, "previousSpanEnd":I
    :cond_a
    :goto_2
    move v15, v0

    move/from16 v16, v1

    if-eqz v15, :cond_b

    .line 664
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v0, v9

    move-object v0, v6

    move v2, v14

    move/from16 v3, v16

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 666
    :cond_b
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v0, v9

    const v2, -0xf001

    and-int/2addr v1, v2

    aput v1, v0, v9

    .line 614
    .end local v10    # "spanFlags":I
    .end local v11    # "spanStart":I
    .end local v12    # "spanEnd":I
    .end local v13    # "newReplaceEnd":I
    .end local v14    # "previousSpanStart":I
    .end local v15    # "spanChanged":Z
    .end local v16    # "previousSpanEnd":I
    :goto_3
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .line 670
    .end local v0    # "i":I
    :cond_c
    nop

    .local v8, "i":I
    :goto_4
    move v0, v8

    .end local v8    # "i":I
    .restart local v0    # "i":I
    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_10

    .line 671
    iget-object v1, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v0

    .line 672
    .local v1, "spanFlags":I
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_f

    .line 673
    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v2, v0

    and-int/lit16 v3, v3, -0x801

    aput v3, v2, v0

    .line 674
    iget-object v2, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 675
    .local v2, "spanStart":I
    iget-object v3, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 676
    .local v3, "spanEnd":I
    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_d

    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 677
    :cond_d
    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_e

    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 678
    :cond_e
    iget-object v4, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-direct {v6, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 670
    .end local v1    # "spanFlags":I
    .end local v2    # "spanStart":I
    .end local v3    # "spanEnd":I
    :cond_f
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "i":I
    .restart local v8    # "i":I
    goto :goto_4

    .line 681
    .end local v8    # "i":I
    :cond_10
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;IIIZ)V
    .locals 20
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I
    .param p6, "enforceParagraph"    # Z

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v8, p5

    .line 697
    const-string/jumbo v2, "setSpan"

    invoke-direct {v6, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 699
    and-int/lit16 v2, v8, 0xf0

    shr-int/lit8 v10, v2, 0x4

    .line 700
    .local v10, "flagsStart":I
    invoke-direct {v6, v0, v10}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    if-nez p6, :cond_0

    .line 703
    return-void

    .line 705
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " follows "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x1

    .line 706
    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 709
    :cond_1
    and-int/lit8 v11, v8, 0xf

    .line 710
    .local v11, "flagsEnd":I
    invoke-direct {v6, v1, v11}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    if-nez p6, :cond_2

    .line 713
    return-void

    .line 715
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " follows "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    .line 716
    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 720
    :cond_3
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v10, v2, :cond_5

    if-ne v11, v3, :cond_5

    if-ne v0, v1, :cond_5

    .line 721
    if-eqz p1, :cond_4

    .line 722
    const-string v2, "SpannableStringBuilder"

    const-string v3, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_4
    return-void

    .line 730
    :cond_5
    move v12, v0

    .line 731
    .local v12, "nstart":I
    move v13, v1

    .line 733
    .local v13, "nend":I
    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v5, 0x3

    if-le v0, v4, :cond_7

    .line 734
    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v4

    .line 740
    .end local p3    # "start":I
    .local v14, "start":I
    :cond_6
    :goto_0
    move v14, v0

    goto :goto_1

    .line 735
    .end local v14    # "start":I
    .restart local p3    # "start":I
    :cond_7
    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v0, v4, :cond_6

    .line 736
    if-eq v10, v2, :cond_8

    if-ne v10, v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ne v0, v4, :cond_6

    .line 737
    :cond_8
    iget v4, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v4

    goto :goto_0

    .line 740
    .end local p3    # "start":I
    .restart local v14    # "start":I
    :goto_1
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v0, :cond_9

    .line 741
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    .line 747
    .end local p4    # "end":I
    .local v0, "end":I
    .local v5, "end":I
    :goto_2
    move v5, v0

    goto :goto_3

    .line 742
    .end local v0    # "end":I
    .end local v5    # "end":I
    .restart local p4    # "end":I
    :cond_9
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v1, v0, :cond_b

    .line 743
    if-eq v11, v2, :cond_a

    if-ne v11, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ne v1, v0, :cond_b

    .line 744
    :cond_a
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    goto :goto_2

    .line 747
    :cond_b
    move v5, v1

    .line 747
    .end local p4    # "end":I
    .restart local v5    # "end":I
    :goto_3
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_f

    .line 748
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 749
    .local v4, "index":Ljava/lang/Integer;
    if-eqz v4, :cond_f

    .line 750
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 751
    .local v15, "i":I
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, v15

    .line 752
    .local v0, "ostart":I
    iget-object v1, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v15

    .line 754
    .local v1, "oend":I
    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v2, :cond_c

    .line 755
    iget v2, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v2

    .line 756
    .end local v0    # "ostart":I
    .local v16, "ostart":I
    :cond_c
    move/from16 v16, v0

    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v0, :cond_d

    .line 757
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v0

    .line 759
    .end local v1    # "oend":I
    .local v17, "oend":I
    :cond_d
    move/from16 v17, v1

    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v14, v0, v15

    .line 760
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v5, v0, v15

    .line 761
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v8, v0, v15

    .line 763
    if-eqz p1, :cond_e

    .line 764
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 765
    move-object v0, v6

    move-object v1, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v18, v4

    move v4, v12

    .line 765
    .end local v4    # "index":Ljava/lang/Integer;
    .local v18, "index":Ljava/lang/Integer;
    move v9, v5

    move v5, v13

    .line 765
    .end local v5    # "end":I
    .local v9, "end":I
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    goto :goto_4

    .line 768
    .end local v9    # "end":I
    .end local v18    # "index":Ljava/lang/Integer;
    .restart local v4    # "index":Ljava/lang/Integer;
    .restart local v5    # "end":I
    :cond_e
    move-object/from16 v18, v4

    move v9, v5

    .line 768
    .end local v4    # "index":Ljava/lang/Integer;
    .end local v5    # "end":I
    .restart local v9    # "end":I
    .restart local v18    # "index":Ljava/lang/Integer;
    :goto_4
    return-void

    .line 772
    .end local v9    # "end":I
    .end local v15    # "i":I
    .end local v16    # "ostart":I
    .end local v17    # "oend":I
    .end local v18    # "index":Ljava/lang/Integer;
    .restart local v5    # "end":I
    :cond_f
    move v9, v5

    .line 772
    .end local v5    # "end":I
    .restart local v9    # "end":I
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0, v1, v7}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 773
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0, v1, v14}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 774
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0, v1, v9}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 775
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0, v1, v8}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 776
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v1, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v4, v6, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 777
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 778
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v0, v3

    iput v0, v6, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 779
    iget v0, v6, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    add-int/2addr v0, v3

    iput v0, v6, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 783
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    mul-int/2addr v2, v0

    add-int/2addr v2, v3

    .line 784
    .local v2, "sizeOfMax":I
    iget-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    array-length v0, v0

    if-ge v0, v2, :cond_10

    .line 785
    new-array v0, v2, [I

    iput-object v0, v6, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 788
    :cond_10
    if-eqz p1, :cond_11

    .line 789
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 790
    invoke-direct {v6, v7, v12, v13}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 792
    :cond_11
    return-void
.end method

.method private final siftDown(I[Ljava/lang/Object;I[I[I)V
    .locals 6
    .param p1, "index"    # I
    .param p3, "size"    # I
    .param p4, "priority"    # [I
    .param p5, "insertionOrder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;I[I[I)V"
        }
    .end annotation

    .line 1120
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x2

    mul-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 1121
    .local v1, "left":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 1122
    add-int/lit8 v2, p3, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1, v2, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v2

    if-gez v2, :cond_0

    .line 1123
    add-int/lit8 v1, v1, 0x1

    .line 1125
    :cond_0
    invoke-direct {p0, p1, v1, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 1126
    goto :goto_1

    .line 1129
    :cond_1
    aget-object v2, p2, p1

    .line 1130
    .local v2, "tmpSpan":Ljava/lang/Object;, "TT;"
    aget-object v3, p2, v1

    aput-object v3, p2, p1

    .line 1131
    aput-object v2, p2, v1

    .line 1133
    aget v3, p4, p1

    .line 1134
    .local v3, "tmpPriority":I
    aget v4, p4, v1

    aput v4, p4, p1

    .line 1135
    aput v3, p4, v1

    .line 1137
    aget v4, p5, p1

    .line 1138
    .local v4, "tmpOrder":I
    aget v5, p5, v1

    aput v5, p5, p1

    .line 1139
    aput v4, p5, v1

    .line 1141
    move p1, v1

    .line 1142
    mul-int v5, v0, p1

    add-int/lit8 v1, v5, 0x1

    .line 1143
    .end local v2    # "tmpSpan":Ljava/lang/Object;, "TT;"
    .end local v3    # "tmpPriority":I
    .end local v4    # "tmpOrder":I
    goto :goto_0

    .line 1144
    :cond_2
    :goto_1
    return-void
.end method

.method private final sort([Ljava/lang/Object;[I[I)V
    .locals 12
    .param p2, "priority"    # [I
    .param p3, "insertionOrder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I[I)V"
        }
    .end annotation

    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    move-object v6, p1

    .line 1086
    array-length v7, v6

    .line 1087
    .local v7, "size":I
    div-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    if-ltz v8, :cond_0

    .line 1088
    move-object v0, p0

    move v1, v8

    move-object v2, v6

    move v3, v7

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 1087
    add-int/lit8 v0, v8, -0x1

    .end local v8    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1091
    .end local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v7, -0x1

    .restart local v0    # "i":I
    :goto_1
    move v8, v0

    .end local v0    # "i":I
    .restart local v8    # "i":I
    if-lez v8, :cond_1

    .line 1092
    const/4 v0, 0x0

    aget-object v9, v6, v0

    .line 1093
    .local v9, "tmpSpan":Ljava/lang/Object;, "TT;"
    aget-object v1, v6, v8

    aput-object v1, v6, v0

    .line 1094
    aput-object v9, v6, v8

    .line 1096
    aget v10, p2, v0

    .line 1097
    .local v10, "tmpPriority":I
    aget v1, p2, v8

    aput v1, p2, v0

    .line 1098
    aput v10, p2, v8

    .line 1100
    aget v11, p3, v0

    .line 1101
    .local v11, "tmpOrder":I
    aget v1, p3, v8

    aput v1, p3, v0

    .line 1102
    aput v11, p3, v8

    .line 1104
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v6

    move v3, v8

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 1091
    .end local v9    # "tmpSpan":Ljava/lang/Object;, "TT;"
    .end local v10    # "tmpPriority":I
    .end local v11    # "tmpOrder":I
    add-int/lit8 v0, v8, -0x1

    .end local v8    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 1106
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private treeRoot()I
    .locals 1

    .line 1687
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "nbNewChars"    # I
    .param p4, "flag"    # I
    .param p5, "atEnd"    # Z
    .param p6, "textIsRemoved"    # Z

    .line 449
    if-lt p1, p2, :cond_5

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    .line 450
    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    .line 455
    if-nez p6, :cond_0

    if-le p1, p2, :cond_5

    .line 456
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    .line 459
    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    .line 460
    if-eqz p5, :cond_5

    .line 461
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    .line 467
    :cond_2
    if-nez p6, :cond_4

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_3

    goto :goto_0

    .line 471
    :cond_3
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return v0

    .line 468
    :cond_4
    :goto_0
    return p2

    .line 476
    :cond_5
    return p1
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 113
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    .line 114
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p1, "text"    # C

    .line 300
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 273
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 274
    .local v6, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, v6

    move v2, v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 294
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 295
    .local v6, "length":I
    move-object v0, p0

    move v1, v6

    move v2, v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .line 286
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 287
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 288
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 289
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 4
    .param p1, "where"    # I

    .line 124
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 125
    .local v0, "len":I
    if-ltz p1, :cond_2

    .line 127
    if-ge p1, v0, :cond_1

    .line 131
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_0

    .line 132
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    return v1

    .line 134
    :cond_0
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    return v1

    .line 128
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 6

    .line 244
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 246
    return-void
.end method

.method public clearSpans()V
    .locals 6

    .line 250
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 251
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 252
    .local v1, "what":Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 253
    .local v2, "ostart":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 255
    .local v3, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    .line 256
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 257
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_1

    .line 258
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 260
    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 261
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 263
    invoke-direct {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 250
    .end local v1    # "what":Ljava/lang/Object;
    .end local v2    # "ostart":I
    .end local v3    # "oend":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 265
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 268
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 269
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 234
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 236
    .local v0, "ret":Landroid/text/SpannableStringBuilder;
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 239
    :cond_0
    return-object v0
.end method

.method public drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/BaseCanvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .line 1432
    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1434
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_0

    .line 1435
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v4, p3, p2

    move-object v1, p1

    move v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1436
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_1

    .line 1437
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v3, p2, v0

    sub-int v4, p3, p2

    move-object v1, p1

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1439
    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1441
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1442
    const/4 v3, 0x0

    sub-int v4, p3, p2

    move-object v1, p1

    move-object v2, v0

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1443
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1445
    .end local v0    # "buf":[C
    :goto_0
    return-void
.end method

.method public drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 26
    .param p1, "c"    # Landroid/graphics/BaseCanvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    .line 1455
    const-string v1, "drawTextRun"

    invoke-direct {v0, v1, v11, v12}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1457
    sub-int v15, v14, v13

    .line 1458
    .local v15, "contextLen":I
    sub-int v25, v12, v11

    .line 1459
    .local v25, "len":I
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v14, v1, :cond_0

    .line 1460
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v1, p1

    move v3, v11

    move/from16 v4, v25

    move v5, v13

    move v6, v15

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1470
    move v2, v15

    goto :goto_0

    .line 1461
    :cond_0
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v13, v1, :cond_1

    .line 1462
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v17, v11, v2

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v19, v13, v2

    move v2, v15

    move-object/from16 v15, p1

    .end local v15    # "contextLen":I
    .local v2, "contextLen":I
    move-object/from16 v16, v1

    move/from16 v18, v25

    move/from16 v20, v2

    move/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p8

    move-object/from16 v24, p9

    invoke-virtual/range {v15 .. v24}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1465
    .end local v2    # "contextLen":I
    .restart local v15    # "contextLen":I
    :cond_1
    move v2, v15

    .end local v15    # "contextLen":I
    .restart local v2    # "contextLen":I
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1466
    .local v1, "buf":[C
    const/4 v3, 0x0

    invoke-virtual {v0, v13, v14, v1, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1467
    sub-int v17, v11, v13

    const/16 v19, 0x0

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    move/from16 v18, v25

    move/from16 v20, v2

    move/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p8

    move-object/from16 v24, p9

    invoke-virtual/range {v15 .. v24}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1468
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 1470
    .end local v1    # "buf":[C
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 1615
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 1616
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1617
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 1619
    .local v0, "other":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 1620
    .local v2, "otherSpans":[Ljava/lang/Object;
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v4, v2

    if-ne v3, v4, :cond_5

    .line 1621
    move v3, v1

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v4, :cond_4

    .line 1622
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 1623
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v5, v2, v3

    .line 1624
    .local v5, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_1

    .line 1625
    if-ne v0, v5, :cond_0

    .line 1626
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1627
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1628
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 1629
    :cond_0
    return v1

    .line 1631
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1632
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1633
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1634
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-eq v6, v7, :cond_2

    goto :goto_1

    .line 1621
    .end local v4    # "thisSpan":Ljava/lang/Object;
    .end local v5    # "otherSpan":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1635
    .restart local v4    # "thisSpan":Ljava/lang/Object;
    .restart local v5    # "otherSpan":Ljava/lang/Object;
    :cond_3
    :goto_1
    return v1

    .line 1638
    .end local v3    # "i":I
    .end local v4    # "thisSpan":Ljava/lang/Object;
    .end local v5    # "otherSpan":Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 1641
    .end local v0    # "other":Landroid/text/Spanned;
    .end local v2    # "otherSpans":[Ljava/lang/Object;
    :cond_5
    return v1
.end method

.method public getChars(II[CI)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .line 1217
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1219
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1220
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1221
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1222
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1224
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1225
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1229
    :goto_0
    return-void
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .line 1609
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    .line 840
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 841
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 842
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    .line 850
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 851
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 852
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    :goto_0
    return v1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    .line 830
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 831
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 832
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 862
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;
    .locals 18
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "sortByInsertionOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;Z)[TT;"
        }
    .end annotation

    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    .line 881
    if-nez v11, :cond_0

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 882
    :cond_0
    iget v0, v10, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 883
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    move/from16 v12, p1

    move/from16 v13, p2

    invoke-direct {v10, v12, v13, v11, v0}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v14

    .line 884
    .local v14, "count":I
    if-nez v14, :cond_2

    .line 885
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 889
    :cond_2
    invoke-static {v11, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [Ljava/lang/Object;

    .line 890
    .local v9, "ret":[Ljava/lang/Object;, "[TT;"
    if-eqz p4, :cond_3

    invoke-static {v14}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_0
    move-object v8, v0

    .line 891
    .local v8, "prioSortBuffer":[I
    if-eqz p4, :cond_4

    invoke-static {v14}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    :goto_1
    move-object v7, v0

    .line 892
    .local v7, "orderSortBuffer":[I
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    const/4 v15, 0x0

    move-object v0, v10

    move v1, v12

    move v2, v13

    move-object v3, v11

    move-object v5, v9

    move-object v6, v8

    move-object/from16 v16, v7

    .end local v7    # "orderSortBuffer":[I
    .local v16, "orderSortBuffer":[I
    move-object v11, v8

    move v8, v15

    .end local v8    # "prioSortBuffer":[I
    .local v11, "prioSortBuffer":[I
    move-object v12, v9

    move/from16 v9, p4

    .end local v9    # "ret":[Ljava/lang/Object;, "[TT;"
    .local v12, "ret":[Ljava/lang/Object;, "[TT;"
    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    .line 894
    if-eqz p4, :cond_5

    .line 895
    move-object/from16 v0, v16

    invoke-direct {v10, v12, v11, v0}, Landroid/text/SpannableStringBuilder;->sort([Ljava/lang/Object;[I[I)V

    .line 896
    .end local v16    # "orderSortBuffer":[I
    .local v0, "orderSortBuffer":[I
    invoke-static {v11}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    .line 897
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    goto :goto_2

    .line 899
    .end local v0    # "orderSortBuffer":[I
    .restart local v16    # "orderSortBuffer":[I
    :cond_5
    move-object/from16 v0, v16

    .end local v16    # "orderSortBuffer":[I
    .restart local v0    # "orderSortBuffer":[I
    :goto_2
    return-object v12
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 17
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    .line 1529
    sub-int v14, v13, v12

    .line 1530
    .local v14, "contextLen":I
    sub-int v15, v11, v10

    .line 1532
    .local v15, "len":I
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v11, v1, :cond_0

    .line 1533
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v1, p8

    move v3, v10

    move v4, v15

    move v5, v12

    move v6, v14

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    .local v1, "ret":F
    :goto_0
    goto :goto_1

    .line 1535
    .end local v1    # "ret":F
    :cond_0
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v10, v1, :cond_1

    .line 1536
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v3, v10, v1

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, v12, v1

    move-object/from16 v1, p8

    move v4, v15

    move v6, v14

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    goto :goto_0

    .line 1539
    :cond_1
    invoke-static {v14}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v9

    .line 1540
    .local v9, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {v0, v12, v13, v9, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1541
    sub-int v3, v10, v12

    const/4 v5, 0x0

    move-object/from16 v1, p8

    move-object v2, v9

    move v4, v15

    move v6, v14

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object v0, v9

    move/from16 v9, p7

    .end local v9    # "buf":[C
    .local v0, "buf":[C
    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    .line 1543
    .restart local v1    # "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1546
    .end local v0    # "buf":[C
    :goto_1
    return v1
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 9
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "dir"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1580
    sub-int v7, p2, p1

    .line 1581
    .local v7, "contextLen":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1582
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v3, v7

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    .local v0, "ret":I
    :goto_0
    goto :goto_1

    .line 1584
    .end local v0    # "ret":I
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1585
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v3, v7

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1588
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v8

    .line 1589
    .local v8, "buf":[C
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v8, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1590
    const/4 v2, 0x0

    sub-int v5, p4, p1

    move-object v0, p6

    move-object v1, v8

    move v3, v7

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    add-int/2addr v0, p1

    .line 1592
    .restart local v0    # "ret":I
    invoke-static {v8}, Landroid/text/TextUtils;->recycle([C)V

    .line 1595
    .end local v8    # "buf":[C
    :goto_1
    return v0
.end method

.method public getTextWatcherDepth()I
    .locals 1

    .line 1260
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .line 1501
    const-string v0, "getTextWidths"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1505
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1506
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-virtual {p4, v0, p1, v1, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    .local v0, "ret":I
    :goto_0
    goto :goto_1

    .line 1507
    .end local v0    # "ret":I
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1508
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    goto :goto_0

    .line 1510
    :cond_1
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1512
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1513
    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1514
    .local v1, "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1517
    .end local v0    # "buf":[C
    move v0, v1

    .end local v1    # "ret":I
    .local v0, "ret":I
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1647
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1648
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v1, v2

    .line 1649
    .end local v0    # "hash":I
    .local v1, "hash":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v2, :cond_1

    .line 1650
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 1651
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    .line 1652
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 1654
    :cond_0
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1655
    .end local v1    # "hash":I
    .local v3, "hash":I
    mul-int/lit8 v1, v3, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1656
    .end local v3    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    .line 1649
    .end local v2    # "span":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1658
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .line 229
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 224
    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .line 141
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .line 1477
    const-string/jumbo v0, "measureText"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1481
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    .line 1482
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-virtual {p3, v0, p1, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    .line 1482
    .local v0, "ret":F
    :goto_0
    goto :goto_1

    .line 1483
    .end local v0    # "ret":F
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    .line 1484
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    goto :goto_0

    .line 1486
    :cond_1
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1488
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1489
    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1490
    .local v1, "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1493
    .end local v0    # "buf":[C
    move v0, v1

    .line 1493
    .end local v1    # "ret":F
    .local v0, "ret":F
    :goto_1
    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .line 1174
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_0

    return p2

    .line 1175
    :cond_0
    if-nez p3, :cond_1

    .line 1176
    const-class p3, Ljava/lang/Object;

    .line 1178
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Object;

    .line 802
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;I)V

    .line 803
    return-void
.end method

.method public removeSpan(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 811
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 813
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 814
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    .line 816
    :cond_1
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 41
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .line 513
    if-nez p3, :cond_0

    .line 514
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "android.text.cts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    const-string v1, "SpannableStringBuilder"

    const-string/jumbo v2, "replace string is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-object p0

    .line 521
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 27
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    .line 527
    const-string/jumbo v0, "replace"

    invoke-direct {v7, v0, v8, v9}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 529
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v10, v0

    .line 530
    .local v10, "filtercount":I
    const/4 v11, 0x0

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move v0, v11

    .line 530
    .end local p3    # "tb":Ljava/lang/CharSequence;
    .end local p4    # "tbstart":I
    .end local p5    # "tbend":I
    .local v0, "i":I
    .local v12, "tb":Ljava/lang/CharSequence;
    .local v13, "tbstart":I
    .local v14, "tbend":I
    :goto_0
    move v15, v0

    .line 530
    .end local v0    # "i":I
    .local v15, "i":I
    if-ge v15, v10, :cond_1

    .line 531
    iget-object v0, v7, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v0, v0, v15

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v7

    move v5, v8

    move v6, v9

    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 533
    .local v0, "repl":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 534
    move-object v1, v0

    .line 535
    .end local v12    # "tb":Ljava/lang/CharSequence;
    .local v1, "tb":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 536
    .end local v13    # "tbstart":I
    .local v2, "tbstart":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 530
    .end local v14    # "tbend":I
    .local v0, "tbend":I
    move v14, v0

    move-object v12, v1

    move v13, v2

    .line 530
    .end local v0    # "tbend":I
    .end local v1    # "tb":Ljava/lang/CharSequence;
    .end local v2    # "tbstart":I
    .restart local v12    # "tb":Ljava/lang/CharSequence;
    .restart local v13    # "tbstart":I
    .restart local v14    # "tbend":I
    :cond_0
    add-int/lit8 v0, v15, 0x1

    .line 530
    .end local v15    # "i":I
    .local v0, "i":I
    goto :goto_0

    .line 540
    .end local v0    # "i":I
    :cond_1
    sub-int v15, v9, v8

    .line 541
    .local v15, "origLen":I
    sub-int v6, v14, v13

    .line 543
    .local v6, "newLen":I
    if-nez v15, :cond_2

    if-nez v6, :cond_2

    invoke-static {v12, v13}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 546
    return-object v7

    .line 549
    :cond_2
    add-int v0, v8, v15

    const-class v1, Landroid/text/TextWatcher;

    invoke-virtual {v7, v8, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Landroid/text/TextWatcher;

    .line 550
    .local v5, "textWatchers":[Landroid/text/TextWatcher;
    invoke-direct {v7, v5, v8, v15, v6}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    .line 555
    if-eqz v15, :cond_3

    if-eqz v6, :cond_3

    const/4 v11, 0x1

    nop

    .line 556
    .local v11, "adjustSelection":Z
    :cond_3
    const/4 v0, 0x0

    .line 557
    .local v0, "selectionStart":I
    const/4 v1, 0x0

    .line 558
    .local v1, "selectionEnd":I
    if-eqz v11, :cond_4

    .line 559
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 560
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 563
    .end local v0    # "selectionStart":I
    .end local v1    # "selectionEnd":I
    .local v3, "selectionEnd":I
    .local v4, "selectionStart":I
    :cond_4
    move v4, v0

    move v3, v1

    move-object v0, v7

    move v1, v8

    move v2, v9

    move/from16 v16, v10

    move v10, v3

    move-object v3, v12

    .line 563
    .end local v3    # "selectionEnd":I
    .local v10, "selectionEnd":I
    .local v16, "filtercount":I
    move-object/from16 v17, v12

    move v12, v4

    move v4, v13

    .line 563
    .end local v4    # "selectionStart":I
    .local v12, "selectionStart":I
    .local v17, "tb":Ljava/lang/CharSequence;
    move/from16 v18, v13

    move-object v13, v5

    move v5, v14

    .line 563
    .end local v5    # "textWatchers":[Landroid/text/TextWatcher;
    .local v13, "textWatchers":[Landroid/text/TextWatcher;
    .local v18, "tbstart":I
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    .line 565
    if-eqz v11, :cond_8

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "changed":Z
    if-le v12, v8, :cond_5

    if-ge v12, v9, :cond_5

    .line 568
    sub-int v4, v12, v8

    int-to-long v4, v4

    .line 569
    .local v4, "diff":J
    int-to-long v1, v6

    mul-long/2addr v1, v4

    move-wide/from16 v19, v4

    int-to-long v3, v15

    .line 569
    .end local v4    # "diff":J
    .local v19, "diff":J
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v21

    .line 570
    .local v21, "offset":I
    add-int v12, v8, v21

    .line 572
    const/16 v22, 0x1

    .line 573
    .end local v0    # "changed":Z
    .local v22, "changed":Z
    const/4 v1, 0x0

    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v5, 0x22

    const/16 v23, 0x1

    move-object v0, v7

    move v3, v12

    move v4, v12

    move/from16 v24, v11

    move v11, v6

    move/from16 v6, v23

    .line 573
    .end local v6    # "newLen":I
    .local v11, "newLen":I
    .local v24, "adjustSelection":Z
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 576
    .end local v19    # "diff":J
    .end local v21    # "offset":I
    move/from16 v0, v22

    goto :goto_1

    .line 576
    .end local v22    # "changed":Z
    .end local v24    # "adjustSelection":Z
    .restart local v0    # "changed":Z
    .restart local v6    # "newLen":I
    .local v11, "adjustSelection":Z
    :cond_5
    move/from16 v24, v11

    move v11, v6

    .line 576
    .end local v6    # "newLen":I
    .local v11, "newLen":I
    .restart local v24    # "adjustSelection":Z
    :goto_1
    if-le v10, v8, :cond_6

    if-ge v10, v9, :cond_6

    .line 577
    sub-int v3, v10, v8

    int-to-long v5, v3

    .line 578
    .local v5, "diff":J
    int-to-long v1, v11

    mul-long/2addr v1, v5

    int-to-long v3, v15

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result v19

    .line 579
    .local v19, "offset":I
    add-int v10, v8, v19

    .line 581
    const/16 v20, 0x1

    .line 582
    .end local v0    # "changed":Z
    .local v20, "changed":Z
    const/4 v1, 0x0

    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v21, 0x22

    const/16 v22, 0x1

    move-object v0, v7

    move v3, v10

    move v4, v10

    move-wide/from16 v25, v5

    move/from16 v5, v21

    .line 582
    .end local v5    # "diff":J
    .local v25, "diff":J
    move/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 585
    .end local v19    # "offset":I
    .end local v25    # "diff":J
    move/from16 v0, v20

    goto :goto_2

    .line 585
    .end local v20    # "changed":Z
    .restart local v0    # "changed":Z
    :cond_6
    move v3, v10

    .line 585
    .end local v10    # "selectionEnd":I
    .restart local v3    # "selectionEnd":I
    :goto_2
    if-eqz v0, :cond_7

    .line 586
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 590
    .end local v0    # "changed":Z
    :cond_7
    move v10, v3

    goto :goto_3

    .line 590
    .end local v3    # "selectionEnd":I
    .end local v24    # "adjustSelection":Z
    .restart local v6    # "newLen":I
    .restart local v10    # "selectionEnd":I
    .local v11, "adjustSelection":Z
    :cond_8
    move/from16 v24, v11

    move v11, v6

    .line 590
    .end local v6    # "newLen":I
    .local v11, "newLen":I
    .restart local v24    # "adjustSelection":Z
    :goto_3
    invoke-direct {v7, v13, v8, v15, v11}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 591
    invoke-direct {v7, v13}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    .line 594
    sub-int v6, v11, v15

    invoke-direct {v7, v8, v9, v6}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    .line 596
    return-object v7
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 1600
    if-eqz p1, :cond_0

    .line 1604
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 1605
    return-void

    .line 1601
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 7
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 689
    const/4 v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 690
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1209
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1249
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 1250
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1251
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1236
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1237
    .local v0, "len":I
    new-array v1, v0, [C

    .line 1239
    .local v1, "buf":[C
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1240
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
