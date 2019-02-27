.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z = false


# instance fields
.field private final mNative:J

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_1

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    nop

    :cond_1
    if-eqz p3, :cond_3

    if-eq p3, v0, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ge p3, v0, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    nop

    :cond_3
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v1

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_18

    aget v5, v1, v4

    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    const/16 v7, 0x21

    const/4 v8, 0x1

    if-ne v5, v6, :cond_1

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v9, v4, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v6, v9, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    move-object/from16 v6, p0

    goto/16 :goto_3

    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_2

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v9, 0x2

    invoke-direct {v6, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v9, v4, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v6, v9, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_3

    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v9, v4, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v6, v9, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_4

    new-instance v6, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v9, "monospace"

    invoke-direct {v6, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v4, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v6, v9, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_5

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const/high16 v9, 0x3fa00000    # 1.25f

    invoke-direct {v6, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v9, v4, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v6, v9, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_6

    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    const v9, 0x3f4ccccd    # 0.8f

    invoke-direct {v6, v9}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v9, v4, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v6, v9, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_7

    new-instance v6, Landroid/text/style/SubscriptSpan;

    invoke-direct {v6}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v9, v4, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v6, v9, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_8

    new-instance v6, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v6}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v9, v4, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v6, v9, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_8
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_9

    new-instance v6, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v6}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v9, v4, 0x1

    aget v9, v1, v9

    add-int/lit8 v10, v4, 0x2

    aget v10, v1, v10

    add-int/2addr v10, v8

    invoke-virtual {v2, v6, v9, v10, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_a

    new-instance v6, Landroid/text/style/BulletSpan;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v7, v4, 0x1

    aget v7, v1, v7

    add-int/lit8 v9, v4, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v8

    invoke-static {v2, v6, v7, v9}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_1

    :cond_a
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v6

    if-ne v5, v6, :cond_b

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v7, v4, 0x1

    aget v7, v1, v7

    add-int/lit8 v9, v4, 0x2

    aget v9, v1, v9

    add-int/2addr v9, v8

    const/16 v8, 0x12

    invoke-virtual {v2, v6, v7, v9, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v6, p0

    iget-wide v9, v6, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v9, v10, v5}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v9

    const-string v10, "font;"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v10, ";height="

    invoke-static {v9, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Landroid/content/res/StringBlock$Height;

    invoke-direct {v12, v11}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v13, v4, 0x1

    aget v13, v1, v13

    add-int/lit8 v14, v4, 0x2

    aget v14, v1, v14

    add-int/2addr v14, v8

    invoke-static {v2, v12, v13, v14}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    :cond_c
    const-string v11, ";size="

    invoke-static {v9, v11}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v12, v11, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v13, v4, 0x1

    aget v13, v1, v13

    add-int/lit8 v14, v4, 0x2

    aget v14, v1, v14

    add-int/2addr v14, v8

    invoke-virtual {v2, v12, v13, v14, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    const-string v11, ";fgcolor="

    invoke-static {v9, v11}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-static {v10, v8}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v11

    add-int/lit8 v12, v4, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v4, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v8

    invoke-virtual {v2, v11, v12, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    const-string v11, ";color="

    invoke-static {v9, v11}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-static {v10, v8}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v11

    add-int/lit8 v12, v4, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v4, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v8

    invoke-virtual {v2, v11, v12, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    const-string v11, ";bgcolor="

    invoke-static {v9, v11}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-static {v10, v3}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v11

    add-int/lit8 v12, v4, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v4, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v8

    invoke-virtual {v2, v11, v12, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    const-string v11, ";face="

    invoke-static {v9, v11}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    new-instance v11, Landroid/text/style/TypefaceSpan;

    invoke-direct {v11, v10}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v4, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v4, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v8

    invoke-virtual {v2, v11, v12, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_11
    goto/16 :goto_3

    :cond_12
    const-string v10, "a;"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    const-string v10, ";href="

    invoke-static {v9, v10}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_13

    new-instance v11, Landroid/text/style/URLSpan;

    invoke-direct {v11, v10}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v12, v4, 0x1

    aget v12, v1, v12

    add-int/lit8 v13, v4, 0x2

    aget v13, v1, v13

    add-int/2addr v13, v8

    invoke-virtual {v2, v11, v12, v13, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    goto :goto_3

    :cond_14
    const-string v10, "annotation;"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x3b

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    :goto_2
    if-ge v12, v10, :cond_17

    const/16 v13, 0x3d

    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-gez v13, :cond_15

    goto :goto_3

    :cond_15
    invoke-virtual {v9, v11, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    if-gez v14, :cond_16

    move v14, v10

    :cond_16
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v9, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v9, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Landroid/text/Annotation;

    invoke-direct {v11, v15, v3}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v16, v4, 0x1

    aget v7, v1, v16

    add-int/lit8 v16, v4, 0x2

    aget v16, v1, v16

    add-int/lit8 v0, v16, 0x1

    const/16 v8, 0x21

    invoke-virtual {v2, v11, v7, v0, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v12, v14

    move v7, v8

    move-object/from16 v0, p1

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/16 v11, 0x3b

    goto :goto_2

    :cond_17
    :goto_3
    add-int/lit8 v4, v4, 0x3

    nop

    move-object/from16 v0, p1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v6, p0

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 12

    const/high16 v0, -0x1000000

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "color"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz p1, :cond_0

    new-instance v11, Landroid/text/style/TextAppearanceSpan;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v11

    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :cond_1
    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/high16 v0, -0x1000000

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    return-object v1

    :cond_4
    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    return-object v1
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetSize(J)I
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(JI)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3b

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v1, v2}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    goto :goto_0

    :cond_3
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v0

    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v1, :cond_4

    const/16 v1, 0xfa

    if-le v0, v1, :cond_4

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    goto :goto_0

    :cond_4
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    :goto_0
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v2, v3, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v3, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v3, :cond_5

    new-instance v3, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v3}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v3, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    :cond_5
    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_12

    aget v4, v2, v3

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-eq v4, v5, :cond_11

    iget-object v5, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v5}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v5

    if-ne v4, v5, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-wide v5, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v5, v6, v4}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v5

    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$002(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_7
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$102(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v6, "u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$202(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v6, "tt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$302(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_a
    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$402(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_b
    const-string/jumbo v6, "small"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$502(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_c
    const-string/jumbo v6, "sup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$702(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_d
    const-string/jumbo v6, "sub"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$602(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_e
    const-string/jumbo v6, "strike"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$802(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_f
    const-string/jumbo v6, "li"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$902(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_2

    :cond_10
    const-string/jumbo v6, "marquee"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-static {v6, v4}, Landroid/content/res/StringBlock$StyleIDs;->access$1002(Landroid/content/res/StringBlock$StyleIDs;I)I

    :cond_11
    :goto_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_1

    :cond_12
    iget-object v3, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v0, v2, v3}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v1, v3

    :cond_13
    iget-object v3, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v1, v3, p1

    goto :goto_3

    :cond_14
    iget-object v3, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
