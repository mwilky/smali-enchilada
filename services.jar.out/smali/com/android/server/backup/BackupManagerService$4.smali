.class Lcom/android/server/backup/BackupManagerService$4;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupManagerService;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field final synthetic val$deferTime:J


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$4;->this$0:Lcom/android/server/backup/BackupManagerService;

    iput-wide p2, p0, Lcom/android/server/backup/BackupManagerService$4;->val$deferTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$4;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$1100(Lcom/android/server/backup/BackupManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/backup/BackupManagerService$4;->val$deferTime:J

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$4;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$1200(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    return-void
.end method
