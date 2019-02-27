.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final CANNOT_ATTEST_IDS:I = -0x42

.field public static final CONFIRMATIONUI_ABORTED:I = 0x2

.field public static final CONFIRMATIONUI_CANCELED:I = 0x1

.field public static final CONFIRMATIONUI_IGNORED:I = 0x4

.field public static final CONFIRMATIONUI_OK:I = 0x0

.field public static final CONFIRMATIONUI_OPERATION_PENDING:I = 0x3

.field public static final CONFIRMATIONUI_SYSTEM_ERROR:I = 0x5

.field public static final CONFIRMATIONUI_UIERROR:I = 0x10000

.field public static final CONFIRMATIONUI_UIERROR_MALFORMED_UTF8_ENCODING:I = 0x10003

.field public static final CONFIRMATIONUI_UIERROR_MESSAGE_TOO_LONG:I = 0x10002

.field public static final CONFIRMATIONUI_UIERROR_MISSING_GLYPH:I = 0x10001

.field public static final CONFIRMATIONUI_UNEXPECTED:I = 0x7

.field public static final CONFIRMATIONUI_UNIMPLEMENTED:I = 0x6

.field public static final FLAG_CRITICAL_TO_DEVICE_ENCRYPTION:I = 0x8

.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_SOFTWARE:I = 0x2

.field public static final FLAG_STRONGBOX:I = 0x10

.field public static final HARDWARE_TYPE_UNAVAILABLE:I = -0x44

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private final mBinder:Landroid/security/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFingerprintOnlySid()J
    .locals 5

    iget-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2

    const-string v0, "android.security.keystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2

    if-lez p0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "OK"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Operation requires authorization"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    const/16 v0, -0x10

    if-eq p0, v0, :cond_2

    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->abort(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public addAuthToken([B)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->addAuthToken([B)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public addRngEntropy([BI)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->addRngEntropy([BI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p2, v0

    :cond_1
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    nop

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    move-object p3, v0

    :cond_1
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/IKeystoreService;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    nop

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 8

    if-eqz p5, :cond_0

    move-object v6, p5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v6, v0

    :goto_0
    if-eqz p4, :cond_1

    move-object v5, p4

    goto :goto_1

    :cond_1
    new-instance p5, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p5}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v5, p5

    :goto_1
    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p4

    return-object p4
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    .locals 9

    if-eqz p4, :cond_0

    move-object v6, p4

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v0

    :goto_0
    if-eqz p5, :cond_1

    move-object v7, p5

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :try_start_1
    new-array p4, p4, [B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p4

    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-direct {p0}, Landroid/security/KeyStore;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/security/IKeystoreService;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object p4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p4

    :catch_0
    move-exception p4

    goto :goto_2

    :catch_1
    move-exception p4

    move-object v7, p5

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, p4

    move-object v7, p5

    move-object p4, v0

    :goto_2
    const-string p5, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    invoke-static {p5, v0, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p5, 0x0

    return-object p5
.end method

.method public cancelConfirmationPrompt(Landroid/os/IBinder;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->cancelConfirmationPrompt(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method

.method public clearUid(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v2, p1

    invoke-interface {v1, v2, v3}, Landroid/security/IKeystoreService;->clear_uid(J)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v0

    return-object v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    .locals 9

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v6, p3

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/security/keymaster/KeymasterBlob;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v1

    :goto_0
    if-eqz p4, :cond_1

    move-object v7, p4

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p3, Landroid/security/keymaster/KeymasterBlob;

    new-array v0, v0, [B

    invoke-direct {p3, v0}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, p3

    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v4, p1

    move v5, p2

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/security/IKeystoreService;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object p3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p3

    :catch_0
    move-exception p3

    move-object p4, v7

    goto :goto_2

    :catch_1
    move-exception p3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, p3

    move-object p3, v0

    :goto_2
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 3

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_0
    move-object p2, v0

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    move-object v1, p4

    goto :goto_1

    :cond_1
    new-array v1, v0, [B

    :goto_1
    move-object p4, v1

    if-eqz p3, :cond_2

    move-object v0, p3

    goto :goto_2

    :cond_2
    new-array v0, v0, [B

    :goto_2
    move-object p3, v0

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    new-instance v7, Landroid/security/KeystoreArguments;

    invoke-direct {v7, p6}, Landroid/security/KeystoreArguments;-><init>([[B)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8

    if-eqz p3, :cond_0

    move-object v4, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v0

    :goto_0
    if-eqz p2, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {p3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, p3

    :goto_1
    :try_start_2
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v2, p1

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/security/IKeystoreService;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p2

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p3

    move-object v3, p2

    move-object p2, p3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, p2

    move-object v4, p3

    move-object p2, v0

    :goto_2
    const-string p3, "KeyStore"

    const-string v0, "Cannot connect to keystore"

    invoke-static {p3, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p3, 0x4

    return p3
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, ""

    :goto_0
    move-object p1, v1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;
    .locals 1

    invoke-static {p3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .locals 9

    invoke-virtual {p3}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Keystore operation failed"

    invoke-direct {v0, v1, p3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {v0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    return-object v0

    :pswitch_3
    new-instance v0, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {v0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    return-object v0

    :cond_0
    :pswitch_4
    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Failed to obtained key characteristics"

    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_1
    const v2, -0x5ffffe0a

    invoke-virtual {v0, v2}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v3}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v3

    :cond_2
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    invoke-static {v3, v4}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    :cond_3
    invoke-direct {p0}, Landroid/security/KeyStore;->getFingerprintOnlySid()J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-eqz v5, :cond_4

    invoke-static {v7, v8}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v5}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v5

    :cond_4
    new-instance v5, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v5}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch -0x1a
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v5, p2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Landroid/security/keymaster/KeymasterBlob;

    new-array v2, v0, [B

    invoke-direct {v1, v2}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v1

    :goto_0
    if-eqz p3, :cond_1

    move-object v6, p3

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p2, Landroid/security/keymaster/KeymasterBlob;

    new-array v0, v0, [B

    invoke-direct {p2, v0}, Landroid/security/keymaster/KeymasterBlob;-><init>([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, p2

    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v4, p1

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/security/IKeystoreService;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return p2

    :catch_0
    move-exception p2

    move-object p3, v6

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, p2

    move-object p2, v0

    :goto_2
    const-string v0, "KeyStore"

    const-string v1, "Cannot connect to keystore"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getmtime(Ljava/lang/String;I)J
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1, p2}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception v2

    const-string v3, "KeyStore"

    const-string v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public grant(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/security/IKeystoreService;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 13

    move-object v1, p0

    :try_start_0
    iget-object v2, v1, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p11

    invoke-interface/range {v2 .. v12}, Landroid/security/IKeystoreService;->importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJLandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    return v2
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [B

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    nop

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x4

    return v1
.end method

.method public isConfirmationPromptSupported()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0}, Landroid/security/IKeystoreService;->isConfirmationPromptSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->isEmpty(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isHardwareBacked()Z
    .locals 1

    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->isOperationAuthorized(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isUnlocked()Z
    .locals 2

    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public lock()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->lock(I)Z

    move-result v0

    return v0
.end method

.method public lock(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->lock(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onDeviceOffBody()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0}, Landroid/security/IKeystoreService;->onDeviceOffBody()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUserAdded(I)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    return-void
.end method

.method public onUserAdded(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .locals 4

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserRemoved(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->onUserRemoved(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->presentConfirmationPrompt(Landroid/os/IBinder;Ljava/lang/String;[BLjava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x5

    return v1
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1}, Landroid/security/IKeystoreService;->reset()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1}, Landroid/security/IKeystoreService;->getState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_0
    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object v1

    :pswitch_1
    sget-object v1, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :pswitch_2
    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, ""

    :goto_0
    move-object p2, v1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/security/KeyStore;->mError:I

    iget v1, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 3

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    :goto_0
    move-object p2, v0

    if-eqz p3, :cond_1

    move-object v0, p3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_1
    move-object p3, v0

    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/IKeystoreService;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KeyStore"

    const-string v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    :try_start_0
    new-array v1, v0, [B

    :goto_0
    move-object p3, v1

    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "KeyStore exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_1
    move-exception v1

    const-string v2, "KeyStore"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
