.class public Lcom/android/server/backup/params/RestoreGetSetsParams;
.super Ljava/lang/Object;
.source "RestoreGetSetsParams.java"


# instance fields
.field public final listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final observer:Landroid/app/backup/IRestoreObserver;

.field public final session:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field public final transportClient:Lcom/android/server/backup/transport/TransportClient;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iput-object p2, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iput-object p3, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p4, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-object p5, p0, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    return-void
.end method
