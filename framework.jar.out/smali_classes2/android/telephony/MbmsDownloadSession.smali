.class public Landroid/telephony/MbmsDownloadSession;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MbmsDownloadSession$DownloadStatus;,
        Landroid/telephony/MbmsDownloadSession$DownloadResultCode;
    }
.end annotation


# static fields
.field public static final DEFAULT_TOP_LEVEL_TEMP_DIRECTORY:Ljava/lang/String; = "androidMbmsTempFileRoot"

.field private static final DESTINATION_SANITY_CHECK_FILE_NAME:Ljava/lang/String; = "destinationSanityCheckFile"

.field public static final EXTRA_MBMS_COMPLETED_FILE_URI:Ljava/lang/String; = "android.telephony.extra.MBMS_COMPLETED_FILE_URI"

.field public static final EXTRA_MBMS_DOWNLOAD_REQUEST:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

.field public static final EXTRA_MBMS_DOWNLOAD_RESULT:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

.field public static final EXTRA_MBMS_FILE_INFO:Ljava/lang/String; = "android.telephony.extra.MBMS_FILE_INFO"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MBMS_DOWNLOAD_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsDownload"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MBMS_DOWNLOAD_SERVICE_OVERRIDE_METADATA:Ljava/lang/String; = "mbms-download-service-override"

.field public static final RESULT_CANCELLED:I = 0x2

.field public static final RESULT_DOWNLOAD_FAILURE:I = 0x6

.field public static final RESULT_EXPIRED:I = 0x3

.field public static final RESULT_FILE_ROOT_UNREACHABLE:I = 0x8

.field public static final RESULT_IO_ERROR:I = 0x4

.field public static final RESULT_OUT_OF_STORAGE:I = 0x7

.field public static final RESULT_SERVICE_ID_NOT_DEFINED:I = 0x5

.field public static final RESULT_SUCCESSFUL:I = 0x1

.field public static final STATUS_ACTIVELY_DOWNLOADING:I = 0x1

.field public static final STATUS_PENDING_DOWNLOAD:I = 0x2

.field public static final STATUS_PENDING_DOWNLOAD_WINDOW:I = 0x4

.field public static final STATUS_PENDING_REPAIR:I = 0x3

.field public static final STATUS_UNKNOWN:I

.field private static sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field private final mInternalDownloadProgressListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/mbms/DownloadProgressListener;",
            "Landroid/telephony/mbms/InternalDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInternalDownloadStatusListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/mbms/DownloadStatusListener;",
            "Landroid/telephony/mbms/InternalDownloadStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/mbms/vendor/IMbmsDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/telephony/MbmsDownloadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    new-instance v0, Landroid/telephony/MbmsDownloadSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsDownloadSession$1;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    iput p3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    new-instance v0, Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-direct {v0, p4, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/MbmsDownloadSession;)I
    .locals 1

    iget v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    return v0
.end method

.method static synthetic access$200(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;
    .locals 1

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$600(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private bindAndInitialize()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v1, "android.telephony.action.EmbmsDownload"

    new-instance v2, Landroid/telephony/MbmsDownloadSession$3;

    invoke-direct {v2, p0}, Landroid/telephony/MbmsDownloadSession$3;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method private checkDownloadRequestDestination(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getDestinationUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "destinationSanityCheckFile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "destinationSanityCheckFile"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    nop

    return-void

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Destination provided in the download request is invalid -- files in the temp file directory cannot be directly moved there."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got IOException while testing out the destination: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v3

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The destination path must be a directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;
    .locals 4

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/telephony/MbmsDownloadSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/MbmsDownloadSession;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)V

    invoke-direct {v0}, Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Landroid/telephony/MbmsDownloadSession$2;

    invoke-direct {v1, p3, v2}, Landroid/telephony/MbmsDownloadSession$2;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have two active instances"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsDownloadSession;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;

    move-result-object v0

    return-object v0
.end method

.method private deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to delete non-existent download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".download_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private sendErrorToApp(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->onError(ILjava/lang/String;)V

    return-void
.end method

.method private validateTempFileRootSanity(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Temp file root cannot be your files dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Temp file root cannot be your cache dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Temp file root cannot be your data dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided File is not a directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided directory does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2

    nop

    return-void

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create download token for request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Token location is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create download token for request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " due to IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Attempted to write to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addProgressListener(Landroid/telephony/mbms/DownloadRequest;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/DownloadProgressListener;)V
    .locals 6

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/telephony/mbms/InternalDownloadProgressListener;

    invoke-direct {v1, p3, p2}, Landroid/telephony/mbms/InternalDownloadProgressListener;-><init>(Landroid/telephony/mbms/DownloadProgressListener;Ljava/util/concurrent/Executor;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_1

    const/16 v4, 0x192

    if-eq v3, v4, :cond_0

    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v3

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addStatusListener(Landroid/telephony/mbms/DownloadRequest;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/DownloadStatusListener;)V
    .locals 6

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/telephony/mbms/InternalDownloadStatusListener;

    invoke-direct {v1, p3, p2}, Landroid/telephony/mbms/InternalDownloadStatusListener;-><init>(Landroid/telephony/mbms/DownloadStatusListener;Ljava/util/concurrent/Executor;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_1

    const/16 v4, 0x192

    if-eq v3, v4, :cond_0

    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v3

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cancelDownload(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 5

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-nez v2, :cond_0

    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Service already dead"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v1, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    return-void

    :cond_0
    :try_start_1
    iget v3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->dispose(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Remote exception while disposing of service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v1, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    nop

    return-void

    :goto_1
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v1, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    throw v2
.end method

.method public download(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 7

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v2, "MbmsTempFileRootPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "mbms_temp_file_root"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "androidMbmsTempFileRoot"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0, v2}, Landroid/telephony/MbmsDownloadSession;->setTempFileRootDirectory(Ljava/io/File;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->checkDownloadRequestDestination(Landroid/telephony/mbms/DownloadRequest;)V

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->download(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    invoke-direct {p0, v2, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Middleware must not return an unknown error code"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v5, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v3, 0x3

    invoke-direct {p0, v3, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTempFileRootDirectory()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v1, "MbmsTempFileRootPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "mbms_temp_file_root"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    :cond_0
    return-object v2
.end method

.method public listPendingDownloads()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_0

    :try_start_0
    iget v1, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->listPendingDownloads(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadProgressListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_2

    const/16 v4, 0x192

    if-eq v3, v4, :cond_1

    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadProgressListener;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    nop

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/InternalDownloadProgressListener;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    :cond_3
    nop

    return-void

    :cond_4
    :try_start_3
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v3

    :try_start_4
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadProgressListener;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    :cond_5
    return-void

    :cond_6
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provided listener was never registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadProgressListener;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    :cond_8
    throw v0
.end method

.method public removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-eqz v3, :cond_2

    const/16 v4, 0x192

    if-eq v3, v4, :cond_1

    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStatusListener;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    nop

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/InternalDownloadStatusListener;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    :cond_3
    nop

    return-void

    :cond_4
    :try_start_3
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v3

    :try_start_4
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStatusListener;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    :cond_5
    return-void

    :cond_6
    :try_start_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provided listener was never registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadStatusListener;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    :cond_8
    throw v0
.end method

.method public requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)V
    .locals 5

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    const/16 v3, 0x192

    if-eq v2, v3, :cond_1

    const/16 v3, 0x193

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown file."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestUpdateFileServices(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v2, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_0

    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)V
    .locals 5

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    const/16 v3, 0x192

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTempFileRootDirectory(Ljava/io/File;)V
    .locals 7

    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->validateTempFileRootSanity(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    nop

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    iget v4, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v4, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_0
    nop

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v4, "MbmsTempFileRootPrefs"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "mbms_temp_file_root"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Middleware must not return an unknown error code"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v4

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v5, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to canonicalize the provided path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Got IOException checking directory sanity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
