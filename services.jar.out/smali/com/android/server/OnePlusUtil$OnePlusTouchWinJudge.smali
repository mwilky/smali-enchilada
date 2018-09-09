.class public Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;
.super Ljava/lang/Object;
.source "OnePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusTouchWinJudge"
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge; = null

.field private static final TAG:Ljava/lang/String; = "OnePlusTouchWinJudge"

.field private static mLastTouchWindowUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static mTouchWindowUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindowUids:Ljava/util/HashSet;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindowUids:Ljava/util/HashSet;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static final getInstance()Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;
    .locals 3

    .line 37
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    invoke-direct {v0}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    .line 40
    :cond_0
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSTANCE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    return-object v0
.end method

.method private onTouchWindowChange()V
    .locals 3

    .line 51
    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusTouchWinJudge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastTouchWindowUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public addUidtoTouchWindowUids(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 45
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindowUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTouchWindow()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindowUids:Ljava/util/HashSet;

    return-object v0
.end method

.method public isContainUid(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 59
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-boolean v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusTouchWinJudge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isContainUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mLastTouchWindowUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindowUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |mLastTouchWindowUids.contains(uid):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindowUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindowUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFindFocusedWindow()V
    .locals 3

    .line 66
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindowUids:Ljava/util/HashSet;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 69
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mLastTouchWindowUids:Ljava/util/HashSet;

    sget-object v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-direct {p0}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->onTouchWindowChange()V

    .line 72
    :cond_0
    sget-object v1, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->mTouchWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
