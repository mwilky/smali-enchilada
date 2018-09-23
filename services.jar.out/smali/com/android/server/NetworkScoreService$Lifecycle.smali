.class public final Lcom/android/server/NetworkScoreService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/NetworkScoreService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/NetworkScoreService;

    invoke-direct {v0, p1}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService;->systemReady()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v0}, Lcom/android/server/NetworkScoreService;->systemRunning()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "NetworkScoreService"

    const-string v1, "Registering network_score"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "network_score"

    iget-object v1, p0, Lcom/android/server/NetworkScoreService$Lifecycle;->mService:Lcom/android/server/NetworkScoreService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/NetworkScoreService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
