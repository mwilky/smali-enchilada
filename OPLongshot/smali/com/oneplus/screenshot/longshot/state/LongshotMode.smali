.class public Lcom/oneplus/screenshot/longshot/state/LongshotMode;
.super Ljava/lang/Object;
.source "LongshotMode.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Lcom/oneplus/screenshot/longshot/state/LongshotContext;
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;,
        Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;
    }
.end annotation


# static fields
.field private static final DIM_AMOUNT:F = 0.0f

.field private static final MSG_HANDLE_REJECT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Longshot.LongshotMode"

.field public static final UNSUPPORT_REASON_RINGING:I = 0x3e8

.field private static sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# instance fields
.field private mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

.field private mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

.field private mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field private mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mFinisher:Ljava/lang/Runnable;

.field private mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field private mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

.field private mHandler:Landroid/os/Handler;

.field private mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field private mIndex:I

.field private mIsFirst:Z

.field private mIsLast:Z

.field private mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field private mMoveDistance:I

.field private mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field private mNavigationbarHeight:I

.field private mOverScroll:Z

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

.field private mScroll:Z

.field private mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

.field private mStatusbarHeight:I

.field mTargetViewTop:I

.field private mUnsupportReason:I

.field private mWindowFrame:Landroid/graphics/Rect;

.field private onUnscrollable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mWindowFrame:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-direct {v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-direct {v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-direct {v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    invoke-direct {v2}, Lcom/oneplus/screenshot/longshot/cache/CompareCache;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    new-instance v2, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveDistance:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onUnscrollable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    const-string v0, "Longshot.LongshotMode"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initDialog(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initSharedPrefs()V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initConfigs()V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initParams()V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initStates()V

    return-void
.end method

.method private getBottom(I)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LOWER_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    :cond_1
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_HIGHER_LIST:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_HIGHER_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-object v0
.end method

.method private getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I
    .locals 3

    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    sub-int v1, p1, v0

    invoke-static {v0, p3}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method private getTop(I)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LOWER_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getScrollViewTop()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_BIG_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0

    :cond_2
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    return v0
.end method

.method private hideSoftInput()V
    .locals 3

    :try_start_0
    const-string v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Longshot.LongshotMode"

    const-string v2, "hide ime failed, "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private initConfigs()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->load(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->load(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->load(Landroid/content/Context;)V

    return-void
.end method

.method private initDialog(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-direct {v0, p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget-object v4, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x61

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v5, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V

    return-void
.end method

.method private initNavigationBar(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    const-string v2, "Longshot.LongshotMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NavigationbarHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initParams()V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x4

    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getTop(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getScrollViewTop()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v3, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getBottom(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_DISTANCE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v6

    invoke-direct {v5, p0, v6, v4, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;ILandroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    return-void
.end method

.method private initSharedPrefs()V
    .locals 2

    new-instance v0, Lcom/oneplus/screenshot/util/SharedPrefs;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/util/SharedPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    return-void
.end method

.method private initStates()V
    .locals 3

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/IdleState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/IdleState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/UnsupportedState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/UnsupportedState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/MainState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/SaveState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotOverState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotLastState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotSLastState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotSLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotOneState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotOneState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/MoveNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchNextState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchOverState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchLastState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchSLastState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchSLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchOneState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchOneState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNDO:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/UndoState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/UndoState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    return-void
.end method

.method private isFullHeight(Landroid/graphics/Rect;I)Z
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    sub-int v1, p2, v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFullScreenWindow(Landroid/graphics/Rect;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isFullWidth(Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isFullHeight(Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isFullWidth(Landroid/graphics/Rect;I)Z
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUnsupported()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    return v0
.end method

.method private notifyToast(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    return-void
.end method

.method private onDestroy()V
    .locals 4

    const-string v0, "Longshot.LongshotMode"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->clear()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/CompareCache;->clear()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->clear()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->stop()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->stop()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    return-void
.end method

.method public static recycle()V
    .locals 2

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    if-eqz v0, :cond_0

    const-string v0, "Longshot.LongshotMode"

    const-string v1, "LongshotMode recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    return v0
.end method

.method public getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    return-object v0
.end method

.method public getNavBarHeight()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    return v0
.end method

.method public getRealDisplayHeight()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    return-object v0
.end method

.method public getScrollViewTop()I
    .locals 1

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_BIGTOP_LIST:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_BIG_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LARGETOP_LIST:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_LARGE_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    return v0
.end method

.method public getSharedPrefs()Lcom/oneplus/screenshot/util/SharedPrefs;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    return-object v0
.end method

.method public handleReject(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    return-void
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->hide()V

    return-void
.end method

.method public isFirst()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    return v0
.end method

.method public isHandleState()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->get()Lcom/oneplus/screenshot/longshot/state/BaseState;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsViewState;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isLast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    return v0
.end method

.method public isMoveState()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->get()Lcom/oneplus/screenshot/longshot/state/BaseState;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    return v1
.end method

.method public isOverScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    return v0
.end method

.method public isScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    return v0
.end method

.method public notifyMove()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    invoke-interface {v0}, Lcom/oneplus/longshot/ILongScreenshotCallback;->notifyMove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    :cond_0
    return-void
.end method

.method public onDismiss(I)V
    .locals 3

    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void

    :cond_0
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTouch()V
    .locals 2

    const-string v0, "Longshot.LongshotMode"

    const-string v1, "onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    return-void
.end method

.method public onUnscrollableView()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onUnscrollable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reject(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setFirst(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    return-void
.end method

.method public setLast(Z)V
    .locals 3

    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    return-void
.end method

.method public setOverScroll(Z)V
    .locals 3

    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOverScroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    return-void
.end method

.method public setScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    return-void
.end method

.method public setScrollViewTop(I)V
    .locals 3

    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->isCustomizeMoveApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initParams()V

    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setTargetViewTop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTargetViewTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mTargetViewTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->updateMovePoint(Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    :cond_0
    return-void
.end method

.method public show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p2}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContent(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p3}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->show()V

    return-void
.end method

.method public start(Ljava/lang/Runnable;Lcom/oneplus/longshot/ILongScreenshotCallback;ZZ)V
    .locals 2

    const-string v0, "Longshot.LongshotMode"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    invoke-direct {p0, p4}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initNavigationBar(Z)V

    new-instance v0, Lcom/oneplus/screenshot/longshot/task/GcThread;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/task/GcThread;-><init>()V

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/task/GcThread;->start()Lcom/oneplus/screenshot/longshot/task/BaseThread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    new-instance v0, Lcom/oneplus/screenshot/longshot/task/CheckThread;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->start()Lcom/oneplus/screenshot/longshot/task/BaseThread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isUnsupported()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->dismiss()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    :goto_0
    return-void
.end method

.method public updateIndex(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    return-void
.end method

.method public updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-eq v0, p1, :cond_6

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const-string v1, "Longshot.LongshotMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LongshotMode.updateState#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    return-void

    :cond_0
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_2

    const-string v1, "Longshot.LongshotMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " unsupport reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mUnsupportReason:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    return-void

    :cond_2
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->notifyToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->hideSoftInput()V

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1, v0, p2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_6
    return-void
.end method
