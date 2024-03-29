.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$SavedState;,
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    sget-object v1, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, p1, v3}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0, p1, v3}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/AdapterViewAnimator;)I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return v0
.end method

.method private addChild(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/AdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    :cond_1
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .locals 3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initViewAnimator()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    return-void
.end method

.method private measureChildren()V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .locals 3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_5

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_2

    :cond_1
    if-gez p1, :cond_3

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    move v0, v1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->requestFocus(I)Z

    :cond_5
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method cancelHandleClick()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return-void
.end method

.method checkForAndHandleDataChanged()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    if-eqz v0, :cond_0

    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    return-void
.end method

.method configureViewAnimator(II)V
    .locals 1

    nop

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .locals 0

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .locals 3

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 3

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDisplayedChild()I
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method getNumActiveViews()I
    .locals 2

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    return v0
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowSize()I
    .locals 2

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v1, v0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method modulo(II)I
    .locals 1

    if-lez p2, :cond_0

    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    iget v4, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const/high16 v5, 0x1000000

    const/high16 v7, -0x80000000

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v8, v9

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    move v1, v8

    goto :goto_2

    :cond_2
    if-ne v3, v7, :cond_4

    if-eqz v4, :cond_4

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int/2addr v8, v9

    if-le v8, v1, :cond_3

    or-int/2addr v1, v5

    goto :goto_2

    :cond_3
    move v1, v8

    :cond_4
    :goto_2
    if-nez v2, :cond_6

    if-eqz v4, :cond_5

    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr v6, v5

    nop

    :cond_5
    move v0, v6

    goto :goto_3

    :cond_6
    if-ne v3, v7, :cond_8

    if-eqz v4, :cond_8

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int/2addr v6, v7

    if-le v6, v0, :cond_7

    or-int/2addr v0, v5

    goto :goto_3

    :cond_7
    move v0, v6

    :cond_8
    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->setMeasuredDimension(II)V

    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    :cond_0
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    :cond_0
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto :goto_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v5, v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v5

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7, v3, v2}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v6, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    new-instance v6, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {v6, p0, v3, v5}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    :cond_2
    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v4, v2}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v2, :cond_3

    new-instance v2, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {v2, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object v2, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    :cond_3
    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {p0, v2, v5, v6}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    nop

    :cond_5
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method refreshChildren()V
    .locals 6

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    :goto_0
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v4, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkFocus()V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mItemCount:I

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setFocusable(Z)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, v0}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    return-void
.end method

.method public setAnimateFirstView(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    return-void
.end method

.method public setDisplayedChild(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    new-instance v0, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    :cond_1
    return-void
.end method

.method public setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method public showNext()V
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method showOnly(IZ)V
    .locals 30

    move-object/from16 v7, p0

    move/from16 v8, p2

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v9

    if-nez v9, :cond_1

    return-void

    :cond_1
    const/4 v10, 0x0

    move v0, v10

    :goto_0
    iget-object v1, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v11, -0x1

    if-ge v0, v1, :cond_3

    iget-object v1, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v2, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    iget-object v2, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iget-object v3, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_2
    invoke-virtual {v7, v1, v11}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    invoke-virtual {v7, v1}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, v7, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v13, p1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v0

    add-int/2addr v0, v13

    const/4 v14, 0x1

    add-int/lit8 v15, v0, -0x1

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v9, -0x1

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v2, v7, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v2, :cond_4

    move v0, v13

    move v1, v15

    :cond_4
    move v5, v0

    move v6, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v7, v5, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v7, v6, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    const/4 v0, 0x0

    if-le v4, v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    move/from16 v16, v0

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v16, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v10, v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v3, :cond_7

    :cond_6
    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    if-eqz v16, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v4, :cond_8

    const/4 v2, 0x1

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    iget-object v10, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v10, v10, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    iget-object v14, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v14, v14, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    iget-object v11, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, -0x1

    invoke-virtual {v7, v14, v11, v10, v8}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    :cond_9
    nop

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_a
    iget v0, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    if-ne v5, v0, :cond_c

    iget v0, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-ne v6, v0, :cond_c

    iget v0, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    if-eq v13, v0, :cond_b

    goto :goto_3

    :cond_b
    move/from16 v18, v3

    move/from16 v27, v4

    move v2, v9

    move v0, v13

    move/from16 v22, v15

    move v9, v5

    move v13, v6

    goto/16 :goto_8

    :cond_c
    :goto_3
    move v0, v5

    :goto_4
    move v10, v0

    if-gt v10, v6, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v11

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    goto :goto_5

    :cond_d
    const/4 v0, -0x1

    :goto_5
    move v14, v0

    sub-int v2, v10, v13

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    move/from16 v17, v0

    if-eqz v17, :cond_f

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    iget-object v1, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move/from16 v18, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v2, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    invoke-virtual {v7, v0, v2}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    invoke-virtual {v7, v14, v2, v0, v8}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    nop

    move v1, v2

    move/from16 v27, v4

    move/from16 v28, v9

    move/from16 v29, v13

    move/from16 v21, v14

    move/from16 v22, v15

    const/4 v2, -0x1

    move v9, v5

    move v13, v6

    goto :goto_7

    :cond_f
    move/from16 v18, v3

    invoke-virtual {v7, v10, v9}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1, v7}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_10
    iget-object v12, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move/from16 v21, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v22, v15

    new-instance v15, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v23, v0

    move-object v0, v15

    move-object/from16 v24, v1

    move-object v1, v7

    move/from16 v25, v2

    move-object/from16 v2, v23

    move/from16 v26, v3

    move/from16 v3, v25

    move/from16 v27, v4

    move/from16 v4, v26

    move/from16 v28, v9

    move/from16 v29, v13

    move v9, v5

    move v13, v6

    move-wide/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    const/4 v2, -0x1

    invoke-virtual {v7, v2, v1, v0, v8}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    :goto_7
    iget-object v0, v7, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    add-int/lit8 v0, v10, 0x1

    move v5, v9

    move v6, v13

    move/from16 v3, v18

    move/from16 v15, v22

    move/from16 v4, v27

    move/from16 v9, v28

    move/from16 v13, v29

    goto/16 :goto_4

    :cond_11
    move/from16 v18, v3

    move/from16 v27, v4

    move/from16 v28, v9

    move/from16 v29, v13

    move/from16 v22, v15

    move v9, v5

    move v13, v6

    iput v9, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    iput v13, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v0, v29

    iput v0, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    iget-object v1, v7, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_12

    iget v1, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v2, v28

    invoke-virtual {v7, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v1

    iget v3, v7, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    invoke-virtual {v7, v3, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    iget-object v4, v7, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v4, v1, v3}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    goto :goto_8

    :cond_12
    move/from16 v2, v28

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->invalidate()V

    return-void
.end method

.method public showPrevious()V
    .locals 1

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method
