.class public Landroid/text/AndroidBidi;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AndroidBidi$EmojiBidiOverride;
    }
.end annotation


# static fields
.field private static final sEmojiBidiOverride:Landroid/text/AndroidBidi$EmojiBidiOverride;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/AndroidBidi$EmojiBidiOverride;

    invoke-direct {v0}, Landroid/text/AndroidBidi$EmojiBidiOverride;-><init>()V

    sput-object v0, Landroid/text/AndroidBidi;->sEmojiBidiOverride:Landroid/text/AndroidBidi$EmojiBidiOverride;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bidi(I[C[B)I
    .locals 5

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p1

    array-length v1, p2

    if-lt v1, v0, :cond_2

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v2, v1

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x7e

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x7f

    :goto_0
    nop

    new-instance v3, Landroid/icu/text/Bidi;

    invoke-direct {v3, v0, v1}, Landroid/icu/text/Bidi;-><init>(II)V

    sget-object v4, Landroid/text/AndroidBidi;->sEmojiBidiOverride:Landroid/text/AndroidBidi$EmojiBidiOverride;

    invoke-virtual {v3, v4}, Landroid/icu/text/Bidi;->setCustomClassifier(Landroid/icu/text/BidiClassifier;)V

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v2, v4}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    nop

    :goto_1
    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v4

    aput-byte v4, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v1

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, -0x1

    :goto_2
    return v4

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static directions(I[BI[CII)Landroid/text/Layout$Directions;
    .locals 26

    move/from16 v2, p5

    if-nez v2, :cond_0

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v3

    :cond_0
    const/4 v4, 0x1

    move/from16 v5, p0

    if-ne v5, v4, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    aget-byte v7, p1, p2

    move v8, v7

    const/4 v9, 0x1

    add-int/lit8 v10, p2, 0x1

    add-int v11, p2, v2

    :goto_1
    if-ge v10, v11, :cond_3

    aget-byte v12, p1, v10

    if-eq v12, v7, :cond_2

    move v7, v12

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v2

    and-int/lit8 v11, v7, 0x1

    and-int/lit8 v12, v6, 0x1

    if-eq v11, v12, :cond_7

    :goto_2
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_6

    add-int v12, p4, v10

    aget-char v12, p3, v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_4

    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    :cond_4
    const/16 v13, 0x20

    if-eq v12, v13, :cond_5

    const/16 v13, 0x9

    if-eq v12, v13, :cond_5

    goto :goto_3

    :cond_5
    goto :goto_2

    :cond_6
    :goto_3
    add-int/2addr v10, v4

    if-eq v10, v2, :cond_7

    add-int/lit8 v9, v9, 0x1

    :cond_7
    if-ne v9, v4, :cond_9

    if-ne v8, v6, :cond_9

    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_8

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v3

    :cond_8
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v3

    :cond_9
    mul-int/lit8 v12, v9, 0x2

    new-array v12, v12, [I

    move v13, v8

    shl-int/lit8 v14, v8, 0x1a

    const/4 v15, 0x1

    move/from16 v16, p2

    move v7, v8

    move/from16 v17, p2

    add-int v18, p2, v10

    move v3, v8

    move/from16 v7, v17

    :goto_4
    move/from16 v19, v18

    move/from16 v4, v19

    if-ge v7, v4, :cond_d

    move/from16 v21, v4

    aget-byte v4, p1, v7

    if-eq v4, v8, :cond_c

    move v8, v4

    if-le v4, v13, :cond_a

    move v13, v4

    goto :goto_5

    :cond_a
    if-ge v4, v3, :cond_b

    move v3, v4

    :cond_b
    :goto_5
    add-int/lit8 v17, v15, 0x1

    sub-int v18, v7, v16

    or-int v18, v18, v14

    aput v18, v12, v15

    add-int/lit8 v15, v17, 0x1

    sub-int v18, v7, p2

    aput v18, v12, v17

    shl-int/lit8 v14, v8, 0x1a

    move v4, v7

    move/from16 v16, v4

    :cond_c
    add-int/lit8 v7, v7, 0x1

    move/from16 v18, v21

    const/4 v4, 0x1

    goto :goto_4

    :cond_d
    add-int v4, p2, v10

    sub-int v4, v4, v16

    or-int/2addr v4, v14

    aput v4, v12, v15

    if-ge v10, v2, :cond_e

    const/4 v4, 0x1

    add-int/2addr v15, v4

    aput v10, v12, v15

    add-int/2addr v15, v4

    sub-int v4, v2, v10

    shl-int/lit8 v7, v6, 0x1a

    or-int/2addr v4, v7

    aput v4, v12, v15

    :cond_e
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v6, :cond_10

    add-int/lit8 v3, v3, 0x1

    if-le v13, v3, :cond_f

    const/16 v20, 0x1

    goto :goto_6

    :cond_f
    const/16 v20, 0x0

    :goto_6
    move/from16 v4, v20

    goto :goto_7

    :cond_10
    const/4 v4, 0x1

    if-le v9, v4, :cond_11

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_16

    add-int/lit8 v7, v13, -0x1

    :goto_8
    if-lt v7, v3, :cond_16

    const/4 v15, 0x0

    :goto_9
    move/from16 v22, v15

    array-length v1, v12

    move/from16 v2, v22

    if-ge v2, v1, :cond_15

    aget v1, v12, v2

    aget-byte v1, p1, v1

    if-lt v1, v7, :cond_14

    add-int/lit8 v22, v2, 0x2

    :goto_a
    move/from16 v1, v22

    move/from16 v23, v3

    array-length v3, v12

    if-ge v1, v3, :cond_12

    aget v3, v12, v1

    aget-byte v3, p1, v3

    if-lt v3, v7, :cond_12

    add-int/lit8 v22, v1, 0x2

    move/from16 v3, v23

    goto :goto_a

    :cond_12
    move v3, v2

    add-int/lit8 v15, v1, -0x2

    :goto_b
    move/from16 v24, v15

    move/from16 v0, v24

    if-ge v3, v0, :cond_13

    aget v15, v12, v3

    aget v16, v12, v0

    aput v16, v12, v3

    aput v15, v12, v0

    add-int/lit8 v16, v3, 0x1

    aget v15, v12, v16

    add-int/lit8 v16, v3, 0x1

    add-int/lit8 v24, v0, 0x1

    aget v17, v12, v24

    aput v17, v12, v16

    add-int/lit8 v24, v0, 0x1

    aput v15, v12, v24

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v15, v0, -0x2

    goto :goto_b

    :cond_13
    add-int/lit8 v22, v1, 0x2

    goto :goto_c

    :cond_14
    move/from16 v23, v3

    move/from16 v22, v2

    :goto_c
    add-int/lit8 v15, v22, 0x2

    move/from16 v3, v23

    move/from16 v2, p5

    goto :goto_9

    :cond_15
    move/from16 v23, v3

    add-int/lit8 v7, v7, -0x1

    move/from16 v2, p5

    goto :goto_8

    :cond_16
    move/from16 v23, v3

    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, v12}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0
.end method
