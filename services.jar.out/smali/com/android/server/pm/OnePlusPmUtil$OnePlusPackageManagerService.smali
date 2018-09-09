.class public Lcom/android/server/pm/OnePlusPmUtil$OnePlusPackageManagerService;
.super Ljava/lang/Object;
.source "OnePlusPmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OnePlusPmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusPackageManagerService"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 3
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OnePlusPmUtil$OnePlusPackageManagerService;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object v0, p0, Lcom/android/server/pm/OnePlusPmUtil$OnePlusPackageManagerService;->mContext:Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/android/server/pm/OnePlusPmUtil$OnePlusPackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 35
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/OnePlusPmUtil$OnePlusPackageManagerService;->mContext:Landroid/content/Context;

    .line 36
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    iput-object v0, p0, Lcom/android/server/pm/OnePlusPmUtil$OnePlusPackageManagerService;->mHandler:Landroid/os/Handler;

    .line 39
    iget-object v0, p0, Lcom/android/server/pm/OnePlusPmUtil$OnePlusPackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/OnePlusPmUtil$OnePlusPackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/OnePlusPmUtil$OnePlusPackageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->initPackages(Landroid/util/ArrayMap;)V

    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
