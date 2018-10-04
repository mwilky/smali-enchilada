.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mGravity:I

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsAnchorRootAttached:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private final mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpAppLocation:[I

.field private final mTmpDrawingLocation:[I

.field private final mTmpScreenLocation:[I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v4, -0x2

    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v4, 0x3e8

    iput v4, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    iput v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    new-instance v4, Landroid/widget/PopupWindow$1;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v4, Landroid/widget/PopupWindow$2;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v4, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;

    invoke-direct {v4, p0}, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v4, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;

    invoke-direct {v4, p0}, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v4, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    sget-object v4, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const v2, 0x10302fc

    if-ne v0, v2, :cond_0

    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    :goto_0
    goto :goto_1

    :cond_1
    iput v3, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    :goto_1
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v1

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v1

    :goto_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v1, -0x2

    iput v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v1, 0x3e8

    iput v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    iput v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/widget/PopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;

    invoke-direct {v0, p0}, Landroid/widget/-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v0, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;

    invoke-direct {v0, p0}, Landroid/widget/-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static synthetic access$102(Landroid/widget/PopupWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method private alignToAnchor()V
    .locals 11

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v5, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v10

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_1
    return-void
.end method

.method private computeAnimationResource()I
    .locals 2

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10302f0

    goto :goto_0

    :cond_0
    const v0, 0x10302ef

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private computeFlags(I)I
    .locals 3

    const v0, -0x868219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    const/high16 v1, 0x20000

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    or-int/2addr p1, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    or-int/2addr p1, v1

    :cond_2
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_3

    or-int/lit8 p1, p1, 0x10

    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    :cond_4
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_6

    :cond_5
    or-int/lit16 p1, p1, 0x200

    :cond_6
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_8

    or-int/lit16 p1, p1, 0x100

    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_9

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    :cond_9
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_a

    or-int/lit8 p1, p1, 0x20

    :cond_a
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_b

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    :cond_b
    return p1
.end method

.method private computeGravity()I
    .locals 2

    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v0, :cond_0

    const v0, 0x800033

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    :goto_0
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_2

    :cond_1
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 5

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v2, -0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v4

    invoke-virtual {v3, p1, v1}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v3
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 5

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v2, -0x2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    invoke-virtual {v3, p1, v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    return-object v3
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method private getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 3

    if-eqz p1, :cond_1

    const/high16 v0, 0x10f0000

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/transition/TransitionSet;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/transition/TransitionSet;

    invoke-virtual {v2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method public static synthetic lambda$new$0(Landroid/widget/PopupWindow;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method private positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 5

    const/4 v0, 0x1

    sub-int v1, p4, p3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v2, p2

    if-le v2, p6, :cond_0

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v3, p5, :cond_2

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v3, p6, p5

    if-eqz p7, :cond_1

    if-le p2, v3, :cond_1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method private positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 5

    const/4 v0, 0x1

    sub-int v1, p4, p3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, p2

    if-le v2, p6, :cond_0

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v4, v2, p6

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v3, p5, :cond_2

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v3, p6, p5

    if-eqz p7, :cond_1

    if-le p2, v3, :cond_1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x1040575

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setIsRootNamespace(Z)V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 13

    sub-int v8, p6, p5

    move-object v9, p1

    iget v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v10, v0, v8

    sub-int v11, p8, v10

    const/4 v12, 0x1

    if-ltz v10, :cond_0

    move/from16 v7, p3

    if-gt v7, v11, :cond_1

    return v12

    :cond_0
    move/from16 v7, p3

    :cond_1
    move-object v0, p0

    move-object v1, v9

    move v2, v7

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return v12

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 15

    move-object/from16 v8, p1

    move/from16 v9, p3

    sub-int v10, p6, p5

    iget v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v11, v0, v10

    sub-int v7, p8, v11

    const/4 v12, 0x1

    if-ltz v11, :cond_0

    if-gt v9, v7, :cond_0

    return v12

    :cond_0
    sub-int v0, v11, p4

    sub-int v6, v0, p7

    if-gt v9, v6, :cond_2

    move-object v5, p0

    iget-boolean v0, v5, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_1

    add-int v0, p2, p4

    goto :goto_0

    :cond_1
    move/from16 v0, p2

    :goto_0
    sub-int v1, p5, v9

    add-int/2addr v1, v0

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    return v12

    :cond_2
    move-object v5, p0

    move-object v0, v5

    move-object v1, v8

    move v2, v9

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move v13, v6

    move/from16 v6, p8

    move v14, v7

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return v12

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private update(Landroid/view/View;ZIIII)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v13, v9, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    iget v14, v9, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/16 v16, 0x1

    if-eqz p2, :cond_2

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v0, v11, :cond_1

    iget v0, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v0, v12, :cond_2

    :cond_1
    move/from16 v0, v16

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move/from16 v17, v0

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_4

    if-eqz v17, :cond_3

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v17, :cond_5

    iput v11, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iput v12, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v9, v10, v11, v12, v14}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v5, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez p5, :cond_6

    iget v0, v9, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 v18, v0

    goto :goto_3

    :cond_6
    move/from16 v18, p5

    :goto_3
    if-gez p6, :cond_7

    iget v0, v9, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 v19, v0

    goto :goto_4

    :cond_7
    move/from16 v19, p6

    :goto_4
    iget v2, v9, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v1, v9, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget-boolean v0, v9, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v20, v0

    move-object v0, v9

    move/from16 v21, v1

    move-object v1, v10

    move/from16 v22, v2

    move-object v2, v8

    move v15, v3

    move/from16 v3, v22

    move v10, v4

    move/from16 v4, v21

    move v11, v5

    move/from16 v5, v18

    move v12, v6

    move/from16 v6, v19

    move-object/from16 v23, v13

    move v13, v7

    move v7, v14

    move/from16 v24, v14

    move-object v14, v8

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v13, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v15, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v12, v0, :cond_9

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v11, v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    move/from16 v5, v16

    :goto_6
    if-gez v18, :cond_a

    move/from16 v3, v18

    goto :goto_7

    :cond_a
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    move v3, v0

    :goto_7
    if-gez v19, :cond_b

    move/from16 v4, v19

    goto :goto_8

    :cond_b
    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    move v4, v0

    :goto_8
    iget v1, v14, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v14, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object v0, v9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void

    :cond_c
    :goto_9
    return-void
.end method


# virtual methods
.method protected attachToAnchor(Landroid/view/View;III)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return-void
.end method

.method protected final createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_1

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_2

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_2
    const v1, 0x18000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected detachFromAnchor()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void
.end method

.method public dismiss()V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    iget-object v5, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_4

    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v8, -0x20001

    and-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7, v0, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_3

    iget-object v4, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    nop

    :cond_3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v7

    new-instance v8, Landroid/widget/PopupWindow$3;

    invoke-direct {v8, p0, v0, v3, v1}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v5, v4, v7, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0, v3, v1}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    iget-object v4, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v4}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_5
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method protected findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 34

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    iget-boolean v0, v10, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v0, :cond_0

    sub-int v0, p4, v13

    move v15, v0

    goto :goto_0

    :cond_0
    move/from16 v15, p4

    :goto_0
    iget-object v9, v10, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v7, v10, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    invoke-virtual {v11, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, v10, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    const/16 v16, 0x0

    aget v0, v7, v16

    aget v1, v9, v16

    sub-int/2addr v0, v1

    aput v0, v6, v16

    const/4 v5, 0x1

    aget v0, v7, v5

    aget v1, v9, v5

    sub-int/2addr v0, v1

    aput v0, v6, v5

    aget v0, v6, v16

    add-int v0, v0, p3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v0, v6, v5

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    invoke-virtual {v8, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, -0x1

    move/from16 v1, p5

    if-ne v1, v0, :cond_1

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v3

    :cond_1
    move v3, v1

    move/from16 v1, p6

    if-ne v1, v0, :cond_2

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v0

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v3, v12, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v12, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    move/from16 v1, p7

    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    move-object/from16 v17, v9

    const/4 v9, 0x5

    if-ne v0, v9, :cond_3

    iget v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v19, v3, v14

    sub-int v9, v9, v19

    iput v9, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_3
    aget v9, v6, v5

    aget v19, v7, v5

    move-object/from16 v20, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v21, v8

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    const/16 v22, 0x0

    move/from16 v23, v0

    move-object v0, v10

    move-object v1, v12

    move/from16 v24, v2

    move v2, v15

    move/from16 v25, v3

    move/from16 v3, v24

    move-object v11, v4

    move v4, v13

    move v5, v9

    move-object/from16 v28, v6

    move/from16 v6, v19

    move-object/from16 v9, v20

    move-object/from16 v19, v21

    move/from16 v29, v13

    move-object v13, v9

    move/from16 v9, v22

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v18

    aget v5, v28, v16

    aget v6, v13, v16

    iget v7, v11, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->right:I

    const/4 v9, 0x0

    move/from16 v2, p3

    move/from16 v3, v25

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v20

    if-eqz v18, :cond_5

    if-nez v20, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v31, v23

    const/16 v32, 0x1

    goto/16 :goto_4

    :cond_5
    :goto_2
    move-object v9, v11

    move-object/from16 v11, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    new-instance v0, Landroid/graphics/Rect;

    add-int v3, v8, v25

    add-int v3, v3, p3

    add-int v2, v7, v24

    add-int v2, v2, v29

    add-int/2addr v2, v15

    invoke-direct {v0, v8, v7, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v0

    if-eqz p8, :cond_7

    const/4 v5, 0x1

    invoke-virtual {v11, v6, v5}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v11, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v0, v13, v16

    aget v1, v17, v16

    sub-int/2addr v0, v1

    aput v0, v28, v16

    aget v0, v13, v5

    aget v1, v17, v5

    sub-int/2addr v0, v1

    aput v0, v28, v5

    aget v0, v28, v16

    add-int v0, v0, p3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v0, v28, v5

    add-int v0, v0, v29

    add-int/2addr v0, v15

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v4, v23

    const/4 v0, 0x5

    if-ne v4, v0, :cond_8

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v3, v25, v14

    sub-int/2addr v0, v3

    iput v0, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_3

    :cond_6
    move/from16 v4, v23

    goto :goto_3

    :cond_7
    move/from16 v4, v23

    const/4 v5, 0x1

    :cond_8
    :goto_3
    aget v22, v28, v5

    aget v23, v13, v5

    iget v3, v9, Landroid/graphics/Rect;->top:I

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    iget-boolean v1, v10, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object v0, v10

    move/from16 v26, v1

    move-object v1, v12

    move/from16 v27, v2

    move v2, v15

    move/from16 v30, v3

    move/from16 v3, v24

    move/from16 v31, v4

    move/from16 v4, v29

    move/from16 v32, v5

    move/from16 v5, v22

    move-object/from16 v22, v6

    move/from16 v6, v23

    move/from16 v23, v7

    move/from16 v7, v30

    move/from16 v30, v8

    move/from16 v8, v27

    move-object v11, v9

    move/from16 v9, v26

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    aget v5, v28, v16

    aget v6, v13, v16

    iget v7, v11, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->right:I

    iget-boolean v9, v10, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v2, p3

    move/from16 v3, v25

    move v4, v14

    invoke-direct/range {v0 .. v9}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    :goto_4
    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v1, v28, v32

    if-ge v0, v1, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v32, v16

    :goto_5
    return v32
.end method

.method protected final getAllowScrollingAnchorParent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method protected getAnchor()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v5, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    aget v5, v3, v6

    sub-int v5, v4, v5

    sub-int/2addr v5, p2

    goto :goto_1

    :cond_1
    aget v5, v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sub-int v5, v4, v5

    sub-int/2addr v5, p2

    :goto_1
    aget v6, v3, v6

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int/2addr v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    :cond_2
    return v7
.end method

.method protected final getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public getOverlapAnchor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method protected final getTransitionEpicenter()Landroid/graphics/Rect;
    .locals 8

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v5, v1, v7

    aget v6, v3, v7

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v6, v3, v6

    sub-int/2addr v7, v6

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_2

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    :cond_2
    return-object v4

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected hasContentView()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasDecorView()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method protected final isLayoutInsetDecor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public isTouchable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method protected final isTransitioningToDismiss()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    if-eq v4, v1, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    if-eq v3, v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_2
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    :cond_4
    return-void
.end method

.method protected final setDropDown(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method protected final setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return-void
.end method

.method protected final setTransitioningToDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    nop

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v9, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p2

    move v5, p3

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method

.method public update()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v3, :cond_1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v1, 0x1

    :cond_1
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v3}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v4, :cond_2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v4

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v4, v5, :cond_3

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_5

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0, v5, v0}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public update(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-ltz v3, :cond_0

    iput v3, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_0
    if-ltz v4, :cond_1

    iput v4, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    move/from16 v6, p5

    iget v7, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v7, :cond_3

    iget v7, v0, Landroid/widget/PopupWindow;->mWidthMode:I

    goto :goto_0

    :cond_3
    iget v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    :goto_0
    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v9, v7, :cond_4

    iput v7, v0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v6, 0x1

    :cond_4
    iget v9, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v9, :cond_5

    iget v9, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    goto :goto_1

    :cond_5
    iget v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    :goto_1
    if-eq v4, v8, :cond_6

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v8, v9, :cond_6

    iput v9, v0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v9, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v6, 0x1

    :cond_6
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v8, v1, :cond_7

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v6, 0x1

    :cond_7
    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v8, v2, :cond_8

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v6, 0x1

    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v8

    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v8, v10, :cond_9

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v6, 0x1

    :cond_9
    iget v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {v0, v10}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v10

    iget v11, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v10, v11, :cond_a

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v6, 0x1

    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v11

    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v11, v12, :cond_b

    iput v11, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v6, 0x1

    :cond_b
    const/4 v12, 0x0

    const/4 v13, -0x1

    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_c

    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_c

    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    check-cast v12, Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v13

    :cond_c
    int-to-long v14, v13

    iget-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    cmp-long v1, v14, v1

    if-eqz v1, :cond_d

    int-to-long v1, v13

    iput-wide v1, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    const/4 v6, 0x1

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v0, v12, v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_e
    return-void

    :cond_f
    :goto_2
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 7

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final updateAboveAnchor(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    :goto_0
    return-void
.end method
