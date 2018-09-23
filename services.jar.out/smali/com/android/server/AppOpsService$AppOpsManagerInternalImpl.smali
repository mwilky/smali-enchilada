.class final Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;
.super Landroid/app/AppOpsManagerInternal;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppOpsManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method private constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Landroid/app/AppOpsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;-><init>(Lcom/android/server/AppOpsService;)V

    return-void
.end method


# virtual methods
.method public setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/AppOpsService;

    iput-object p1, v1, Lcom/android/server/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
