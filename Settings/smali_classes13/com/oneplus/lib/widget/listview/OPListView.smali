.class public Lcom/oneplus/lib/widget/listview/OPListView;
.super Landroid/widget/ListView;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "OPListView"


# instance fields
.field private mAnimRunning:Z

.field private mAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDelAniSet:Landroid/animation/AnimatorSet;

.field private mDelAnimationFlag:Z

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

.field private mDisableTouchEvent:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

.field private mDividerHeight:I

.field private mFooterDividersEnabled:Z

.field private mHeaderDividersEnabled:Z

.field private mInDeleteAnimation:Z

.field private mIsClipToPadding:Z

.field private mIsDisableAnimation:Z

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I

.field mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    iput-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    new-instance v0, Lcom/oneplus/lib/widget/listview/OPListView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/listview/OPListView$1;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/listview/OPListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/listview/OPListView;)Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/lib/widget/listview/OPListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/listview/OPListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p1, v1, :cond_0

    const-string v1, "y"

    new-array v2, v2, [F

    aput p3, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v2, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v4

    invoke-static {p2, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aget-object v5, v1, v4

    new-array v2, v2, [F

    aput p3, v2, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-virtual {v5, v2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private getDividerType(I)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/listview/IOPDividerController;->getDividerType(I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPListView:[I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->OPListViewStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPListView_android_divider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPListView_android_background:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$dimen;->listview_divider_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->setOverScrollMode(I)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, 0x106000d

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/listview/OPListView;->setDividerHeight(I)V

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->setFooterDividersEnabled(Z)V

    return-void
.end method

.method private isClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    return v0
.end method

.method private setDelViewLocation()V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/4 v4, 0x0

    if-nez v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getBottom()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    if-nez v12, :cond_2

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v12, 0x0

    move v13, v10

    move-object v10, v8

    move v8, v12

    :goto_1
    if-ge v8, v9, :cond_4

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v8, :cond_3

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v13

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    iget-boolean v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    if-nez v14, :cond_11

    if-nez v3, :cond_7

    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v14, :cond_5

    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 1"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_5
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v14, v15, :cond_6

    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 3 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_a

    :cond_6
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 2 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v12

    :goto_2
    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v14, v15, :cond_19

    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_7
    if-nez v4, :cond_c

    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v14, :cond_8

    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 4 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v14, :cond_a

    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v14, v15, :cond_9

    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 9 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 10 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v14, v15, :cond_b

    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 5 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 6 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v14, :cond_d

    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 11 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v14, v15, :cond_e

    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 7 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    const-string v14, "OPListView"

    const-string v15, "DeleteAnimation Case 8 "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v14, v12

    :goto_4
    iget v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    if-ge v14, v15, :cond_f

    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v16, v14, 0x1

    mul-int v16, v16, v13

    add-int v6, v7, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_4

    :cond_f
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v11, v6, v2

    move v6, v12

    :goto_5
    if-ge v6, v11, :cond_10

    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_10
    const/4 v6, 0x1

    move v8, v6

    :goto_6
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_19

    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v14, v13

    mul-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v12, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_11
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v6, :cond_13

    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v6, :cond_12

    goto :goto_8

    :cond_12
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 14 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_13
    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v6, :cond_15

    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v6, v14, :cond_14

    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 12 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    :cond_14
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 13 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v12

    :goto_7
    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v6, v14, :cond_18

    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_15
    if-nez v4, :cond_17

    iget v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iget v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    if-lt v6, v14, :cond_16

    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 15 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_16
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 16 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_17
    const-string v6, "OPListView"

    const-string v14, "DeleteAnimation Case 17 "

    invoke-static {v6, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_8
    const/4 v6, 0x1

    move v8, v6

    :goto_9
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v2, v6, :cond_19

    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v14, v13

    mul-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v12, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_19
    :goto_a
    iget-object v6, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v6, v14

    move v11, v12

    :goto_b
    if-ge v11, v6, :cond_1a

    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v15, v11, 0x1

    mul-int/2addr v15, v13

    add-int/2addr v15, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_1a
    const/4 v11, 0x0

    add-int/lit8 v14, v9, -0x1

    :goto_c
    if-ltz v14, :cond_1d

    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v15, v12, :cond_1b

    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_d

    :cond_1b
    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    if-ge v12, v15, :cond_1c

    add-int/lit8 v11, v11, 0x1

    :cond_1c
    :goto_d
    add-int/lit8 v14, v14, -0x1

    const/4 v12, 0x0

    goto :goto_c

    :cond_1d
    const/4 v12, 0x1

    if-le v11, v12, :cond_20

    iget-object v12, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    iget-object v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    iget-object v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_e
    move/from16 v19, v18

    move/from16 v20, v1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v21, v2

    move/from16 v2, v19

    if-ge v2, v1, :cond_1f

    if-ge v2, v11, :cond_1e

    sub-int v1, v11, v2

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    move v15, v1

    goto :goto_10

    :cond_1e
    const/16 v16, 0x1

    move v1, v2

    goto :goto_f

    :goto_10
    iget-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v22, v3

    move-object/from16 v3, v17

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v2, 0x1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    goto :goto_e

    :cond_1f
    move/from16 v22, v3

    goto :goto_11

    :cond_20
    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    :goto_11
    return-void
.end method

.method private shouldDrawDivider(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerType(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private startDelDropAnimation()V
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->setDelViewLocation()V

    const/16 v0, 0xc8

    const/16 v1, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Landroid/view/View;

    const/16 v4, 0xc8

    iget-object v5, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v1, v2, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v5, v7, v3

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/oneplus/lib/widget/listview/OPListView$3;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/widget/listview/OPListView$3;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startDelGoneAnimation()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    return-void

    :cond_1
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/16 v3, 0xc8

    const-string v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_2

    iget-object v6, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-array v7, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v7, v2

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v3

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-array v9, v0, [Landroid/animation/Animator;

    aput-object v7, v9, v2

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/oneplus/lib/widget/listview/OPListView$2;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/listview/OPListView$2;-><init>(Lcom/oneplus/lib/widget/listview/OPListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getOverscrollHeader()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getOverscrollFooter()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-nez v8, :cond_4

    if-nez v6, :cond_4

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move/from16 v27, v6

    move/from16 v28, v7

    goto/16 :goto_13

    :cond_4
    :goto_3
    iget-object v9, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getPaddingLeft()I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getRight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getHeaderViewsCount()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getCount()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFooterViewsCount()I

    move-result v13

    sub-int v13, v12, v13

    iget-boolean v14, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    iget-boolean v15, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isClipToPadding()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getListPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getListPaddingBottom()I

    move-result v19

    :cond_5
    move/from16 v5, v18

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getTop()I

    move-result v20

    sub-int v18, v18, v20

    sub-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v20

    add-int v4, v18, v20

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isStackFromBottom()Z

    move-result v18

    move-object/from16 v21, v2

    if-nez v18, :cond_14

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v20

    if-lez v10, :cond_6

    if-gez v20, :cond_6

    if-eqz v8, :cond_6

    const/4 v2, 0x0

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v2

    neg-int v2, v2

    iput v2, v9, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v9, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_6
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v10, :cond_13

    move-object/from16 v23, v3

    add-int v3, v16, v2

    if-ge v3, v11, :cond_7

    const/16 v22, 0x1

    goto :goto_5

    :cond_7
    const/16 v22, 0x0

    :goto_5
    if-lt v3, v13, :cond_8

    const/16 v24, 0x1

    goto :goto_6

    :cond_8
    const/16 v24, 0x0

    :goto_6
    if-nez v14, :cond_9

    if-nez v22, :cond_a

    :cond_9
    if-nez v15, :cond_b

    if-nez v24, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v25, v12

    goto :goto_b

    :cond_b
    :goto_7
    move/from16 v25, v12

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move/from16 v26, v5

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    move/from16 v27, v6

    add-int/lit8 v6, v10, -0x1

    if-ne v2, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    :goto_8
    if-eqz v8, :cond_11

    invoke-direct {v0, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v18

    if-lez v18, :cond_11

    if-ge v5, v4, :cond_11

    if-eqz v7, :cond_e

    if-nez v6, :cond_d

    goto :goto_9

    :cond_d
    move/from16 v28, v7

    goto :goto_a

    :cond_e
    :goto_9
    move/from16 v28, v7

    add-int/lit8 v7, v3, 0x1

    if-nez v14, :cond_f

    if-nez v22, :cond_12

    if-lt v7, v11, :cond_12

    :cond_f
    if-nez v6, :cond_10

    if-nez v15, :cond_10

    if-nez v24, :cond_12

    if-ge v7, v13, :cond_12

    :cond_10
    move/from16 v29, v3

    invoke-virtual {v12}, Landroid/view/View;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    move/from16 v30, v6

    add-int v6, v5, v3

    iput v6, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v6, v3

    iput v6, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v9, v2}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_a

    :cond_11
    move/from16 v28, v7

    :cond_12
    :goto_a
    move/from16 v18, v5

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v23

    move/from16 v12, v25

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v7, v28

    goto/16 :goto_4

    :cond_13
    move-object/from16 v23, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v25, v12

    goto/16 :goto_13

    :cond_14
    move-object/from16 v23, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v25, v12

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getScrollY()I

    move-result v2

    if-eqz v27, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    :goto_c
    move v5, v3

    :goto_d
    if-ge v5, v10, :cond_21

    add-int v6, v16, v5

    if-ge v6, v11, :cond_16

    const/4 v7, 0x1

    goto :goto_e

    :cond_16
    const/4 v7, 0x0

    :goto_e
    if-lt v6, v13, :cond_17

    const/4 v12, 0x1

    goto :goto_f

    :cond_17
    const/4 v12, 0x0

    :goto_f
    if-nez v14, :cond_19

    if-nez v7, :cond_18

    goto :goto_10

    :cond_18
    move/from16 v32, v2

    move/from16 v34, v3

    move/from16 v31, v4

    move/from16 v4, v26

    goto :goto_12

    :cond_19
    :goto_10
    if-nez v15, :cond_1a

    if-nez v12, :cond_18

    :cond_1a
    move/from16 v31, v4

    invoke-virtual {v0, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move/from16 v32, v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    if-eqz v8, :cond_1f

    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v18

    if-eqz v18, :cond_1f

    move-object/from16 v33, v4

    move/from16 v4, v26

    if-le v2, v4, :cond_1e

    if-ne v5, v3, :cond_1b

    const/16 v18, 0x1

    goto :goto_11

    :cond_1b
    const/16 v18, 0x0

    :goto_11
    move/from16 v34, v3

    add-int/lit8 v3, v6, -0x1

    if-nez v14, :cond_1c

    if-nez v7, :cond_20

    if-lt v3, v11, :cond_20

    :cond_1c
    if-nez v18, :cond_1d

    if-nez v15, :cond_1d

    if-nez v12, :cond_20

    if-ge v3, v13, :cond_20

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v20

    move/from16 v35, v3

    sub-int v3, v2, v20

    iput v3, v9, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v5, -0x1

    invoke-virtual {v0, v1, v9, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_12

    :cond_1e
    move/from16 v34, v3

    goto :goto_12

    :cond_1f
    move/from16 v34, v3

    move/from16 v4, v26

    :cond_20
    :goto_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v26, v4

    move/from16 v4, v31

    move/from16 v2, v32

    move/from16 v3, v34

    goto :goto_d

    :cond_21
    move/from16 v32, v2

    move/from16 v34, v3

    move/from16 v31, v4

    move/from16 v4, v26

    if-lez v10, :cond_22

    if-lez v32, :cond_22

    if-eqz v8, :cond_22

    move/from16 v2, v31

    iput v2, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerHeight()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v9, v3}, Lcom/oneplus/lib/widget/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_22
    :goto_13
    iget-boolean v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelAnimationFlag:Z

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/listview/OPListView;->startDelDropAnimation()V

    :cond_23
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p3

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/listview/OPListView;->getDividerType(I)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x0

    iput v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getWidth()I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/16 v3, 0x64

    iput v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x20

    iput v3, p2, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerHeight:I

    return v0
.end method

.method public isDeleteAnimationEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    return v0
.end method

.method public setClipToPadding(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsClipToPadding:Z

    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->isDeleteAnimationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    iget-object v1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v1}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v3}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    :cond_4
    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v5, v1

    if-ne v4, v5, :cond_5

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    goto :goto_0

    :cond_5
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriLastPage:Z

    :goto_0
    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v5

    move v5, v4

    move v4, v0

    :goto_4
    if-ge v4, v1, :cond_b

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    if-ge v5, v7, :cond_9

    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    goto :goto_5

    :cond_9
    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v7, v3

    if-ge v5, v7, :cond_a

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    goto :goto_5

    :cond_a
    add-int/lit8 v6, v6, 0x1

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    iget v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriUpperDeleteCount:I

    if-gtz v7, :cond_c

    iget-object v7, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    :cond_c
    const/4 v4, 0x1

    :cond_d
    const/4 v7, 0x0

    if-nez v4, :cond_e

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mAnimRunning:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mInDeleteAnimation:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    goto :goto_8

    :cond_e
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    nop

    :goto_6
    if-ge v0, v3, :cond_11

    if-lez v9, :cond_f

    iget v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriFirstPosition:I

    add-int v7, v10, v0

    iget-object v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-object v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-object v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getChildCount()I

    move-result v0

    iget v10, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurDeleteCount:I

    sub-int/2addr v0, v10

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriCurLeftCount:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->getLastVisiblePosition()I

    move-result v10

    sub-int/2addr v0, v10

    sub-int/2addr v0, v2

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mOriBelowLeftCount:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->startDelGoneAnimation()V

    :cond_12
    :goto_8
    return-void

    :cond_13
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDisableTouchEvent:Z

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The input parameter d is null!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeleteAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mIsDisableAnimation:Z

    return-void
.end method

.method public setDeleteAnimationListener(Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDeleteAnimationListener:Lcom/oneplus/lib/widget/listview/OPListView$DeleteAnimationListener;

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/listview/OPListView;->invalidate()V

    return-void
.end method

.method public setDividerController(Lcom/oneplus/lib/widget/listview/IOPDividerController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mDividerController:Lcom/oneplus/lib/widget/listview/IOPDividerController;

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mFooterDividersEnabled:Z

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/listview/OPListView;->mHeaderDividersEnabled:Z

    return-void
.end method
