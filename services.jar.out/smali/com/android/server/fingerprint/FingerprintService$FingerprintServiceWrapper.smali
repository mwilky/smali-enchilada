.class final Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
.super Landroid/hardware/fingerprint/IFingerprintService$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .line 1340
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "x1"    # Lcom/android/server/fingerprint/FingerprintService$1;

    .line 1340
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.method private isRestricted()Z
    .locals 2

    .line 1385
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1386
    .local v0, "restricted":Z
    return v0
.end method


# virtual methods
.method public addClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 1664
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1665
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$3300(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    return-void
.end method

.method public addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1645
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$9;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1652
    return-void
.end method

.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 19
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;
    .param p9, "dialogReceiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object/from16 v13, p0

    .line 1408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1409
    .local v14, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 1410
    .local v15, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    .line 1411
    .local v16, "callingUserId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v17

    .line 1413
    .local v17, "restricted":Z
    iget-object v0, v13, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v2, 0x1

    move-object/from16 v1, p7

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate(): reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    return-void

    .line 1419
    :cond_0
    move-object/from16 v12, p7

    iget-object v0, v13, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v11

    new-instance v10, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;

    move-object v0, v10

    move-object v1, v13

    move-wide/from16 v2, p2

    move-object/from16 v4, p1

    move/from16 v5, v16

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, v17

    move-object v13, v10

    move-object v10, v12

    move/from16 v18, v14

    move-object v14, v11

    move-object/from16 v11, p8

    .end local v14    # "callingUid":I
    .local v18, "callingUid":I
    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;JLandroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    invoke-virtual {v14, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1438
    return-void
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1442
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1443
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1444
    .local v7, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 1446
    .local v8, "callingUserId":I
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v2, 0x1

    move-object v1, p2

    move v3, v6

    move v4, v7

    move v5, v8

    invoke-static/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1448
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication(): reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    return-void

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1470
    return-void
.end method

.method public cancelEnrollment(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1391
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1401
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1621
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1623
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1625
    .local v0, "ident":J
    :try_start_0
    array-length v2, p3

    if-lez v2, :cond_1

    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1626
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2, p1}, Lcom/android/server/fingerprint/FingerprintService;->access$2900(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 1628
    :cond_1
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2, p2}, Lcom/android/server/fingerprint/FingerprintService;->access$3000(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1632
    nop

    .line 1633
    return-void

    .line 1631
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;

    move-object/from16 v9, p0

    move/from16 v10, p3

    .line 1357
    iget-object v0, v9, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1358
    iget-object v0, v9, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1800(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 1361
    .local v11, "limit":I
    iget-object v0, v9, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v10}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 1362
    .local v12, "enrolled":I
    if-lt v12, v11, :cond_0

    .line 1363
    const-string v0, "FingerprintService"

    const-string v1, "Too many fingerprints registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    return-void

    .line 1369
    :cond_0
    iget-object v0, v9, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v10}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1370
    return-void

    .line 1373
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v13

    .line 1374
    .local v13, "restricted":Z
    iget-object v0, v9, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;

    move-object v0, v15

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v10

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v13

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1381
    return-void
.end method

.method public enumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1500
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1501
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v0

    .line 1502
    .local v0, "restricted":Z
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v8, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1508
    return-void
.end method

.method public getAuthenticatedPackage()Ljava/lang/String;
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$3400(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .locals 2
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1603
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 1553
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->access$2700(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1558
    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v3, 0x0

    .line 1559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1560
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1558
    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1561
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1564
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1615
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getStatus()I

    move-result v0

    return v0
.end method

.method public hasEnrolledFingerprints(ILjava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1571
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->access$2700(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1572
    return v1

    .line 1576
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v4, 0x0

    .line 1577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1578
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1576
    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1579
    return v1

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method public isClientActive()Z
    .locals 2

    .line 1656
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 1659
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHardwareDetected(JLjava/lang/String;)Z
    .locals 8
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 1514
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->access$2700(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1515
    return v1

    .line 1519
    :cond_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const/4 v4, 0x0

    .line 1520
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1521
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1519
    move-object v3, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1522
    return v1

    .line 1525
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1527
    .local v2, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1528
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$1400(Lcom/android/server/fingerprint/FingerprintService;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    nop

    .line 1530
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1528
    return v1

    .line 1530
    .end local v0    # "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public postEnroll(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1349
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method public preEnroll(Landroid/os/IBinder;)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1343
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "groupId"    # I
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-object v8, p0

    .line 1486
    iget-object v0, v8, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1487
    invoke-direct {v8}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->isRestricted()Z

    move-result v9

    .line 1488
    .local v9, "restricted":Z
    iget-object v0, v8, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;

    move-object v0, v11

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$6;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1495
    return-void
.end method

.method public removeClientActiveCallback(Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 1670
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1671
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$3300(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1672
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 1536
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1538
    return-void

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1547
    return-void
.end method

.method public resetTimeout([B)V
    .locals 2
    .param p1, "token"    # [B

    .line 1637
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1639
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1640
    return-void
.end method

.method public setActiveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1474
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    const-string v1, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$1600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1481
    return-void
.end method

.method public shouldBlockTouchForFP(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1686
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->access$3500(Lcom/android/server/fingerprint/FingerprintService;II)Z

    move-result v0

    return v0
.end method

.method public updateStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .line 1610
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->updateStatus(I)I

    move-result v0

    return v0
.end method
