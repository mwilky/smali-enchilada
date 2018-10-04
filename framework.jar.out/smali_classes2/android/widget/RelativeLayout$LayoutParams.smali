.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mNeedsLayoutResolution:Z

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0x16

    new-array v2, v1, [I

    iput-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v2, v1, [I

    iput-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    sget-object v3, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x11

    const/4 v8, 0x1

    if-lt v6, v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v8

    :goto_1
    iput-boolean v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iget-object v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v11

    move v12, v2

    :goto_2
    if-ge v12, v11, :cond_b

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v13

    const/4 v14, -0x1

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const/16 v15, 0x15

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_3

    :cond_2
    move v14, v2

    :goto_3
    aput v14, v9, v15

    goto/16 :goto_c

    :pswitch_1
    const/16 v15, 0x14

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_4

    :cond_3
    move v14, v2

    :goto_4
    aput v14, v9, v15

    goto/16 :goto_c

    :pswitch_2
    const/16 v14, 0x13

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto/16 :goto_c

    :pswitch_3
    const/16 v14, 0x12

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto/16 :goto_c

    :pswitch_4
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v9, v7

    goto/16 :goto_c

    :pswitch_5
    const/16 v14, 0x10

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto/16 :goto_c

    :pswitch_6
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    iput-boolean v14, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto/16 :goto_c

    :pswitch_7
    const/16 v15, 0xf

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_5

    :cond_4
    move v14, v2

    :goto_5
    aput v14, v9, v15

    goto/16 :goto_c

    :pswitch_8
    const/16 v15, 0xe

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_6

    :cond_5
    move v14, v2

    :goto_6
    aput v14, v9, v15

    goto/16 :goto_c

    :pswitch_9
    const/16 v15, 0xd

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_6

    goto :goto_7

    :cond_6
    move v14, v2

    :goto_7
    aput v14, v9, v15

    goto/16 :goto_c

    :pswitch_a
    const/16 v15, 0xc

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_7

    goto :goto_8

    :cond_7
    move v14, v2

    :goto_8
    aput v14, v9, v15

    goto/16 :goto_c

    :pswitch_b
    const/16 v15, 0xb

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_8

    goto :goto_9

    :cond_8
    move v14, v2

    :goto_9
    aput v14, v9, v15

    goto/16 :goto_c

    :pswitch_c
    const/16 v15, 0xa

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_9

    goto :goto_a

    :cond_9
    move v14, v2

    :goto_a
    aput v14, v9, v15

    goto :goto_c

    :pswitch_d
    const/16 v15, 0x9

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_a

    goto :goto_b

    :cond_a
    move v14, v2

    :goto_b
    aput v14, v9, v15

    goto :goto_c

    :pswitch_e
    const/16 v14, 0x8

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto :goto_c

    :pswitch_f
    const/4 v14, 0x7

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto :goto_c

    :pswitch_10
    const/4 v14, 0x6

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto :goto_c

    :pswitch_11
    const/4 v14, 0x5

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto :goto_c

    :pswitch_12
    const/4 v14, 0x4

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto :goto_c

    :pswitch_13
    const/4 v14, 0x3

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto :goto_c

    :pswitch_14
    const/4 v14, 0x2

    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    aput v15, v9, v14

    goto :goto_c

    :pswitch_15
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v9, v8

    goto :goto_c

    :pswitch_16
    invoke-virtual {v3, v13, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    aput v14, v9, v2

    nop

    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_b
    iput-boolean v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    invoke-static {v9, v2, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iget-object v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method private hasRelativeRules()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_0

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

.method private isRelativeRule(I)Z
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

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

.method private resolveRules(I)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v3, p1

    if-ne v3, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v7, 0x16

    invoke-static {v5, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    const/16 v7, 0x9

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/16 v10, 0x15

    const/16 v11, 0x14

    const/16 v12, 0x11

    const/16 v13, 0x10

    const/16 v14, 0x13

    const/16 v15, 0x12

    if-eqz v5, :cond_c

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v15

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v9

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v15

    aput v6, v5, v9

    :cond_1
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v15

    :cond_2
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v14

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v8

    if-nez v5, :cond_3

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v14

    aput v6, v5, v8

    :cond_3
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v14

    :cond_4
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v13

    if-eqz v5, :cond_6

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v2

    if-nez v5, :cond_5

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v13

    aput v6, v5, v2

    :cond_5
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v13

    :cond_6
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v12

    if-eqz v5, :cond_8

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v1

    if-nez v5, :cond_7

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v12

    aput v6, v5, v1

    :cond_7
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v12

    :cond_8
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v11

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-nez v1, :cond_9

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v11

    aput v5, v1, v7

    :cond_9
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v11

    :cond_a
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v10

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0xb

    aget v1, v1, v5

    if-nez v1, :cond_b

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v10

    aput v6, v1, v5

    :cond_b
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v10

    goto/16 :goto_8

    :cond_c
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v15

    if-nez v5, :cond_d

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v14

    if-eqz v5, :cond_f

    :cond_d
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v9

    if-nez v5, :cond_e

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v8

    if-eqz v5, :cond_f

    :cond_e
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v9

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v8

    :cond_f
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v15

    if-eqz v5, :cond_11

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_10

    move v6, v8

    goto :goto_1

    :cond_10
    move v6, v9

    :goto_1
    iget-object v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v8, v8, v15

    aput v8, v5, v6

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v15

    :cond_11
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v14

    if-eqz v5, :cond_13

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_12

    move/from16 v16, v9

    goto :goto_2

    :cond_12
    const/16 v16, 0x7

    :goto_2
    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v14

    aput v6, v5, v16

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v14

    :cond_13
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v13

    if-nez v5, :cond_14

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v12

    if-eqz v5, :cond_16

    :cond_14
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v2

    if-nez v5, :cond_15

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v1

    if-eqz v5, :cond_16

    :cond_15
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v2

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v1

    :cond_16
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v13

    if-eqz v5, :cond_18

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_17

    move v6, v1

    goto :goto_3

    :cond_17
    move v6, v2

    :goto_3
    iget-object v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v8, v8, v13

    aput v8, v5, v6

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v5, v13

    :cond_18
    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v12

    if-eqz v5, :cond_1a

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_19

    move v1, v2

    nop

    :cond_19
    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v12

    aput v6, v5, v1

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v12

    :cond_1a
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v11

    if-nez v1, :cond_1c

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v10

    if-eqz v1, :cond_1b

    goto :goto_4

    :cond_1b
    const/16 v5, 0xb

    goto :goto_6

    :cond_1c
    :goto_4
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v7

    if-nez v1, :cond_1d

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0xb

    aget v1, v1, v5

    if-eqz v1, :cond_1e

    goto :goto_5

    :cond_1d
    const/16 v5, 0xb

    :goto_5
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v7

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v5

    :cond_1e
    :goto_6
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v11

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_1f

    move v6, v5

    goto :goto_7

    :cond_1f
    move v6, v7

    :goto_7
    iget-object v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v8, v8, v11

    aput v8, v1, v6

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v11

    :cond_20
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v10

    if-eqz v1, :cond_22

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v4, :cond_21

    move v5, v7

    nop

    :cond_21
    iget-object v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v6, v6, v10

    aput v6, v1, v5

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v10

    :cond_22
    :goto_8
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    return-void
.end method

.method private shouldResolveLayoutDirection(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addRule(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method public addRule(II)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "layout:alignWithParent"

    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public getRule(I)I
    .locals 1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRules()[I
    .locals 1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    return-void
.end method
