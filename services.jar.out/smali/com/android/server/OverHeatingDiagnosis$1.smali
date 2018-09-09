.class Lcom/android/server/OverHeatingDiagnosis$1;
.super Ljava/lang/Thread;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OverHeatingDiagnosis;->writeLogToDropbox(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;

.field final synthetic val$current:J

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;JLandroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "x0"    # Ljava/lang/String;

    .line 485
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    iput-object p3, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    iput p4, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$type:I

    iput-object p5, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$reason:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$current:J

    iput-object p8, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 489
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$type:I

    invoke-virtual {v2, v3}, Lcom/android/server/OverHeatingDiagnosis;->convertIssueTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string v1, "--------- beginning of CPU usage\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v1}, Lcom/android/server/OverHeatingDiagnosis;->access$300(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v1}, Lcom/android/server/OverHeatingDiagnosis;->access$300(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/internal/os/ProcessCpuTracker;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$current:J

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string v1, "--------- beginning of battery history\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const/4 v0, 0x0

    move v1, v0

    .line 497
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    iget-object v3, v3, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 498
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    iget-object v3, v3, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    .line 499
    .local v3, "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .end local v3    # "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v1    # "i":I
    :cond_0
    const-string/jumbo v1, "logcat_for_overheat"

    .line 503
    .local v1, "setting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis$1;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v3}, Lcom/android/server/OverHeatingDiagnosis;->access$400(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v4, 0x800

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 504
    .local v3, "lines":I
    const/high16 v4, 0x40000

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v4, v5

    mul-int/lit8 v5, v3, 0x64

    sub-int/2addr v4, v5

    .line 507
    .local v4, "maxDataFileSize":I
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 509
    .local v5, "dataFile":Ljava/io/File;
    if-lez v4, :cond_1

    .line 511
    :try_start_0
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string v7, "--------- beginning of overheat history\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string v7, "\n\n[[TRUNCATED]]"

    invoke-static {v5, v4, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    goto :goto_1

    .line 514
    :catch_0
    move-exception v6

    .line 515
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "OverHeatingDiagnosis"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    if-lez v3, :cond_4

    .line 520
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const/4 v6, 0x0

    .line 525
    .local v6, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/16 v8, 0x11

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "/system/bin/timeout"

    aput-object v9, v8, v0

    const-string v9, "-k"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    const-string v11, "15s"

    aput-object v11, v8, v9

    const/4 v9, 0x3

    const-string v11, "10s"

    aput-object v11, v8, v9

    const/4 v9, 0x4

    const-string v11, "/system/bin/logcat"

    aput-object v11, v8, v9

    const/4 v9, 0x5

    const-string v11, "-v"

    aput-object v11, v8, v9

    const/4 v9, 0x6

    const-string/jumbo v11, "threadtime"

    aput-object v11, v8, v9

    const/4 v9, 0x7

    const-string v11, "-b"

    aput-object v11, v8, v9

    const/16 v9, 0x8

    const-string v11, "events"

    aput-object v11, v8, v9

    const/16 v9, 0x9

    const-string v11, "-b"

    aput-object v11, v8, v9

    const-string/jumbo v9, "system"

    aput-object v9, v8, v2

    const/16 v2, 0xb

    const-string v9, "-b"

    aput-object v9, v8, v2

    const/16 v2, 0xc

    const-string/jumbo v9, "main"

    aput-object v9, v8, v2

    const/16 v2, 0xd

    const-string v9, "-b"

    aput-object v9, v8, v2

    const/16 v2, 0xe

    const-string v9, "crash"

    aput-object v9, v8, v2

    const/16 v2, 0xf

    const-string v9, "-t"

    aput-object v9, v8, v2

    const/16 v2, 0x10

    .line 528
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 529
    invoke-virtual {v7, v10}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    .local v2, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v7

    .line 532
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v7

    .line 533
    :goto_3
    :try_start_4
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v6, v7

    .line 536
    const/16 v7, 0x2000

    new-array v7, v7, [C

    .line 537
    .local v7, "buf":[C
    :goto_4
    invoke-virtual {v6, v7}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    move v9, v8

    .line 537
    .local v9, "num":I
    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7, v0, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 541
    .end local v2    # "logcat":Ljava/lang/Process;
    .end local v7    # "buf":[C
    .end local v9    # "num":I
    :cond_2
    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 538
    :catch_4
    move-exception v0

    .line 539
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    const-string v2, "OverHeatingDiagnosis"

    const-string v7, "Error running logcat"

    invoke-static {v2, v7, v0}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 541
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_4

    goto :goto_5

    :goto_6
    if-eqz v6, :cond_3

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception v2

    :cond_3
    :goto_7
    throw v0

    .line 545
    .end local v6    # "input":Ljava/io/InputStreamReader;
    :cond_4
    :goto_8
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$dbox:Landroid/os/DropBoxManager;

    const-string/jumbo v2, "overheat"

    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-void
.end method
