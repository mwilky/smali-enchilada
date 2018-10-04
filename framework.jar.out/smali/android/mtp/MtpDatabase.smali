.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final AUDIO_PROPERTIES:[I

.field private static final DEVICE_PROPERTIES:[I

.field private static final FILE_PROPERTIES:[I

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final IMAGE_PROPERTIES:[I

.field private static final NO_MEDIA:Ljava/lang/String; = ".nomedia"

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final PLAYBACK_FORMATS:[I

.field private static final TAG:Ljava/lang/String;

.field private static final VIDEO_PROPERTIES:[I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private mDeviceType:I

.field private mManager:Landroid/mtp/MtpStorageManager;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private mNativeContext:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Landroid/mtp/MtpDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0xdc48

    aput v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3000
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x300b
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb901
        0xb902
        0xb903
        0xb982
        0xb983
        0xb984
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
        0x3811
        0x3812
    .end array-data

    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc41
        0xdc0b
        0xdc44
        0xdce0
        0xdc4e
    .end array-data

    :array_2
    .array-data 4
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    :array_3
    .array-data 4
        0xdc46
        0xdc9a
        0xdc89
        0xdc48
    .end array-data

    :array_4
    .array-data 4
        0xd401
        0xd402
        0x5003
        0x5001
        0xd407
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v0, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v0, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    new-instance v0, Landroid/media/MediaScanner;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v0, Landroid/mtp/MtpStorageManager;

    new-instance v1, Landroid/mtp/MtpDatabase$2;

    invoke-direct {v1, p0}, Landroid/mtp/MtpDatabase$2;-><init>(Landroid/mtp/MtpDatabase;)V

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager;-><init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    const-string/jumbo v0, "sys.usb.mtp.device_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return p1
.end method

.method static synthetic access$100(Landroid/mtp/MtpDatabase;)I
    .locals 1

    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$102(Landroid/mtp/MtpDatabase;I)I
    .locals 0

    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method private beginCopyObject(III)I
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    if-nez p2, :cond_0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I

    move-result v2

    return v2

    :cond_2
    :goto_1
    const/16 v2, 0x2009

    return v2
.end method

.method private beginDeleteObject(I)I
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x2009

    return v1

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2002

    return v1

    :cond_1
    const/16 v1, 0x2001

    return v1
.end method

.method private beginMoveObject(III)I
    .locals 4

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    if-nez p2, :cond_0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, p2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, v1}, Landroid/mtp/MtpStorageManager;->beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x2001

    goto :goto_1

    :cond_2
    const/16 v3, 0x2002

    :goto_1
    return v3

    :cond_3
    :goto_2
    const/16 v2, 0x2009

    return v2
.end method

.method private beginSendObject(Ljava/lang/String;III)I
    .locals 4

    if-nez p3, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p4}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p2}, Landroid/mtp/MtpStorageManager;->beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private deleteFromMedia(Ljava/nio/file/Path;Z)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v4, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    move-object v0, v1

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "_data=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    if-nez p2, :cond_2

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v3, "unhide"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_2
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unhide/rescan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mediaprovider didn\'t delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    goto :goto_4

    :goto_3
    nop

    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from MediaProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method private endCopyObject(IZ)V
    .locals 8

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_data"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "format"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_size"

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "date_modified"

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string/jumbo v4, "parent"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_5

    const-string/jumbo v6, "parent"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v5

    invoke-virtual {v4, v6}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v1, v5, v2}, Landroid/mtp/MtpDatabase;->rescanFile(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    return-void

    :catch_0
    move-exception v4

    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in beginSendObject"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_6
    :goto_3
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end copy object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private endDeleteObject(IZ)V
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to end remove object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/mtp/MtpDatabase;->deleteFromMedia(Ljava/nio/file/Path;Z)V

    :cond_2
    return-void
.end method

.method private endMoveObject(IIIIIZ)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    if-nez v2, :cond_0

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    move/from16 v6, p3

    invoke-virtual {v0, v6}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, v2}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_0
    move-object v7, v0

    if-nez v3, :cond_1

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    move/from16 v8, p4

    invoke-virtual {v0, v8}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    goto :goto_1

    :cond_1
    move/from16 v8, p4

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, v3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_1
    move-object v9, v0

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, v4}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_b

    if-eqz v7, :cond_b

    iget-object v11, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v11, v7, v9, v10, v5}, Landroid/mtp/MtpStorageManager;->endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v11, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v11, v4}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v11

    if-eqz v5, :cond_a

    if-nez v11, :cond_3

    goto/16 :goto_8

    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v12, v0

    invoke-virtual {v9}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v13

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v14

    const-string v0, "_data"

    invoke-interface {v13}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "parent"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_4
    invoke-interface {v13}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    const-string/jumbo v2, "parent"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v14}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v0, v16

    move-object v15, v0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v16
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v16, :cond_5

    move/from16 v17, v0

    :try_start_1
    invoke-interface {v14}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v18, v2

    goto/16 :goto_6

    :cond_5
    move/from16 v17, v0

    :goto_3
    :try_start_2
    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v16
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v16, :cond_7

    move-object/from16 v18, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    move/from16 v19, v0

    goto :goto_4

    :cond_6
    :try_start_3
    const-string v2, "format"

    move/from16 v19, v0

    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "_size"

    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "date_modified"

    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v2, v1, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v13}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    move-object/from16 v20, v0

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Landroid/mtp/MtpDatabase;->rescanFile(Ljava/lang/String;II)V

    goto :goto_5

    :cond_7
    move/from16 v19, v0

    move-object/from16 v18, v2

    :goto_4
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v2, v1, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v3, "_data=?"

    invoke-virtual {v0, v2, v12, v3, v15}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    :goto_5
    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    :goto_6
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in mMediaProvider.update"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void

    :cond_9
    invoke-virtual {v11}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {v1, v14, v2}, Landroid/mtp/MtpDatabase;->deleteFromMedia(Ljava/nio/file/Path;Z)V

    return-void

    :cond_a
    :goto_8
    return-void

    :cond_b
    :goto_9
    sget-object v2, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v3, "Failed to end move object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private endSendObject(IZ)V
    .locals 7

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0, p2}, Landroid/mtp/MtpStorageManager;->endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_data"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "format"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_size"

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "date_modified"

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "parent"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const-string/jumbo v5, "parent"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v1, v5, v2}, Landroid/mtp/MtpDatabase;->rescanFile(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :cond_3
    return-void

    :catch_0
    move-exception v4

    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in beginSendObject"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    sget-object v1, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v2, "Failed to successfully end send object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private findInMedia(Ljava/nio/file/Path;)I
    .locals 10

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "_data=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v3, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in MediaProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 7

    const/16 v0, 0x5001

    const/16 v1, 0x2001

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5003

    if-eq p1, v0, :cond_2

    const v0, 0xd407

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x200a

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_0

    const/16 v3, 0xff

    :cond_0
    invoke-virtual {v0, v2, v3, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    aput-char v2, p3, v3

    return v1

    :cond_1
    iget v0, p0, Landroid/mtp/MtpDatabase;->mDeviceType:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v2, v6, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v2, p3, v6

    return v1

    :cond_3
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    int-to-long v3, v0

    aput-wide v3, p2, v2

    const/4 v0, 0x1

    iget v2, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    int-to-long v2, v2

    aput-wide v2, p2, v0

    return v1

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getNumObjects(III)I
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/stream/Stream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    long-to-int v1, v1

    return v1
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 6

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x2009

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Ljava/lang/Integer;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, p2, v3}, Ljava/lang/String;->getChars(II[CI)V

    aput-char v3, p2, v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v4

    aput-wide v4, p3, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, p3, v3

    const/16 v3, 0x2001

    return v3
.end method

.method private getObjectFormat(I)I
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v1

    return v1
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 6

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    aput v2, p2, v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    const/4 v3, 0x1

    aput v2, p2, v3

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    :goto_0
    aput v4, p2, v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xff

    invoke-static {v2, v4}, Ljava/lang/Integer;->min(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    aput-char v1, p3, v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v1

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    aput-wide v4, p4, v3

    return v3
.end method

.method private getObjectList(III)[I
    .locals 2

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p3, p2, p1}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/stream/Stream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    sget-object v1, Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;->INSTANCE:Landroid/mtp/-$$Lambda$iwOv5HKUnGm7PVU3weoI9-JmsXc;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method private getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-nez v3, :cond_1

    if-nez p4, :cond_0

    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/16 v5, 0x2006

    invoke-direct {v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    :cond_0
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const v5, 0xa807

    invoke-direct {v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    :cond_1
    const/4 v4, -0x1

    move/from16 v5, p5

    if-ne v5, v4, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v4, :cond_3

    :cond_2
    const/4 v1, -0x1

    const/4 v5, 0x0

    :cond_3
    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v6, :cond_4

    new-instance v4, Landroid/mtp/MtpPropertyList;

    const v6, 0xa808

    invoke-direct {v4, v6}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    :cond_4
    const/4 v7, 0x0

    new-array v8, v7, [Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v8}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    const/16 v9, 0x2009

    if-ne v1, v4, :cond_5

    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v10, v7, v2, v4}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/stream/Stream;

    move-result-object v8

    if-nez v8, :cond_8

    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v9}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    :cond_5
    if-eqz v1, :cond_8

    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v10, v1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v10

    if-nez v10, :cond_6

    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v9}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    :cond_6
    invoke-virtual {v10}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v11

    if-eq v11, v2, :cond_7

    if-nez v2, :cond_8

    :cond_7
    invoke-static {v10}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    :cond_8
    if-eqz v1, :cond_9

    if-ne v5, v6, :cond_c

    :cond_9
    if-nez v1, :cond_a

    const/4 v1, -0x1

    :cond_a
    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v10, v1, v2, v4}, Landroid/mtp/MtpStorageManager;->getObjects(III)Ljava/util/stream/Stream;

    move-result-object v10

    if-nez v10, :cond_b

    new-instance v4, Landroid/mtp/MtpPropertyList;

    invoke-direct {v4, v9}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v4

    :cond_b
    invoke-static {v8, v10}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v8

    :cond_c
    new-instance v9, Landroid/mtp/MtpPropertyList;

    const/16 v10, 0x2001

    invoke-direct {v9, v10}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    invoke-interface {v8}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/mtp/MtpStorageManager$MtpObject;

    if-ne v3, v4, :cond_d

    iget-object v13, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/mtp/MtpPropertyGroup;

    if-nez v13, :cond_e

    invoke-direct {v0, v2}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v14

    new-instance v4, Landroid/mtp/MtpPropertyGroup;

    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v7, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v4, v10, v7, v14}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    move-object v13, v4

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    const/4 v7, 0x0

    goto :goto_1

    :cond_d
    new-array v4, v6, [I

    const/4 v7, 0x0

    aput v3, v4, v7

    iget-object v10, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Landroid/mtp/MtpPropertyGroup;

    if-nez v13, :cond_e

    new-instance v10, Landroid/mtp/MtpPropertyGroup;

    iget-object v14, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v6, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v10, v14, v6, v4}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V

    move-object v13, v10

    iget-object v6, v0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_1
    invoke-virtual {v13, v12, v9}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I

    move-result v4

    const/16 v6, 0x2001

    if-eq v4, v6, :cond_f

    new-instance v6, Landroid/mtp/MtpPropertyList;

    invoke-direct {v6, v4}, Landroid/mtp/MtpPropertyList;-><init>(I)V

    return-object v6

    :cond_f
    nop

    move v10, v6

    const/4 v4, -0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_10
    return-object v9
.end method

.method private getObjectReferences(I)[I
    .locals 12

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    move-object v3, v1

    :try_start_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v7, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v2

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    if-nez v3, :cond_3

    nop

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :cond_3
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v6, v5}, Landroid/mtp/MtpStorageManager;->getByPath(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Landroid/mtp/-$$Lambda$MtpDatabase$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Landroid/mtp/-$$Lambda$MtpDatabase$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v5

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in getObjectList"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v1

    :goto_1
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    sget-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTIES:[I

    return-object v0
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 2

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    return-object v0

    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0

    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0

    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_2
        0x3009 -> :sswitch_2
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_0
        0x3804 -> :sswitch_0
        0x3807 -> :sswitch_0
        0x380b -> :sswitch_0
        0x3811 -> :sswitch_0
        0x3812 -> :sswitch_0
        0xb901 -> :sswitch_2
        0xb902 -> :sswitch_2
        0xb903 -> :sswitch_2
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    sget-object v0, Landroid/mtp/MtpDatabase;->PLAYBACK_FORMATS:[I

    return-object v0
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "device-properties"

    const-string v0, "device-properties"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    const-string v0, "device-properties"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v6, 0x0

    const/4 v0, 0x0

    move-object v7, v0

    :try_start_0
    const-string v8, "device-properties"

    invoke-virtual {v2, v8, v4, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    if-eqz v4, :cond_1

    :try_start_1
    const-string/jumbo v9, "properties"

    const-string v0, "_id"

    const-string v6, "code"

    const-string/jumbo v8, "value"

    filled-new-array {v0, v6, v8}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v4

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    if-eqz v7, :cond_1

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v6, v4

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v6

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_2
    :try_start_2
    sget-object v4, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v8, "failed to migrate device properties"

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    move-object v4, v6

    :cond_5
    :goto_3
    const-string v0, "device-properties"

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_5

    :goto_4
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v0

    :cond_8
    :goto_5
    return-void
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 10

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x2009

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v2, v0, p2}, Landroid/mtp/MtpStorageManager;->beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x2002

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    :try_start_0
    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v5, v6}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v4}, Landroid/mtp/MtpStorageManager;->endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v6, "Failed to end rename object"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v4, :cond_3

    return v3

    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_data"

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    :try_start_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v8, "_data=?"

    invoke-virtual {v6, v7, v3, v8, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v8, "RemoteException in mMediaProvider.update"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    const-string v8, "."

    invoke-interface {v6, v8}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "."

    invoke-interface {v2, v6}, Ljava/nio/file/Path;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    :try_start_2
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v8, "unhide"

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v6

    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to unhide/rescan for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ".nomedia"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ".nomedia"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    :try_start_3
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v8, "unhide"

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v6

    sget-object v7, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to unhide/rescan for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    const/16 v6, 0x2001

    return v6
.end method

.method private rescanFile(Ljava/lang/String;II)V
    .locals 8

    const v0, 0xba05

    if-ne p3, v0, :cond_2

    move-object v0, p1

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, ".pla"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "_data"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v3, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;II)V

    :goto_1
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x200a

    return v0

    :pswitch_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1

    const v0, 0xdc07

    if-eq p2, v0, :cond_0

    const v0, 0xa80a

    return v0

    :cond_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setObjectReferences(I[I)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    if-nez v4, :cond_0

    const/16 v0, 0x2009

    return v0

    :cond_0
    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v3

    const/16 v5, 0x2002

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    return v5

    :cond_1
    iget-object v6, v1, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, v3

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v2

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_4

    aget v11, v2, v10

    iget-object v12, v1, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v12, v11}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/mtp/MtpDatabase;->findInMedia(Ljava/nio/file/Path;)I

    move-result v13

    if-ne v13, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "_id"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, v1, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    new-array v8, v9, [Landroid/content/ContentValues;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ContentValues;

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderClient;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_5

    const/16 v0, 0x2001

    return v0

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v8, Landroid/mtp/MtpDatabase;->TAG:Ljava/lang/String;

    const-string v9, "RemoteException in setObjectReferences"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v5
.end method


# virtual methods
.method public addStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpStorageManager;->addMtpStorage(Landroid/os/storage/StorageVolume;)Landroid/mtp/MtpStorage;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager;->close()V

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v0}, Landroid/media/MediaScanner;->close()V

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/os/storage/StorageVolume;)V
    .locals 3

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    :cond_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mManager:Landroid/mtp/MtpStorageManager;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpStorageManager;->removeMtpStorage(Landroid/mtp/MtpStorage;)V

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .locals 4

    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
