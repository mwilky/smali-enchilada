.class public Lcom/android/server/devicepolicy/CertificateMonitor;
.super Ljava/lang/Object;
.source "CertificateMonitor.java"


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManager"

.field protected static final MONITORING_CERT_NOTIFICATION_ID:I = 0x21


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field private final mRootCaReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


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

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Landroid/os/Handler;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/devicepolicy/CertificateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/CertificateMonitor$1;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mRootCaReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iput-object p3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mRootCaReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/CertificateMonitor;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method private buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v5, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    const v7, 0x1040637

    const/4 v12, 0x0

    if-eqz v5, :cond_0

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-virtual {v11, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x10807b9

    iget-object v7, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    move-result v4

    :goto_0
    move v13, v4

    move-object v14, v5

    goto :goto_1

    :cond_0
    iget-object v5, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    if-ne v5, v8, :cond_1

    iget-object v5, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v12

    invoke-virtual {v11, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v5, 0x10807b9

    nop

    move v13, v4

    move-object v14, v6

    move v6, v5

    goto :goto_1

    :cond_1
    const v5, 0x1040636

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x108008a

    goto :goto_0

    :goto_1
    move v15, v6

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.settings.MONITORING_CERT_INFO"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    const v4, 0x10008000

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "android.settings.extra.number_of_certificates"

    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x100000

    invoke-virtual {v10, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_2
    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const/4 v6, 0x0

    const/high16 v8, 0x8000000

    const/16 v16, 0x0

    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v17

    move-object v5, v0

    move-object v7, v10

    move-object/from16 v18, v9

    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object/from16 v10, v17

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->pendingIntentGetActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {v5, v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1150018

    invoke-virtual {v11, v6, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1060157

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v0

    const-string v4, "DevicePolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create context as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    return-object v4
.end method

.method public static synthetic lambda$onCertificateApprovalsChanged$0(Lcom/android/server/devicepolicy/CertificateMonitor;I)V
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/CertificateMonitor;->updateInstalledCertificates(Landroid/os/UserHandle;)V

    return-void
.end method

.method private static parseCert([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method private updateInstalledCertificates(Landroid/os/UserHandle;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->onInstalledCertificatesChanged(Landroid/os/UserHandle;Ljava/util/Collection;)V

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getAcceptedCaCertificates(Landroid/os/UserHandle;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x21

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->buildNotification(Landroid/os/UserHandle;I)Landroid/app/Notification;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v4

    const-string v5, "DevicePolicyManager"

    invoke-virtual {v4, v5, v2, v3, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    const-string v4, "DevicePolicyManager"

    invoke-virtual {v3, v4, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DevicePolicyManager"

    const-string v2, "Could not retrieve certificates from KeyChain service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_0
    if-eqz v1, :cond_1

    :try_start_4
    invoke-static {v3, v1}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    return-object v0
.end method

.method public installCaCert(Landroid/os/UserHandle;[B)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/android/server/devicepolicy/CertificateMonitor;->parseCert([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v1, v2

    nop

    nop

    :try_start_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/security/IKeyChainService;->installCaCertificate([B)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-static {v0, v2}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    return-object v3

    :catchall_0
    move-exception v3

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_0
    if-eqz v2, :cond_1

    :try_start_5
    invoke-static {v4, v2}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v2

    const-string v3, "DevicePolicyManager"

    const-string/jumbo v4, "installCaCertsToKeyChain(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "DevicePolicyManager"

    const-string/jumbo v4, "installCaCertsToKeyChain(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1
    return-object v0

    :catch_3
    move-exception v1

    const-string v2, "DevicePolicyManager"

    const-string v3, "Problem converting cert"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public onCertificateApprovalsChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicepolicy/-$$Lambda$CertificateMonitor$nzwzuvk_fK7AIlili6jDKrKWLJM;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public uninstallCaCerts(Landroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_1
    array-length v3, p2

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-interface {v3, v4}, Landroid/security/IKeyChainService;->deleteCaCertificate(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/devicepolicy/CertificateMonitor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "DevicePolicyManager"

    const-string v2, "CaCertUninstaller: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "DevicePolicyManager"

    const-string v2, "from CaCertUninstaller: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    nop

    :goto_3
    return-void
.end method
