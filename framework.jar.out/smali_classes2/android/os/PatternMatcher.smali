.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PATTERN_STORAGE:I = 0x800

.field private static final NO_MATCH:I = -0x1

.field private static final PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final TOKEN_TYPE_ANY:I = 0x1

.field private static final TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final TOKEN_TYPE_LITERAL:I = 0x0

.field private static final TOKEN_TYPE_SET:I = 0x2

.field private static final sParsedPatternScratch:[I


# instance fields
.field private final mParsedPattern:[I

.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    :goto_0
    return-void
.end method

.method private static isParsedModifier(I)Z
    .locals 1

    const/4 v0, -0x8

    if-eq p0, v0, :cond_1

    const/4 v0, -0x7

    if-eq p0, v0, :cond_1

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    const/4 v0, -0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static matchAdvancedPattern([ILjava/lang/String;)Z
    .locals 22

    move-object/from16 v9, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v10, v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v2, 0x0

    const/4 v12, 0x0

    move v13, v1

    move v1, v0

    move v0, v12

    :goto_0
    const/4 v3, 0x1

    if-ge v1, v10, :cond_7

    aget v4, v9, v1

    const/4 v5, -0x4

    const/4 v6, 0x2

    const/4 v14, -0x1

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    move v2, v1

    const/4 v5, 0x0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    move/from16 v17, v0

    move/from16 v16, v2

    move v15, v5

    goto :goto_4

    :pswitch_0
    if-ne v4, v14, :cond_0

    nop

    move v5, v6

    goto :goto_2

    :cond_0
    const/4 v5, 0x3

    :goto_2
    add-int/lit8 v2, v1, 0x1

    :goto_3
    add-int/2addr v1, v3

    if-ge v1, v10, :cond_1

    aget v7, v9, v1

    const/4 v8, -0x3

    if-eq v7, v8, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_4
    if-lt v1, v10, :cond_3

    move v0, v3

    :goto_5
    move v8, v0

    move/from16 v18, v1

    :goto_6
    move/from16 v19, v4

    goto :goto_7

    :cond_3
    aget v4, v9, v1

    const/4 v0, -0x5

    if-eq v4, v0, :cond_4

    packed-switch v4, :pswitch_data_1

    move v0, v3

    goto :goto_5

    :pswitch_1
    const/4 v3, 0x0

    const v0, 0x7fffffff

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :pswitch_2
    const/4 v3, 0x1

    const v0, 0x7fffffff

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    aget v0, v9, v1

    add-int/2addr v1, v3

    aget v2, v9, v1

    add-int/2addr v1, v6

    nop

    move v3, v0

    move/from16 v18, v1

    move v8, v2

    goto :goto_6

    :goto_7
    move v7, v3

    if-le v7, v8, :cond_5

    return v12

    :cond_5
    move-object/from16 v0, p1

    move v1, v13

    move v2, v11

    move v3, v15

    move v4, v7

    move v5, v8

    move-object v6, v9

    move/from16 v20, v7

    move/from16 v7, v16

    move/from16 v21, v8

    move/from16 v8, v17

    invoke-static/range {v0 .. v8}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    move-result v0

    if-ne v0, v14, :cond_6

    return v12

    :cond_6
    add-int/2addr v13, v0

    nop

    move/from16 v2, v16

    move/from16 v0, v17

    move/from16 v1, v18

    goto/16 :goto_0

    :cond_7
    if-lt v1, v10, :cond_8

    if-lt v13, v11, :cond_8

    move v12, v3

    nop

    :cond_8
    return v12

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static matchChar(Ljava/lang/String;III[III)Z
    .locals 5

    const/4 v0, 0x0

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    return v0

    :pswitch_0
    move v2, p5

    :goto_0
    if-ge v2, p6, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v4, p4, v2

    if-lt v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget v4, p4, v4

    if-gt v3, v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return v1

    :pswitch_1
    move v2, p5

    :goto_1
    if-ge v2, p6, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v4, p4, v2

    if-lt v3, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    aget v4, p4, v4

    if-gt v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v3, p4, p5

    if-ne v2, v3, :cond_5

    move v0, v1

    nop

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static matchChars(Ljava/lang/String;IIIII[III)I
    .locals 9

    const/4 v0, 0x0

    :goto_0
    move v1, p5

    if-ge v0, v1, :cond_0

    add-int v3, p1, v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, p4

    if-ge v0, v2, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    return v3
.end method

.method static matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_0
    const/16 v7, 0x2a

    const/16 v8, 0x2e

    if-ge v4, v0, :cond_11

    if-ge v5, v3, :cond_11

    move v9, v6

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_1

    :cond_2
    move v10, v1

    :goto_1
    move v6, v10

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_3

    move v11, v2

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    if-eqz v11, :cond_5

    move v9, v6

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_3

    :cond_4
    move v12, v1

    :goto_3
    move v6, v12

    :cond_5
    if-ne v6, v7, :cond_f

    if-nez v11, :cond_c

    if-ne v9, v8, :cond_c

    add-int/lit8 v7, v0, -0x1

    if-lt v4, v7, :cond_6

    return v2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_8

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_4

    :cond_7
    move v7, v1

    :goto_4
    move v6, v7

    :cond_8
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v3, :cond_8

    :goto_5
    if-ne v5, v3, :cond_a

    return v1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_b

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_6

    :cond_b
    move v7, v1

    :goto_6
    move v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v3, :cond_c

    :goto_7
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_e

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_8

    :cond_e
    move v7, v1

    :goto_8
    move v6, v7

    goto :goto_9

    :cond_f
    if-eq v9, v8, :cond_10

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_10

    return v1

    :cond_10
    add-int/lit8 v5, v5, 0x1

    :goto_9
    goto/16 :goto_0

    :cond_11
    if-lt v4, v0, :cond_12

    if-lt v5, v3, :cond_12

    return v2

    :cond_12
    add-int/lit8 v9, v0, -0x2

    if-ne v4, v9, :cond_13

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_13

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_13

    return v2

    :cond_13
    return v1
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_4
    return v0
.end method

.method static declared-synchronized parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .locals 20

    move-object/from16 v1, p0

    const-class v2, Landroid/os/PatternMatcher;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v6

    move v6, v5

    move v5, v4

    move v4, v0

    move v0, v7

    :goto_0
    if-ge v4, v3, :cond_16

    const/16 v9, 0x7fd

    if-gt v5, v9, :cond_15

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x2e

    const/16 v12, 0x7d

    if-eq v9, v11, :cond_b

    const/16 v11, 0x7b

    if-eq v9, v11, :cond_9

    if-eq v9, v12, :cond_8

    packed-switch v9, :pswitch_data_0

    const/4 v11, -0x2

    const/4 v13, -0x1

    packed-switch v9, :pswitch_data_1

    const/4 v10, 0x1

    :cond_0
    :goto_1
    move v13, v5

    :goto_2
    move v5, v4

    move v4, v0

    goto/16 :goto_5

    :pswitch_0
    if-nez v6, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    sget-object v14, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v15, v5, -0x1

    aget v14, v14, v15

    if-eq v14, v13, :cond_2

    if-eq v14, v11, :cond_2

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, 0x1

    const/4 v15, -0x3

    aput v15, v11, v5

    const/4 v5, 0x0

    const/4 v0, 0x0

    nop

    move v6, v5

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v11, "You must define characters in a set."

    invoke-direct {v7, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_1
    add-int/lit8 v11, v4, 0x1

    if-ge v11, v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move v9, v11

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v11, "Escape found at end of pattern!"

    invoke-direct {v7, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_2
    if-eqz v6, :cond_4

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x5e

    if-ne v12, v14, :cond_5

    sget-object v12, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, 0x1

    aput v11, v12, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v13

    goto :goto_3

    :cond_5
    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v5, 0x1

    aput v13, v11, v5

    move v5, v12

    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :pswitch_3
    if-nez v6, :cond_0

    if-eqz v5, :cond_6

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, -0x1

    aget v11, v11, v13

    invoke-static {v11}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v11

    if-nez v11, :cond_6

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, 0x1

    const/4 v14, -0x8

    aput v14, v11, v5

    goto :goto_2

    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v11, "Modifier must follow a token."

    invoke-direct {v7, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_4
    if-nez v6, :cond_0

    if-eqz v5, :cond_7

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, -0x1

    aget v11, v11, v13

    invoke-static {v11}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, 0x1

    const/4 v14, -0x7

    aput v14, v11, v5

    goto/16 :goto_2

    :cond_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v11, "Modifier must follow a token."

    invoke-direct {v7, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    if-eqz v8, :cond_0

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, 0x1

    const/4 v14, -0x6

    aput v14, v11, v5

    const/4 v5, 0x0

    :goto_4
    move v8, v5

    goto/16 :goto_2

    :cond_9
    if-nez v6, :cond_0

    if-eqz v5, :cond_a

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, -0x1

    aget v11, v11, v13

    invoke-static {v11}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v11

    if-nez v11, :cond_a

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, 0x1

    const/4 v14, -0x5

    aput v14, v11, v5

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_4

    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v11, "Modifier must follow a token."

    invoke-direct {v7, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_b
    if-nez v6, :cond_0

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v5, 0x1

    const/4 v14, -0x4

    aput v14, v11, v5

    goto/16 :goto_2

    :goto_5
    if-eqz v6, :cond_e

    if-eqz v4, :cond_c

    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v13, 0x1

    aput v9, v0, v13

    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_c
    add-int/lit8 v0, v5, 0x2

    if-ge v0, v3, :cond_d

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v11, 0x2d

    if-ne v0, v11, :cond_d

    add-int/lit8 v0, v5, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v11, 0x5d

    if-eq v0, v11, :cond_d

    const/4 v0, 0x1

    sget-object v4, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v13, 0x1

    aput v9, v4, v13

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_d
    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v13, 0x1

    aput v9, v0, v13

    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v11, 0x1

    aput v9, v0, v11

    move v0, v4

    move v11, v12

    goto/16 :goto_8

    :cond_e
    if-eqz v8, :cond_13

    invoke-virtual {v1, v12, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v11, v0

    if-ltz v11, :cond_12

    invoke-virtual {v1, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const/16 v0, 0x2c

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v14, v0

    if-gez v14, :cond_f

    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v15, v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_f
    invoke-virtual {v12, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v14, v15, :cond_10

    const v15, 0x7fffffff

    goto :goto_6

    :cond_10
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :goto_6
    if-gt v0, v15, :cond_11

    sget-object v16, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v17, v13, 0x1

    :try_start_2
    aput v0, v16, v13

    sget-object v13, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v16, v17, 0x1

    :try_start_3
    aput v15, v13, v17
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    move v0, v11

    nop

    move/from16 v5, v16

    move/from16 v19, v4

    move v4, v0

    move/from16 v0, v19

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move/from16 v13, v16

    goto :goto_7

    :catch_2
    move-exception v0

    move/from16 v13, v17

    goto :goto_7

    :cond_11
    :try_start_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move/from16 v18, v0

    const-string v0, "Range quantifier minimum is greater than maximum"

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    nop

    :try_start_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v15, "Range number format incorrect"

    invoke-direct {v7, v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Range not ended with \'}\'"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    if-eqz v10, :cond_14

    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v13, 0x1

    aput v9, v0, v13

    move v0, v4

    goto :goto_8

    :cond_14
    move v0, v4

    move v11, v13

    :goto_8
    add-int/lit8 v4, v5, 0x1

    nop

    move v5, v11

    goto/16 :goto_0

    :cond_15
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Pattern is too large!"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_16
    if-nez v6, :cond_17

    sget-object v7, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    invoke-static {v7, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v2

    return-object v7

    :cond_17
    :try_start_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Set was not terminated!"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, v2}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "? "

    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "ADVANCED: "

    goto :goto_0

    :pswitch_1
    const-string v0, "GLOB: "

    goto :goto_0

    :pswitch_2
    const-string v0, "PREFIX: "

    goto :goto_0

    :pswitch_3
    const-string v0, "LITERAL: "

    nop

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
