.class public Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;
.super Ljava/lang/Object;
.source "Utf8ByteLengthFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private final mMaxBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p3

    const/4 v2, 0x0

    move v3, v2

    move/from16 v2, p2

    :goto_0
    const/4 v5, 0x2

    const/16 v6, 0x800

    const/16 v7, 0x80

    const/4 v8, 0x1

    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ge v9, v7, :cond_0

    goto :goto_1

    :cond_0
    if-ge v9, v6, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    :goto_1
    add-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_7

    move/from16 v11, p5

    if-lt v10, v11, :cond_4

    move/from16 v12, p6

    if-lt v10, v12, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v13, p4

    goto :goto_5

    :cond_4
    move/from16 v12, p6

    :goto_3
    move-object/from16 v13, p4

    invoke-interface {v13, v10}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    if-ge v14, v7, :cond_5

    move v15, v8

    goto :goto_4

    :cond_5
    if-ge v14, v6, :cond_6

    move v15, v5

    goto :goto_4

    :cond_6
    const/4 v15, 0x3

    :goto_4
    add-int/2addr v9, v15

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v13, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v10, p0

    iget v14, v10, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->mMaxBytes:I

    sub-int/2addr v14, v9

    if-gtz v14, :cond_8

    const-string v4, ""

    return-object v4

    :cond_8
    const/4 v15, 0x0

    if-lt v14, v3, :cond_9

    return-object v15

    :cond_9
    move/from16 v16, v14

    move/from16 v14, p2

    :goto_6
    if-ge v14, v1, :cond_d

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v7, :cond_a

    move/from16 v17, v8

    goto :goto_7

    :cond_a
    if-ge v4, v6, :cond_b

    move/from16 v17, v5

    goto :goto_7

    :cond_b
    const/16 v17, 0x3

    :goto_7
    sub-int v16, v16, v17

    if-gez v16, :cond_c

    move/from16 v5, p2

    invoke-interface {v0, v5, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_d
    return-object v15
.end method
