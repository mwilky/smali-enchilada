.class public abstract Lcom/oneplus/lib/util/loading/LoadingHelper;
.super Ljava/lang/Object;
.source "LoadingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;
    }
.end annotation


# static fields
.field private static final PROMPT_MIN_SHOW_TIME_DEFAULT:J = 0x1f4L

.field private static final WILL_SHOW_PROMPT_TIME_DEFAULT:J = 0x12cL

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mProgreeMinShowTime:J

.field private mProgreeView:Ljava/lang/Object;

.field private mShowProgreeRunnable:Ljava/lang/Runnable;

.field private mShowProgreeTime:J

.field private mWillShowProgreeTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mWillShowProgreeTime:J

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mProgreeMinShowTime:J

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/util/loading/LoadingHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mShowProgreeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/util/loading/LoadingHelper;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mProgreeView:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/lib/util/loading/LoadingHelper;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mProgreeView:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$202(Lcom/oneplus/lib/util/loading/LoadingHelper;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mShowProgreeTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/oneplus/lib/util/loading/LoadingHelper;Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/util/loading/LoadingHelper;->doFinish(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;Z)V

    return-void
.end method

.method private doFinish(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mProgreeView:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/util/loading/LoadingHelper;->hideProgree(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;->finish(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/lib/util/loading/LoadingHelper$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/oneplus/lib/util/loading/LoadingHelper$3;-><init>(Lcom/oneplus/lib/util/loading/LoadingHelper;ZLcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public beginShowProgress()V
    .locals 4

    new-instance v0, Lcom/oneplus/lib/util/loading/LoadingHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/util/loading/LoadingHelper$1;-><init>(Lcom/oneplus/lib/util/loading/LoadingHelper;)V

    iput-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mShowProgreeRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mShowProgreeRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mWillShowProgreeTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public finishShowProgress(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mShowProgreeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mShowProgreeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/util/loading/LoadingHelper;->doFinish(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mShowProgreeTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mProgreeMinShowTime:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    sget-object v4, Lcom/oneplus/lib/util/loading/LoadingHelper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/lib/util/loading/LoadingHelper$2;

    invoke-direct {v5, p0, p1}, Lcom/oneplus/lib/util/loading/LoadingHelper$2;-><init>(Lcom/oneplus/lib/util/loading/LoadingHelper;Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/oneplus/lib/util/loading/LoadingHelper;->doFinish(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;Z)V

    :goto_0
    return-void
.end method

.method protected abstract hideProgree(Ljava/lang/Object;)V
.end method

.method public setProgreeMinShowTime(J)Lcom/oneplus/lib/util/loading/LoadingHelper;
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mProgreeMinShowTime:J

    return-object p0
.end method

.method public setWillShowProgreeTime(J)Lcom/oneplus/lib/util/loading/LoadingHelper;
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/lib/util/loading/LoadingHelper;->mWillShowProgreeTime:J

    return-object p0
.end method

.method protected abstract showProgree()Ljava/lang/Object;
.end method
