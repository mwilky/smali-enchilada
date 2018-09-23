.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p5

    const/4 v2, 0x1

    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing from backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v6, v0

    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1c

    move-object v7, v0

    move-object/from16 v8, p6

    :try_start_1
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1b

    move v9, v0

    :try_start_2
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1b

    move-object v14, v0

    :try_start_3
    iget-object v11, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_17
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    const-wide/16 v12, 0x0

    move-object/from16 v17, v4

    :try_start_4
    iget-wide v3, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_16
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object v10, v14

    move/from16 v18, v2

    move-object v2, v14

    move-wide v14, v3

    :try_start_5
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object v3, v0

    const v0, 0x8000

    :try_start_6
    new-array v4, v0, [B

    iget-wide v10, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_13
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    const/4 v13, 0x0

    if-lez v12, :cond_2

    :try_start_7
    array-length v12, v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    int-to-long v14, v12

    cmp-long v12, v14, v10

    if-gez v12, :cond_0

    :try_start_8
    array-length v12, v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    int-to-long v14, v12

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v11, v0

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_11

    :cond_0
    move-wide v14, v10

    :goto_1
    long-to-int v12, v14

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    :try_start_9
    invoke-virtual {v7, v4, v13, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-ltz v12, :cond_1

    int-to-long v0, v12

    move-object/from16 v13, p7

    :try_start_a
    invoke-interface {v13, v0, v1}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    const/4 v1, 0x0

    move-object/from16 v4, p5

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v11, v0

    const/4 v1, 0x0

    move-object/from16 v4, p5

    goto/16 :goto_11

    :cond_1
    move-object/from16 v13, p7

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    int-to-long v0, v12

    sub-long/2addr v10, v0

    nop

    move-object/from16 v7, v19

    const v0, 0x8000

    move-object/from16 v1, p5

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v13, p7

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v4, v1

    const/4 v1, 0x0

    :goto_3
    const/4 v11, 0x0

    goto/16 :goto_12

    :catch_2
    move-exception v0

    move-object/from16 v13, p7

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v11, v0

    move-object v4, v1

    const/4 v1, 0x0

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    move-object/from16 v13, p7

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v4, v1

    const/4 v1, 0x0

    const/4 v11, 0x0

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v13, p7

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v11, v0

    move-object v4, v1

    const/4 v1, 0x0

    goto/16 :goto_11

    :cond_2
    move-object/from16 v13, p7

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :try_start_b
    invoke-static {v1, v3}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    const/4 v1, 0x0

    move-object/from16 v4, p5

    goto/16 :goto_16

    :catch_4
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v3, v0

    move-object/from16 v4, p5

    goto/16 :goto_15

    :cond_3
    :goto_4
    :try_start_c
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :try_start_d
    invoke-static {v1, v2}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v4, p5

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v4, p5

    goto/16 :goto_18

    :cond_4
    :goto_5
    nop

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v2, :cond_6

    move-object/from16 v4, p5

    :try_start_e
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    move-object/from16 v10, p4

    :try_start_f
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    if-eq v0, v3, :cond_5

    const/4 v0, 0x0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    goto/16 :goto_f

    :cond_5
    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move/from16 v0, v18

    goto/16 :goto_f

    :catch_7
    move-exception v0

    move-object/from16 v10, p4

    :goto_6
    move-object/from16 v12, p2

    move-object/from16 v14, p3

    goto/16 :goto_1a

    :cond_6
    move-object/from16 v10, p4

    move-object/from16 v4, p5

    const/4 v3, 0x0

    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Restore stream claimed to include apk for "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " but apk was really "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    const/4 v0, 0x0

    const/4 v3, 0x1

    move-object/from16 v14, p3

    move-object/from16 v20, v1

    move/from16 v21, v2

    :goto_7
    move v2, v0

    goto/16 :goto_c

    :cond_7
    :try_start_10
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v12, 0x8000000

    invoke-virtual {v5, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    const v14, 0x8000

    and-int/2addr v12, v14

    if-nez v12, :cond_8

    :try_start_11
    const-string v12, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restore stream contains apk of package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " but it disallows backup/restore"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11

    const/4 v12, 0x0

    move-object/from16 v14, p3

    move-object/from16 v20, v1

    move/from16 v21, v2

    move v2, v12

    goto/16 :goto_8

    :catch_8
    move-exception v0

    move-object/from16 v14, p3

    move-object/from16 v20, v1

    move/from16 v21, v2

    goto/16 :goto_b

    :cond_8
    :try_start_12
    iget-object v12, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_12} :catch_d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    move-object/from16 v14, p3

    :try_start_13
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    const-class v15, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v12, v0, v15}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v16
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    if-eqz v16, :cond_a

    move-object/from16 v20, v1

    :try_start_14
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_9
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    move/from16 v21, v2

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_9

    :try_start_15
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    const-string v0, "Installed app "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has restricted uid and no agent"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_8

    :cond_9
    move/from16 v2, v18

    goto :goto_8

    :catch_9
    move-exception v0

    move/from16 v21, v2

    goto :goto_b

    :cond_a
    move-object/from16 v22, v0

    move-object/from16 v20, v1

    move/from16 v21, v2

    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installed app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signatures do not match restore manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    const/4 v2, 0x0

    const/4 v0, 0x1

    move v3, v0

    :goto_8
    goto :goto_c

    :catch_a
    move-exception v0

    goto :goto_b

    :catch_b
    move-exception v0

    goto :goto_a

    :catch_c
    move-exception v0

    move-object/from16 v14, p3

    :goto_9
    move-object/from16 v12, p2

    goto/16 :goto_1a

    :catch_d
    move-exception v0

    move-object/from16 v14, p3

    :goto_a
    move-object/from16 v20, v1

    move/from16 v21, v2

    :goto_b
    :try_start_16
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install of package "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " succeeded but now not found"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_10

    const/4 v0, 0x0

    goto/16 :goto_7

    :goto_c
    if-eqz v3, :cond_b

    :try_start_17
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    move-object/from16 v12, p2

    const/4 v1, 0x0

    :try_start_18
    invoke-virtual {v5, v11, v12, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    goto :goto_d

    :catch_f
    move-exception v0

    move-object/from16 v12, p2

    :goto_d
    move/from16 v18, v2

    goto/16 :goto_1a

    :cond_b
    move-object/from16 v12, p2

    :goto_e
    move v0, v2

    :goto_f
    goto/16 :goto_1b

    :catch_10
    move-exception v0

    goto :goto_9

    :catch_11
    move-exception v0

    goto/16 :goto_6

    :catch_12
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v4, p5

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    move-object/from16 v7, p0

    move-object v11, v1

    :goto_10
    goto :goto_12

    :catch_13
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    move-object/from16 v7, p0

    move-object v11, v0

    :goto_11
    :try_start_19
    throw v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :catchall_6
    move-exception v0

    :goto_12
    if-eqz v3, :cond_c

    :try_start_1a
    invoke-static {v11, v3}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_14

    :catchall_7
    move-exception v0

    goto/16 :goto_16

    :catch_14
    move-exception v0

    :goto_13
    move-object v3, v0

    goto/16 :goto_15

    :cond_c
    :goto_14
    throw v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_14
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    :catchall_8
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_16

    :catch_15
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    move-object v3, v0

    goto/16 :goto_15

    :catchall_9
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move/from16 v18, v2

    move-object/from16 v19, v7

    move-object v2, v14

    const/4 v1, 0x0

    move-object/from16 v7, p0

    move-object/from16 v14, p3

    goto :goto_16

    :catch_16
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move/from16 v18, v2

    move-object/from16 v19, v7

    move-object v2, v14

    move-object/from16 v7, p0

    move-object/from16 v14, p3

    move-object v3, v0

    goto :goto_15

    :catchall_a
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move/from16 v18, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v7

    move-object v2, v14

    move-object/from16 v7, p0

    move-object/from16 v14, p3

    move-object v4, v1

    move-object v1, v3

    goto :goto_16

    :catch_17
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move/from16 v18, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v7

    move-object v2, v14

    move-object/from16 v7, p0

    move-object/from16 v14, p3

    move-object v4, v1

    move-object v3, v0

    :goto_15
    :try_start_1b
    throw v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    :catchall_b
    move-exception v0

    move-object v1, v3

    :goto_16
    if-eqz v2, :cond_d

    :try_start_1c
    invoke-static {v1, v2}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_17

    :catch_18
    move-exception v0

    goto :goto_18

    :cond_d
    :goto_17
    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_18
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1a

    :catch_19
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move/from16 v18, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    move-object v4, v1

    :goto_18
    :try_start_1d
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    throw v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_1a

    :catch_1a
    move-exception v0

    goto :goto_1a

    :catch_1b
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    goto :goto_19

    :catch_1c
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v8, p6

    :goto_19
    move-object/from16 v13, p7

    move-object v4, v1

    move/from16 v18, v2

    :goto_1a
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to transcribe restored apk for install"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1b
    return v0
.end method
