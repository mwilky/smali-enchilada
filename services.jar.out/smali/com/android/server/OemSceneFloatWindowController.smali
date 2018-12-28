.class public Lcom/android/server/OemSceneFloatWindowController;
.super Ljava/lang/Object;
.source "OemSceneFloatWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OemSceneFloatWindowController"

.field private static mOpams:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

.field private static processesWithFloatingWindow:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/OemSceneFloatWindowController;

.field private static whiteListInBreathMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BLOCK:Z

.field private mContext:Landroid/content/Context;

.field private mFloatWindowController:Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

.field private mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneFloatWindowController;->DEBUG:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/OemSceneFloatWindowController;->processesWithFloatingWindow:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.dialer"

    const-string v2, "com.android.phone"

    const-string v3, "com.oneplus.camera"

    const-string v4, "com.oneplus.gallery"

    const-string v5, "com.android.emergency"

    const-string v6, "com.android.server.telecom"

    const-string v7, "com.oneplus.brickmode"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/OemSceneFloatWindowController;->whiteListInBreathMode:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneFloatWindowController;->BLOCK:Z

    iput-object p1, p0, Lcom/android/server/OemSceneFloatWindowController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneFloatWindowController;->updateFloatWindowMode(Z)V

    return-void
.end method

.method public static canEnterPictureInPicture(Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/OemSceneFloatWindowController;->canEnterPictureInPictureInModes(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method private canEnterPictureInPictureInModes(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/OemSceneFloatWindowController;->BLOCK:Z

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static canInitAppOpVisibilityLw(Ljava/lang/String;II)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/android/server/OemSceneFloatWindowController;->canSetAppOpVisibilityLw(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/OemSceneFloatWindowController;->processesWithFloatingWindow:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method

.method public static canSetAppOpVisibilityLw(Ljava/lang/String;I)Z
    .locals 2

    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/OemSceneFloatWindowController;->canSetAppOpVisibilityLwInModes(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method private canSetAppOpVisibilityLwInModes(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/OemSceneFloatWindowController;->BLOCK:Z

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneFloatWindowController;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneFloatWindowController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneFloatWindowController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->sInstance:Lcom/android/server/OemSceneFloatWindowController;

    return-object v0
.end method

.method public static initEnv(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;)V
    .locals 0

    sput-object p0, Lcom/android/server/OemSceneFloatWindowController;->mOpams:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    return-void
.end method

.method private updateFloatWindowMode(Z)V
    .locals 6

    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->mOpams:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    if-nez v0, :cond_0

    const-string v0, "OemSceneFloatWindowController"

    const-string/jumbo v1, "updateFloatWindowMode: ams is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/OemSceneFloatWindowController;->BLOCK:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->getTouchWindow()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;

    const-string v3, "OemSceneFloatWindowController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " w*h="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/OemSceneFloatWindowController;->whiteListInBreathMode:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/server/OemSceneFloatWindowController;->mOpams:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    iget v4, v2, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->killProcess(I)I

    goto :goto_0

    :cond_3
    goto :goto_2

    :cond_4
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->processesWithFloatingWindow:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/server/OemSceneFloatWindowController;->mOpams:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->killProcess(I)I

    const-string v2, "OemSceneFloatWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "kill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " by brick mode!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/server/OemSceneFloatWindowController;->processesWithFloatingWindow:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getFloatWindowController()Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mFloatWindowController:Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;-><init>(Lcom/android/server/OemSceneFloatWindowController;)V

    iput-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mFloatWindowController:Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController;->mFloatWindowController:Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    return-object v0
.end method
