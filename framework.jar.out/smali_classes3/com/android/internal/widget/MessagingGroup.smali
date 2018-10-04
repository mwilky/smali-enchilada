.class public Lcom/android/internal/widget/MessagingGroup;
.super Landroid/widget/LinearLayout;
.source "MessagingGroup.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/internal/widget/MessagingGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mAvatarIcon:Landroid/graphics/drawable/Icon;

.field private mAvatarName:Ljava/lang/CharSequence;

.field private mAvatarSymbol:Ljava/lang/String;

.field private mAvatarView:Landroid/widget/ImageView;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mFirstLayout:Z

.field private mImageContainer:Landroid/view/ViewGroup;

.field private mImagesAtEnd:Z

.field private mIsHidingAnimated:Z

.field private mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

.field private mLayoutColor:I

.field private mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsGeneratedAvatar:Z

.field private mSender:Landroid/app/Person;

.field private mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

.field private mSendingSpinner:Landroid/widget/ProgressBar;

.field private mSendingSpinnerContainer:Landroid/view/View;

.field private mSendingTextColor:I

.field private mTextColor:I

.field private mTransformingImages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/MessagingGroup;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method private calculateSendingTextColor()I
    .locals 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050154

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Color;->toArgb()I

    move-result v2

    return v2
.end method

.method static createGroup(Lcom/android/internal/widget/MessagingLinearLayout;)Lcom/android/internal/widget/MessagingGroup;
    .locals 4

    sget-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109009c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    sget-object v1, Lcom/android/internal/widget/MessagingLayout;->MESSAGING_PROPERTY_ANIMATOR:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static dropCache()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method private getDistanceFromParent(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p1

    :goto_0
    if-eq v0, p2, :cond_0

    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static synthetic lambda$hideAnimated$2(Lcom/android/internal/widget/MessagingGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setIsHidingAnimated(Z)V

    return-void
.end method

.method public static synthetic lambda$removeGroupAnimated$1(Lcom/android/internal/widget/MessagingGroup;Ljava/lang/Runnable;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setAlpha(F)V

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setToLaidOutPosition(Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$removeMessage$0(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    return-void
.end method

.method private performRemoveAnimation(Landroid/view/View;ILjava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/android/internal/widget/MessagingLayout;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-static {p1, p2, v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->startLocalTranslationTo(Landroid/view/View;ILandroid/view/animation/Interpolator;)V

    invoke-static {p1, p3}, Lcom/android/internal/widget/MessagingPropertyAnimator;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeFromParentIfDifferent(Lcom/android/internal/widget/MessagingMessage;Landroid/view/ViewGroup;)Z
    .locals 3

    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p2, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private setIsHidingAnimated(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsHidingAnimated:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->invalidate()V

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateImageContainerVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/MessagingGroup;->mImagesAtEnd:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private updateMessageColor()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingTextColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v2}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    iget v3, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    :goto_2
    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->setColor(I)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public calculateGroupCompatibility(Lcom/android/internal/widget/MessagingGroup;)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/MessagingGroup;->getSenderName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    nop

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/MessagingMessage;

    iget-object v3, p1, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    iget-object v4, p1, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v2, v3}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Lcom/android/internal/widget/MessagingMessage;)Z

    move-result v4

    if-nez v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public getAvatar()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAvatarSymbolIfMatching(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarIcon:Landroid/graphics/drawable/Icon;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConsumedLines()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v3}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    move v0, v1

    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public getIsolatedMessage()Lcom/android/internal/widget/MessagingImageMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    return-object v0
.end method

.method public getMeasuredType()I
    .locals 9

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_7

    iget-object v4, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v5}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    move v3, v1

    nop

    :cond_2
    nop

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v8, v7, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    or-int/2addr v3, v8

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v6

    :cond_4
    if-ne v5, v1, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    return v3
.end method

.method public getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public getSender()Landroid/app/Person;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSender:Landroid/app/Person;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSenderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideAnimated()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setIsHidingAnimated(Z)V

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$buM2CBWR7uz4neT0lee-MKMDx5M;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$buM2CBWR7uz4neT0lee-MKMDx5M;-><init>(Lcom/android/internal/widget/MessagingGroup;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->removeGroupAnimated(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isHidingAnimated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsHidingAnimated:Z

    return v0
.end method

.method public needsGeneratedAvatar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mNeedsGeneratedAvatar:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020283

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    const v0, 0x1020305

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ImageFloatingTextView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    const v0, 0x1020304

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    const v0, 0x1020307

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    const v0, 0x1020308

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinner:Landroid/widget/ProgressBar;

    const v0, 0x1020309

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mFirstLayout:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/MessagingGroup$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/MessagingGroup$1;-><init>(Lcom/android/internal/widget/MessagingGroup;Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mFirstLayout:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingGroup;->updateClipRect()V

    return-void
.end method

.method public performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;ILjava/lang/Runnable;)V

    return-void
.end method

.method public recycle()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/MessagingMessage;

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    invoke-interface {v1}, Lcom/android/internal/widget/MessagingMessage;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ImageFloatingTextView;->setTranslationY(F)V

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MessagingGroup;->setAlpha(F)V

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mFirstLayout:Z

    invoke-static {p0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->recycle(Landroid/view/View;)V

    sget-object v0, Lcom/android/internal/widget/MessagingGroup;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGroupAnimated(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$QKnXYzCylYJqF8wEQG98SXlcu2M;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$QKnXYzCylYJqF8wEQG98SXlcu2M;-><init>(Lcom/android/internal/widget/MessagingGroup;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeMessage(Lcom/android/internal/widget/MessagingMessage;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v3, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$uEKViIlAuE6AYNmbbTgLGe5mU7I;

    invoke-direct {v3, v2, v0, p1}, Lcom/android/internal/widget/-$$Lambda$MessagingGroup$uEKViIlAuE6AYNmbbTgLGe5mU7I;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/internal/widget/MessagingMessage;)V

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/view/ViewGroup;->addTransientView(Landroid/view/View;I)V

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public setAvatar(Landroid/graphics/drawable/Icon;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCreatedAvatar(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    if-eq p4, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    iput-object p3, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarSymbol:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/MessagingGroup;->setLayoutColor(I)V

    iput-object p2, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarName:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public setDisplayImagesAtEnd(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImagesAtEnd:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mImagesAtEnd:Z

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateImageContainerVisibility()V

    :cond_0
    return-void
.end method

.method public setLayoutColor(I)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinner:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/internal/widget/MessagingGroup;->mLayoutColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setMaxDisplayedLines(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->setMaxDisplayedLines(I)V

    return-void
.end method

.method public setMessages(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/MessagingMessage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v5

    if-eq v5, p0, :cond_0

    invoke-interface {v4, p0}, Lcom/android/internal/widget/MessagingMessage;->setMessagingGroup(Lcom/android/internal/widget/MessagingGroup;)V

    iget-object v5, p0, Lcom/android/internal/widget/MessagingGroup;->mAddedMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v5, v4, Lcom/android/internal/widget/MessagingImageMessage;

    iget-boolean v6, p0, Lcom/android/internal/widget/MessagingGroup;->mImagesAtEnd:Z

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    move-object v1, v4

    check-cast v1, Lcom/android/internal/widget/MessagingImageMessage;

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-direct {p0, v4, v6}, Lcom/android/internal/widget/MessagingGroup;->removeFromParentIfDifferent(Lcom/android/internal/widget/MessagingMessage;Landroid/view/ViewGroup;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-nez v7, :cond_2

    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v8}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v7, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    :cond_3
    if-eqz v5, :cond_4

    move-object v6, v4

    check-cast v6, Lcom/android/internal/widget/MessagingImageMessage;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/MessagingImageMessage;->setIsolated(Z)V

    :cond_4
    iget-object v6, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/MessagingLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-eq v3, v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/MessagingLinearLayout;->removeView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-interface {v4}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/widget/MessagingLinearLayout;->addView(Landroid/view/View;I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/MessagingGroup;->removeFromParentIfDifferent(Lcom/android/internal/widget/MessagingMessage;Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/internal/widget/MessagingImageMessage;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingImageMessage;->setIsolated(Z)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_9
    :goto_2
    iput-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mIsolatedMessage:Lcom/android/internal/widget/MessagingImageMessage;

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateImageContainerVisibility()V

    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessages:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMessageColor()V

    return-void
.end method

.method public setSender(Landroid/app/Person;Ljava/lang/CharSequence;)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/widget/MessagingGroup;->mSender:Landroid/app/Person;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/ImageFloatingTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mNeedsGeneratedAvatar:Z

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mNeedsGeneratedAvatar:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MessagingGroup;->setAvatar(Landroid/graphics/drawable/Icon;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mAvatarView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x8

    nop

    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ImageFloatingTextView;->setVisibility(I)V

    return-void
.end method

.method public setSending(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingSpinnerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMessageColor()V

    :cond_1
    return-void
.end method

.method public setTextColors(II)V
    .locals 1

    iput p2, p0, Lcom/android/internal/widget/MessagingGroup;->mTextColor:I

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->calculateSendingTextColor()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSendingTextColor:I

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingGroup;->updateMessageColor()V

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setTextColor(I)V

    return-void
.end method

.method public setTransformingImages(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingGroup;->mTransformingImages:Z

    return-void
.end method

.method public updateClipRect()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ImageFloatingTextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/MessagingGroup;->mTransformingImages:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ImageFloatingTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/MessagingGroup;->getDistanceFromParent(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/widget/MessagingGroup;->getDistanceFromParent(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mSenderName:Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ImageFloatingTextView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/internal/widget/MessagingGroup;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/MessagingGroup;->mMessageContainer:Lcom/android/internal/widget/MessagingLinearLayout;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method
