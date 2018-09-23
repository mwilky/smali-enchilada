.class public Lcom/android/server/backup/params/RestoreParams;
.super Ljava/lang/Object;
.source "RestoreParams.java"


# instance fields
.field public final filterSet:[Ljava/lang/String;

.field public final isSystemRestore:Z

.field public final listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public final monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public final observer:Landroid/app/backup/IRestoreObserver;

.field public final packageInfo:Landroid/content/pm/PackageInfo;

.field public final pmToken:I

.field public final token:J

.field public final transportClient:Lcom/android/server/backup/transport/TransportClient;


# direct methods
.method private constructor <init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/params/RestoreParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iput-object p2, p0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iput-object p3, p0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iput-wide p4, p0, Lcom/android/server/backup/params/RestoreParams;->token:J

    iput-object p6, p0, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iput p7, p0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iput-boolean p8, p0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iput-object p9, p0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    return-void
.end method

.method public static createForRestoreAll(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 12

    new-instance v11, Lcom/android/server/backup/params/RestoreParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    return-object v11
.end method

.method public static createForRestoreAtInstall(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;ILcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 13

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p5, v10, v0

    new-instance v0, Lcom/android/server/backup/params/RestoreParams;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p3

    move/from16 v8, p6

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    return-object v0
.end method

.method public static createForRestoreSome(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;ZLcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 12

    new-instance v11, Lcom/android/server/backup/params/RestoreParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v8, p6

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    return-object v11
.end method

.method public static createForSinglePackage(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .locals 12

    new-instance v11, Lcom/android/server/backup/params/RestoreParams;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    return-object v11
.end method
