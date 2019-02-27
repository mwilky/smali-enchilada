.class public Landroid/content/res/ColorStateList;
.super Landroid/content/res/ComplexColor;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_COLOR:I = -0x10000

.field private static final EMPTY:[[I

.field private static final TAG:Ljava/lang/String; = "ColorStateList"

.field private static final sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private mColors:[I

.field private mDefaultColor:I

.field private mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private mIsOpaque:Z

.field private mStateSpecs:[[I

.field private mThemeAttrs:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    iget-object v0, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    :cond_0
    return-void
.end method

.method public constructor <init>([[I[I)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/res/ColorStateList;)I
    .locals 1

    iget v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return v0
.end method

.method private applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 11

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v5, v1, v0

    if-eqz v5, :cond_3

    aget-object v5, v1, v0

    sget-object v6, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    aget-object v6, v1, v0

    aget v6, v6, v3

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v6, v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    goto :goto_1

    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_1
    aget-object v7, v1, v0

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v7

    aput-object v7, v1, v0

    aget-object v7, v1, v0

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v7, v7, v0

    invoke-virtual {v5, v3, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iget-object v9, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0, v7, v8}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v10

    aput v10, v9, v0

    iget v9, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    :cond_5
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1}, Landroid/content/res/ColorStateList;-><init>()V

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v1

    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    const/high16 v5, -0x10000

    const/4 v6, 0x0

    const-class v7, [I

    const/16 v8, 0x14

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    array-length v8, v7

    new-array v8, v8, [[I

    array-length v9, v7

    new-array v9, v9, [I

    move-object v11, v7

    move v7, v6

    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v13, v12

    if-eq v12, v3, :cond_a

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move v14, v12

    if-ge v12, v2, :cond_1

    const/4 v12, 0x3

    if-eq v13, v12, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v17, v2

    move/from16 v18, v13

    goto/16 :goto_7

    :cond_1
    :goto_1
    const/4 v12, 0x2

    if-ne v13, v12, :cond_9

    if-gt v14, v2, :cond_9

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v15, "item"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    nop

    move/from16 v17, v2

    goto/16 :goto_5

    :cond_2
    sget-object v12, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    move-object/from16 v15, p1

    move-object/from16 v3, p4

    invoke-static {v15, v3, v1, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v10

    move/from16 v17, v2

    const v2, -0xff01

    const/4 v3, 0x0

    invoke-virtual {v12, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v18, v13

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v16

    or-int v5, v5, v16

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v16, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v13

    move/from16 v19, v5

    new-array v5, v13, [I

    move-object/from16 v20, v12

    move/from16 v12, v16

    const/16 v16, 0x0

    :goto_2
    move/from16 v21, v16

    move/from16 v22, v14

    move/from16 v14, v21

    if-ge v14, v13, :cond_5

    move/from16 v23, v13

    invoke-interface {v1, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v13

    const v15, 0x10101a5

    if-eq v13, v15, :cond_4

    const v15, 0x101031f

    if-eq v13, v15, :cond_4

    add-int/lit8 v15, v12, 0x1

    move/from16 v24, v15

    const/4 v15, 0x0

    invoke-interface {v1, v14, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v16

    if-eqz v16, :cond_3

    move v15, v13

    goto :goto_3

    :cond_3
    neg-int v15, v13

    :goto_3
    aput v15, v5, v12

    move/from16 v12, v24

    goto :goto_4

    :cond_4
    nop

    :goto_4
    add-int/lit8 v16, v14, 0x1

    move/from16 v14, v22

    move/from16 v13, v23

    move-object/from16 v15, p1

    goto :goto_2

    :cond_5
    move/from16 v23, v13

    invoke-static {v5, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v5

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;->modulateColorAlpha(IF)I

    move-result v13

    if-eqz v4, :cond_6

    array-length v14, v5

    if-nez v14, :cond_7

    :cond_6
    move v6, v13

    :cond_7
    if-eqz v10, :cond_8

    const/4 v7, 0x1

    :cond_8
    invoke-static {v9, v4, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    invoke-static {v8, v4, v10}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v8, v14

    check-cast v8, [[I

    invoke-static {v11, v4, v5}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    check-cast v11, [[I

    add-int/lit8 v4, v4, 0x1

    nop

    move/from16 v2, v17

    move/from16 v5, v19

    goto :goto_6

    :cond_9
    move/from16 v17, v2

    :goto_5
    move/from16 v2, v17

    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_a
    move/from16 v17, v2

    move/from16 v18, v13

    :goto_7
    iput v5, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v6, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    if-eqz v7, :cond_b

    new-array v2, v4, [[I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    iget-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    const/4 v3, 0x0

    invoke-static {v8, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    :goto_8
    new-array v2, v4, [I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mColors:[I

    new-array v2, v4, [[I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iget-object v2, v0, Landroid/content/res/ColorStateList;->mColors:[I

    const/4 v3, 0x0

    invoke-static {v9, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v11, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct/range {p0 .. p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    return-void
.end method

.method private modulateColorAlpha(IF)I
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, v1, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private onColorsChanged()V
    .locals 8

    const/high16 v0, -0x10000

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v4, v2

    if-lez v4, :cond_3

    const/4 v5, 0x0

    aget v0, v3, v5

    add-int/lit8 v6, v4, -0x1

    :goto_0
    if-lez v6, :cond_1

    aget-object v7, v2, v6

    array-length v7, v7

    if-nez v7, :cond_0

    aget v0, v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    nop

    :goto_2
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput-boolean v1, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return-void
.end method

.method public static valueOf(I)Landroid/content/res/ColorStateList;
    .locals 7

    sget-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_3

    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Landroid/content/res/ColorStateList;->EMPTY:[[I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p0, v5, v6

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorForState([II)I
    .locals 4

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public getColors()[I
    .locals 1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public getConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    return-object v0
.end method

.method public getDefaultColor()I
    .locals 1

    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public getStates()[[I
    .locals 1

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 2

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method public hasState(I)Z
    .locals 9

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget v7, v4, v6

    if-eq v7, p1, :cond_1

    aget v7, v4, v6

    not-int v8, p1

    if-ne v7, v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    const/4 v2, 0x1

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return v0
.end method

.method public isStateful()Z
    .locals 3

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v0, v0, v1

    array-length v0, v0

    if-lez v0, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mThemeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAlpha(I)Landroid/content/res/ColorStateList;
    .locals 5

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v0

    new-array v0, v0, [I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ColorStateList"

    const-string v1, "Wrote partially-resolved ColorStateList to parcel!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
