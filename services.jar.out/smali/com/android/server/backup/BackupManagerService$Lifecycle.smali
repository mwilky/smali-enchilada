.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    const-string v0, "backup"

    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v0}, Lcom/android/server/backup/Trampoline;->unlockSystemUser()V

    :cond_0
    return-void
.end method
