.class public Landroid/view/NotificationHeaderView;
.super Landroid/view/ViewGroup;
.source "NotificationHeaderView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationHeaderView$HeaderTouchListener;
    }
.end annotation


# static fields
.field public static final NO_COLOR:I = 0x1


# instance fields
.field private mAcceptAllTouches:Z

.field private mAppName:Landroid/view/View;

.field private mAppOps:Landroid/view/View;

.field private mAppOpsListener:Landroid/view/View$OnClickListener;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCameraIcon:Landroid/view/View;

.field private final mChildMinWidth:I

.field private final mContentEndMargin:I

.field private mEntireHeaderClickable:Z

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandOnlyOnButton:Z

.field private mExpanded:Z

.field private final mGravity:I

.field private mHeaderText:Landroid/view/View;

.field private mIcon:Lcom/android/internal/widget/CachingIconView;

.field private mIconColor:I

.field private mMicIcon:Landroid/view/View;

.field private mOriginalNotificationColor:I

.field private mOverlayIcon:Landroid/view/View;

.field private mProfileBadge:Landroid/view/View;

.field mProvider:Landroid/view/ViewOutlineProvider;

.field private mSecondaryHeaderText:Landroid/view/View;

.field private mShowExpandButtonAtEnd:Z

.field private mShowWorkBadgeAtEnd:Z

.field private mTotalWidth:I

.field private mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    new-instance v0, Landroid/view/NotificationHeaderView$1;

    invoke-direct {v0, p0}, Landroid/view/NotificationHeaderView$1;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    const v1, 0x105012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    const v1, 0x112008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100af

    aput v3, v1, v2

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/NotificationHeaderView;->mGravity:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mAppOps:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/NotificationHeaderView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return v0
.end method

.method static synthetic access$600(Landroid/view/NotificationHeaderView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return v0
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private shrinkViewForOverflow(IILandroid/view/View;I)I
    .locals 4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    if-le v0, p4, :cond_0

    sub-int v1, v0, p2

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p3, v2, p1}, Landroid/view/View;->measure(II)V

    sub-int v3, v0, v1

    sub-int/2addr p2, v3

    :cond_0
    return p2
.end method

.method private updateExpandButton()V
    .locals 4

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    const v0, 0x1080328

    const v1, 0x10401f9

    goto :goto_0

    :cond_0
    const v0, 0x1080361

    const v1, 0x10401f8

    :goto_0
    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget v3, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/view/NotificationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTouchListener()V
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->bindTouchRects()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getExpandButton()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method public getOriginalIconColor()I
    .locals 1

    iget v0, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return v0
.end method

.method public getOriginalNotificationColor()I
    .locals 1

    iget v0, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return v0
.end method

.method public getWorkProfileIcon()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchRect(FF)Z
    .locals 1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->access$700(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x10201af

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    const v0, 0x102028a

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    const v0, 0x102028c

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mSecondaryHeaderText:Landroid/view/View;

    const v0, 0x102023e

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    const v0, 0x1020392

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    const v0, 0x10201eb

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mCameraIcon:Landroid/view/View;

    const v0, 0x102030a

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mMicIcon:Landroid/view/View;

    const v0, 0x1020361

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mOverlayIcon:Landroid/view/View;

    const v0, 0x10201b0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAppOps:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Landroid/view/NotificationHeaderView;->mGravity:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget v7, v0, Landroid/view/NotificationHeaderView;->mTotalWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    nop

    :goto_1
    if-ge v5, v6, :cond_8

    invoke-virtual {v0, v5}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v11

    add-int/2addr v1, v11

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    sub-int v13, v7, v9

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    add-int v13, v12, v9

    move v14, v1

    move v15, v11

    iget-object v4, v0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    if-ne v8, v4, :cond_3

    iget-boolean v4, v0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    if-eqz v4, :cond_3

    iget v4, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    sub-int v15, v2, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v15, v4

    move v14, v4

    move v2, v4

    :cond_3
    iget-object v4, v0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    if-ne v8, v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v4

    move/from16 v17, v1

    iget-boolean v1, v0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    if-eqz v1, :cond_4

    iget v4, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    :cond_4
    sub-int v15, v2, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v15, v1

    move v14, v1

    move v2, v1

    goto :goto_2

    :cond_5
    move/from16 v17, v1

    :goto_2
    iget-object v1, v0, Landroid/view/NotificationHeaderView;->mAppOps:Landroid/view/View;

    if-ne v8, v1, :cond_6

    iget v1, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    sub-int v15, v2, v1

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v15, v4

    move v14, v4

    move v2, v4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getLayoutDirection()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    move v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v16

    sub-int v14, v16, v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v16

    sub-int v15, v16, v1

    :cond_7
    invoke-virtual {v8, v14, v12, v15, v13}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    add-int/2addr v11, v1

    move v1, v11

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v3, v9, v10}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v9

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v10, v11}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/view/View;->measure(II)V

    iget v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v6, v0, :cond_2

    sub-int v4, v6, v0

    iget-object v7, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    iget v8, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    invoke-direct {p0, v2, v4, v7, v8}, Landroid/view/NotificationHeaderView;->shrinkViewForOverflow(IILandroid/view/View;I)I

    move-result v4

    iget-object v7, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-direct {p0, v2, v4, v7, v5}, Landroid/view/NotificationHeaderView;->shrinkViewForOverflow(IILandroid/view/View;I)I

    move-result v4

    iget-object v7, p0, Landroid/view/NotificationHeaderView;->mSecondaryHeaderText:Landroid/view/View;

    invoke-direct {p0, v2, v4, v7, v5}, Landroid/view/NotificationHeaderView;->shrinkViewForOverflow(IILandroid/view/View;I)I

    :cond_2
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Landroid/view/NotificationHeaderView;->mTotalWidth:I

    invoke-virtual {p0, v0, v1}, Landroid/view/NotificationHeaderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAcceptAllTouches(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return-void
.end method

.method public setAppOpsOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mAppOps:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mCameraIcon:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mMicIcon:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mOverlayIcon:Landroid/view/View;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mAppOpsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    return-void
.end method

.method public setExpandOnlyOnButton(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateExpandButton()V

    return-void
.end method

.method public setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    return-void
.end method

.method public setOriginalIconColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return-void
.end method

.method public setOriginalNotificationColor(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return-void
.end method

.method public setShowExpandButtonAtEnd(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    if-eq p1, v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    :cond_0
    return-void
.end method

.method public setShowWorkBadgeAtEnd(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    if-eq p1, v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    :cond_0
    return-void
.end method

.method public showAppOpsIcons(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mOverlayIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mCameraIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mMicIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mOverlayIcon:Landroid/view/View;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    nop

    move v1, v3

    goto :goto_0

    :cond_1
    nop

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mCameraIcon:Landroid/view/View;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    nop

    move v1, v3

    goto :goto_1

    :cond_2
    nop

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mMicIcon:Landroid/view/View;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    nop

    move v2, v3

    goto :goto_2

    :cond_3
    nop

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

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
