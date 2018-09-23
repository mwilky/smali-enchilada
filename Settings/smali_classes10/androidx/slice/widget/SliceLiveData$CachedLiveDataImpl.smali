.class Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;
.super Landroid/arch/lifecycle/LiveData;
.source "SliceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedLiveDataImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "Landroidx/slice/Slice;",
        ">;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private final mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

.field private mLive:Z

.field private mPendingContext:Landroid/content/Context;

.field private mPendingIntent:Landroid/content/Intent;

.field private mPendingUri:Landroid/net/Uri;

.field private final mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

.field private final mSliceViewManager:Landroidx/slice/SliceViewManager;

.field private mStructure:Landroidx/slice/SliceStructure;

.field private final mUpdateSlice:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$2;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$3;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iput-object p4, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    new-instance v0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;

    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl$1;-><init>(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/content/Context;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;Landroidx/slice/widget/SliceLiveData$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;-><init>(Landroid/content/Context;Landroidx/slice/SliceViewManager;Ljava/io/InputStream;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->onSliceError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1300(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1302(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1400(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->goLive(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroidx/slice/SliceStructure;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mStructure:Landroidx/slice/SliceStructure;

    return-object v0
.end method

.method static synthetic access$402(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroidx/slice/SliceStructure;)Landroidx/slice/SliceStructure;
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mStructure:Landroidx/slice/SliceStructure;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$502(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroidx/slice/SliceViewManager;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroidx/slice/SliceViewManager$SliceCallback;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$902(Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Landroid/net/Uri;

    return-object p1
.end method

.method private goLive(Landroid/net/Uri;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingUri:Landroid/net/Uri;

    iput-object p2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingContext:Landroid/content/Context;

    iput-object p3, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mPendingIntent:Landroid/content/Intent;

    iget-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :cond_0
    return-void
.end method

.method private onSliceError(ILjava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mListener:Landroidx/slice/widget/SliceLiveData$OnErrorListener;

    invoke-interface {v0, p1, p2}, Landroidx/slice/widget/SliceLiveData$OnErrorListener;->onSliceError(ILjava/lang/Throwable;)V

    iget-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mActive:Z

    iget-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUpdateSlice:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mActive:Z

    iget-boolean v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mLive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$CachedLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceViewManager;->unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :cond_0
    return-void
.end method
