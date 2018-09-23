.class public Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
.super Ljava/lang/Object;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandbyUpdateRecord"
.end annotation


# instance fields
.field bucket:I

.field isUserInteraction:Z

.field packageName:Ljava/lang/String;

.field reason:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    iput p3, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    iput p4, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    iput-boolean p5, p0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    return-void
.end method

.method public static obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    .locals 9

    sget-object v0, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-object v3, v2

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;-><init>(Ljava/lang/String;IIIZ)V

    monitor-exit v0

    return-object v2

    :cond_0
    sget-object v2, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    iput-object p0, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    iput p1, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    iput p2, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    iput p3, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    iput-boolean p4, v2, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 2

    sget-object v0, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/usage/AppStandbyController;->sStandbyUpdatePool:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
