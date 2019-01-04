.class public Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;
.super Ljava/lang/Object;
.source "OnePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusFrontMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;,
        Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor; = null

.field private static final TAG:Ljava/lang/String; = "OnePlusFrontMonitor"


# instance fields
.field private activityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityName:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mPackageName:Ljava/lang/String;

.field private mUid:I

.field private packageListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    invoke-direct {v0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    :cond_0
    sget-object v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->INSTANCE:Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    return-object v0
.end method

.method private notifyActivityChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;

    iget-object v2, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mActivityName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;->frontActivityChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyPackageChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;

    iget-object v2, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;->frontPackageChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getFrontActivityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getFrontUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mUid:I

    return v0
.end method

.method public registerFrontActivityListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerFrontPackageListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mActivityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p2, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->notifyPackageChanged()V

    :cond_0
    iput p3, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->mUid:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->notifyActivityChanged()V

    sget-boolean v0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrontActivityName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OnePlusFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrontUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OnePlusFrontMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrontPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterFrontActivityListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontActivityListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->activityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterFrontPackageListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->packageListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
