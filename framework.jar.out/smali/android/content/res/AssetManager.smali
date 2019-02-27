.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;,
        Landroid/content/res/AssetManager$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field private static final FRAMEWORK_APK_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final ONEPLUS_FRAMEWORK_APK_PATH:Ljava/lang/String; = "/system/priv-app/oneplus-framework-res/oneplus-framework-res.apk"

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final sEmptyApkAssets:[Landroid/content/res/ApkAssets;

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sSync"
    .end annotation
.end field

.field private static sSystemApkAssets:[Landroid/content/res/ApkAssets;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sSync"
    .end annotation
.end field

.field private static sSystemApkAssetsSet:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sSync"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApkAssets:[Landroid/content/res/ApkAssets;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNumRefs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mObject:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mOffsets:[J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mOpen:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRefStacks:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Landroid/util/TypedValue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 250
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

.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/content/res/ApkAssets;

    sput-object v1, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    .line 72
    const/4 v1, 0x0

    sput-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 74
    new-array v0, v0, [Landroid/content/res/ApkAssets;

    sput-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 109
    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 161
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-static {}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked()V

    .line 163
    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 164
    .local v1, "assets":[Landroid/content/res/ApkAssets;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V

    .line 174
    return-void

    .line 164
    .end local v1    # "assets":[Landroid/content/res/ApkAssets;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "sentinel"    # Z

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 109
    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 182
    invoke-static {}, Landroid/content/res/AssetManager;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 187
    return-void
.end method

.method synthetic constructor <init>(ZLandroid/content/res/AssetManager$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Landroid/content/res/AssetManager$1;

    .line 57
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;-><init>(Z)V

    return-void
.end method

.method static synthetic access$1000(J)V
    .locals 0
    .param p0, "x0"    # J

    .line 57
    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetDestroy(J)V

    return-void
.end method

.method static synthetic access$102(Landroid/content/res/AssetManager;[Landroid/content/res/ApkAssets;)[Landroid/content/res/ApkAssets;
    .locals 0
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # [Landroid/content/res/ApkAssets;

    .line 57
    iput-object p1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/content/res/AssetManager;J)V
    .locals 0
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # J

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/res/AssetManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/res/AssetManager;

    .line 57
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    return-wide v0
.end method

.method static synthetic access$300(J[Landroid/content/res/ApkAssets;Z)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # [Landroid/content/res/ApkAssets;
    .param p3, "x2"    # Z

    .line 57
    invoke-static {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    return-void
.end method

.method static synthetic access$500(J)J
    .locals 2
    .param p0, "x0"    # J

    .line 57
    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 57
    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetReadChar(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(J[BII)I
    .locals 1
    .param p0, "x0"    # J
    .param p2, "x1"    # [B
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 57
    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetRead(J[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(JJI)J
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # I

    .line 57
    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->nativeAssetSeek(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(J)J
    .locals 2
    .param p0, "x0"    # J

    .line 57
    invoke-static {p0, p1}, Landroid/content/res/AssetManager;->nativeAssetGetRemainingLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private addAssetPathInternal(Ljava/lang/String;ZZ)I
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "overlay"    # Z
    .param p3, "appAsLib"    # Z

    .line 399
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    monitor-enter p0

    .line 401
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 402
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 405
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .line 405
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 406
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    add-int/lit8 v1, v2, 0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 405
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 416
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/resource-cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@idmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, "idmapPath":Ljava/lang/String;
    invoke-static {v3, v1}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;Z)Landroid/content/res/ApkAssets;

    move-result-object v4

    .line 419
    .end local v3    # "idmapPath":Ljava/lang/String;
    move-object v1, v4

    .line 420
    .local v1, "assets":Landroid/content/res/ApkAssets;
    goto :goto_1

    .line 423
    .end local v1    # "assets":Landroid/content/res/ApkAssets;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 421
    :cond_2
    invoke-static {p1, v1, p3}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 425
    .restart local v1    # "assets":Landroid/content/res/ApkAssets;
    :goto_1
    nop

    .line 424
    nop

    .line 427
    :try_start_2
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/res/ApkAssets;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 428
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aput-object v1, v3, v0

    .line 429
    iget-wide v3, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v5, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    invoke-static {v3, v4, v5, v2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    .line 430
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 431
    add-int/lit8 v2, v0, 0x1

    monitor-exit p0

    return v2

    .line 423
    .end local v1    # "assets":Landroid/content/res/ApkAssets;
    :goto_2
    nop

    .line 424
    .local v2, "e":Ljava/io/IOException;
    monitor-exit p0

    return v1

    .line 432
    .end local v0    # "count":I
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static createSystemAssetsInZygoteLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sSync"
    .end annotation

    .line 194
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    .line 195
    return-void

    .line 199
    :cond_0
    invoke-static {}, Landroid/content/res/AssetManager;->nativeVerifySystemIdmaps()V

    .line 202
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    const-string v1, "/system/framework/framework-res.apk"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;Z)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v1, "/system/priv-app/oneplus-framework-res/oneplus-framework-res.apk"

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;Z)Landroid/content/res/ApkAssets;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-static {v0}, Landroid/content/res/AssetManager;->loadStaticRuntimeOverlays(Ljava/util/ArrayList;)V

    .line 213
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/res/ApkAssets;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/res/ApkAssets;

    sput-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    .line 215
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1, v2}, Landroid/content/res/AssetManager;-><init>(Z)V

    sput-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 216
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    sget-object v2, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/AssetManager;->setApkAssets([Landroid/content/res/ApkAssets;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "apkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    nop

    .line 220
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create system AssetManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private decRefsLocked(J)V
    .locals 4
    .param p1, "id"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 1283
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1284
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1285
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1286
    iput-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    .line 1287
    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    iput-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 1289
    :cond_0
    return-void
.end method

.method private ensureOpenLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 454
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 457
    return-void

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 442
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 445
    return-void

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AssetManager has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native getAssetAllocations()Ljava/lang/String;
.end method

.method public static native getGlobalAssetCount()I
.end method

.method public static native getGlobalAssetManagerCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 2

    .line 264
    sget-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 265
    :try_start_0
    invoke-static {}, Landroid/content/res/AssetManager;->createSystemAssetsInZygoteLocked()V

    .line 266
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    monitor-exit v0

    return-object v1

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private incRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .line 1275
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1276
    return-void
.end method

.method private invalidateCachesLocked(I)V
    .locals 0
    .param p1, "diff"    # I

    .line 335
    return-void
.end method

.method private static loadStaticRuntimeOverlays(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/res/ApkAssets;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    .local p0, "outApkAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/res/ApkAssets;>;"
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/data/resource-cache/overlays.list"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 238
    .local v0, "fis":Ljava/io/FileInputStream;
    nop

    .line 237
    nop

    .line 244
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 245
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 244
    .local v3, "flock":Ljava/nio/channels/FileLock;
    nop

    .line 246
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 246
    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 247
    const-string v4, " "

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v4, v4, v6

    .line 248
    .local v4, "idmapPath":Ljava/lang/String;
    invoke-static {v4, v6}, Landroid/content/res/ApkAssets;->loadOverlayFromPath(Ljava/lang/String;Z)Landroid/content/res/ApkAssets;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    .end local v4    # "idmapPath":Ljava/lang/String;
    goto :goto_0

    .line 250
    .end local v5    # "line":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    :try_start_4
    invoke-static {v2, v3}, Landroid/content/res/AssetManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 250
    .end local v3    # "flock":Ljava/nio/channels/FileLock;
    :cond_1
    :try_start_5
    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 254
    .end local v1    # "br":Ljava/io/BufferedReader;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 255
    nop

    .line 256
    return-void

    .line 250
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "flock":Ljava/nio/channels/FileLock;
    :catchall_0
    move-exception v4

    move-object v5, v2

    goto :goto_1

    .line 244
    :catch_0
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 250
    :catchall_1
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_1
    if-eqz v3, :cond_2

    :try_start_7
    invoke-static {v5, v3}, Landroid/content/res/AssetManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v4
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 250
    .end local v3    # "flock":Ljava/nio/channels/FileLock;
    :catchall_2
    move-exception v3

    goto :goto_2

    .line 244
    :catch_1
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 250
    :goto_2
    :try_start_9
    invoke-static {v2, v1}, Landroid/content/res/AssetManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 254
    .end local v1    # "br":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 233
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "AssetManager"

    const-string/jumbo v2, "no overlays.list file found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method private static native nativeApplyStyle(JJIIJ[IJJ)V
.end method

.method private static native nativeAssetDestroy(J)V
.end method

.method private static native nativeAssetGetLength(J)J
.end method

.method private static native nativeAssetGetRemainingLength(J)J
.end method

.method private static native nativeAssetRead(J[BII)I
.end method

.method private static native nativeAssetReadChar(J)I
.end method

.method private static native nativeAssetSeek(JJI)J
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetAssignedPackageIdentifiers(J)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static native nativeGetLocales(JZ)[Ljava/lang/String;
.end method

.method private static native nativeGetResourceArray(JI[I)I
.end method

.method private static native nativeGetResourceArraySize(JI)I
.end method

.method private static native nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I
.end method

.method private static native nativeGetResourceEntryName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeGetResourceIntArray(JI)[I
.end method

.method private static native nativeGetResourceName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourcePackageName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourceStringArray(JI)[Ljava/lang/String;
.end method

.method private static native nativeGetResourceStringArrayInfo(JI)[I
.end method

.method private static native nativeGetResourceTypeName(JI)Ljava/lang/String;
.end method

.method private static native nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I
.end method

.method private static native nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;
.end method

.method private static native nativeGetStyleAttributes(JI)[I
.end method

.method private static native nativeList(JLjava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenAsset(JLjava/lang/String;I)J
.end method

.method private static native nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenNonAsset(JILjava/lang/String;I)J
.end method

.method private static native nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native nativeOpenXmlAsset(JILjava/lang/String;)J
.end method

.method private static native nativeResolveAttrs(JJII[I[I[I[I)Z
.end method

.method private static native nativeRetrieveAttributes(JJ[I[I[I)Z
.end method

.method private static native nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V
.end method

.method private static native nativeSetConfiguration(JIILjava/lang/String;IIIIIIIIIIIIIII)V
.end method

.method private static native nativeThemeApplyStyle(JJIZ)V
.end method

.method static native nativeThemeClear(J)V
.end method

.method static native nativeThemeCopy(JJ)V
.end method

.method private static native nativeThemeCreate(J)J
.end method

.method private static native nativeThemeDestroy(J)V
.end method

.method private static native nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I
.end method

.method static native nativeThemeGetChangingConfigurations(J)I
.end method

.method private static native nativeVerifySystemIdmaps()V
.end method


# virtual methods
.method public addAssetPath(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public addOverlayPath(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 395
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method applyStyle(JIILandroid/content/res/XmlBlock$Parser;[IJJ)V
    .locals 16
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "parser"    # Landroid/content/res/XmlBlock$Parser;
    .param p6, "inAttrs"    # [I
    .param p7, "outValuesAddress"    # J
    .param p9, "outIndicesAddress"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    .line 987
    const-string v0, "inAttrs"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    monitor-enter p0

    .line 991
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 992
    iget-wide v3, v1, Landroid/content/res/AssetManager;->mObject:J

    .line 993
    if-eqz v2, :cond_0

    iget-wide v5, v2, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    .line 992
    :goto_0
    move-wide v9, v5

    move-wide/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move-object v11, v14

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-static/range {v3 .. v15}, Landroid/content/res/AssetManager;->nativeApplyStyle(JJIIJ[IJJ)V

    .line 995
    monitor-exit p0

    .line 996
    return-void

    .line 995
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method applyStyleToTheme(JIZ)V
    .locals 6
    .param p1, "themePtr"    # J
    .param p3, "resId"    # I
    .param p4, "force"    # Z

    .line 1045
    monitor-enter p0

    .line 1048
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1049
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/content/res/AssetManager;->nativeThemeApplyStyle(JJIZ)V

    .line 1050
    monitor-exit p0

    .line 1051
    return-void

    .line 1050
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 277
    monitor-exit p0

    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 282
    monitor-exit p0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method createTheme()J
    .locals 2

    .line 1029
    monitor-enter p0

    .line 1030
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1031
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeThemeCreate(J)J

    move-result-wide v0

    .line 1032
    .local v0, "themePtr":J
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 1033
    monitor-exit p0

    return-wide v0

    .line 1034
    .end local v0    # "themePtr":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "theme"    # J
    .param p3, "priority"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;

    .line 673
    monitor-enter p0

    .line 674
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 675
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Landroid/content/res/AssetManager;->nativeThemeDump(JJILjava/lang/String;Ljava/lang/String;)V

    .line 676
    monitor-exit p0

    .line 677
    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1064
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1065
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeDestroy(J)V

    .line 1067
    :cond_0
    return-void
.end method

.method public findCookieForPath(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 358
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    monitor-enter p0

    .line 360
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 361
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    .line 362
    .local v0, "count":I
    const/4 v1, 0x0

    move v2, v1

    .line 362
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 363
    iget-object v3, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    add-int/lit8 v1, v2, 0x1

    monitor-exit p0

    return v1

    .line 362
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    .line 368
    return v1

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getApkAssets()[Landroid/content/res/ApkAssets;
    .locals 1

    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    monitor-exit p0

    return-object v0

    .line 347
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    sget-object v0, Landroid/content/res/AssetManager;->sEmptyApkAssets:[Landroid/content/res/ApkAssets;

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1259
    monitor-enter p0

    .line 1260
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1261
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetAssignedPackageIdentifiers(J)Landroid/util/SparseArray;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1262
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocales()[Ljava/lang/String;
    .locals 3

    .line 1204
    monitor-enter p0

    .line 1205
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1206
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNonSystemLocales()[Ljava/lang/String;
    .locals 3

    .line 1221
    monitor-enter p0

    .line 1222
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1223
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/res/AssetManager;->nativeGetLocales(JZ)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1224
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "id"    # I

    .line 718
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getResourceArray(I[I)I
    .locals 2
    .param p1, "resId"    # I
    .param p2, "outData"    # [I

    .line 568
    const-string/jumbo v0, "outData"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    monitor-enter p0

    .line 570
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 571
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeGetResourceArray(JI[I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceArraySize(I)I
    .locals 2
    .param p1, "resId"    # I

    .line 539
    monitor-enter p0

    .line 540
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 541
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceArraySize(JI)I

    move-result v0

    monitor-exit p0

    return v0

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceBagText(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "bagEntryId"    # I

    .line 519
    monitor-enter p0

    .line 520
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 521
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 522
    .local v0, "outValue":Landroid/util/TypedValue;
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/content/res/AssetManager;->nativeGetResourceBagValue(JIILandroid/util/TypedValue;)I

    move-result v1

    .line 523
    .local v1, "cookie":I
    if-gtz v1, :cond_0

    .line 524
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 528
    :cond_0
    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v2

    iput v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    .line 531
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 532
    iget-object v2, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 534
    :cond_1
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 535
    .end local v0    # "outValue":Landroid/util/TypedValue;
    .end local v1    # "cookie":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceEntryName(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 701
    monitor-enter p0

    .line 702
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 703
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceEntryName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .line 709
    monitor-enter p0

    .line 710
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 712
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeGetResourceIdentifier(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceIntArray(I)[I
    .locals 2
    .param p1, "resId"    # I

    .line 617
    monitor-enter p0

    .line 618
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 619
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceIntArray(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceName(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 680
    monitor-enter p0

    .line 681
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 682
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourcePackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 687
    monitor-enter p0

    .line 688
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 689
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourcePackageName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceStringArray(I)[Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 583
    monitor-enter p0

    .line 584
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 585
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArray(JI)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "resId"    # I

    .line 501
    monitor-enter p0

    .line 502
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 503
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 506
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 507
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 11
    .param p1, "resId"    # I

    .line 596
    monitor-enter p0

    .line 597
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 598
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceStringArrayInfo(JI)[I

    move-result-object v0

    .line 599
    .local v0, "rawInfoArray":[I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 600
    monitor-exit p0

    return-object v1

    .line 603
    :cond_0
    array-length v2, v0

    .line 604
    .local v2, "rawInfoArrayLen":I
    div-int/lit8 v3, v2, 0x2

    .line 605
    .local v3, "infoArrayLen":I
    new-array v4, v3, [Ljava/lang/CharSequence;

    .line 606
    .local v4, "retArray":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 607
    aget v7, v0, v5

    .line 608
    .local v7, "cookie":I
    add-int/lit8 v8, v5, 0x1

    aget v8, v0, v8

    .line 609
    .local v8, "index":I
    if-ltz v8, :cond_1

    if-lez v7, :cond_1

    .line 610
    iget-object v9, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int/lit8 v10, v7, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v9, v8}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    aput-object v9, v4, v6

    .line 606
    .end local v7    # "cookie":I
    .end local v8    # "index":I
    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 612
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_2
    monitor-exit p0

    return-object v4

    .line 613
    .end local v0    # "rawInfoArray":[I
    .end local v2    # "rawInfoArrayLen":I
    .end local v3    # "infoArrayLen":I
    .end local v4    # "retArray":[Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceTypeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "resId"    # I

    .line 694
    monitor-enter p0

    .line 695
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 696
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetResourceTypeName(JI)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getResourceValue(IILandroid/util/TypedValue;Z)Z
    .locals 7
    .param p1, "resId"    # I
    .param p2, "densityDpi"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z

    .line 473
    const-string/jumbo v0, "outValue"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 476
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    int-to-short v4, p2

    move v3, p1

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/content/res/AssetManager;->nativeGetResourceValue(JISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 478
    .local v0, "cookie":I
    if-gtz v0, :cond_0

    .line 479
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 483
    :cond_0
    iget v1, p3, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v1

    iput v1, p3, Landroid/util/TypedValue;->changingConfigurations:I

    .line 486
    iget v1, p3, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 487
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget v2, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 489
    :cond_1
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 490
    .end local v0    # "cookie":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 2

    .line 1231
    monitor-enter p0

    .line 1232
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1233
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1}, Landroid/content/res/AssetManager;->nativeGetSizeConfigurations(J)[Landroid/content/res/Configuration;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1234
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getStyleAttributes(I)[I
    .locals 2
    .param p1, "resId"    # I

    .line 631
    monitor-enter p0

    .line 632
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 633
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeGetStyleAttributes(JI)[I

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 634
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getThemeValue(JILandroid/util/TypedValue;Z)Z
    .locals 8
    .param p1, "theme"    # J
    .param p3, "resId"    # I
    .param p4, "outValue"    # Landroid/util/TypedValue;
    .param p5, "resolveRefs"    # Z

    .line 652
    const-string/jumbo v0, "outValue"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    monitor-enter p0

    .line 654
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 655
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeThemeGetAttributeValue(JJILandroid/util/TypedValue;Z)I

    move-result v0

    .line 657
    .local v0, "cookie":I
    if-gtz v0, :cond_0

    .line 658
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 662
    :cond_0
    iget v1, p4, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I

    move-result v1

    iput v1, p4, Landroid/util/TypedValue;->changingConfigurations:I

    .line 665
    iget v1, p4, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 666
    iget-object v1, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget v2, p4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Landroid/content/res/ApkAssets;->getStringFromPool(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 668
    :cond_1
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 669
    .end local v0    # "cookie":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isUpToDate()Z
    .locals 6

    .line 1184
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1185
    .local v4, "apkAssets":Landroid/content/res/ApkAssets;
    invoke-virtual {v4}, Landroid/content/res/ApkAssets;->isUpToDate()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1186
    return v2

    .line 1184
    .end local v4    # "apkAssets":Landroid/content/res/ApkAssets;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1189
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 800
    const-string/jumbo v0, "path"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    monitor-enter p0

    .line 802
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 803
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1}, Landroid/content/res/AssetManager;->nativeList(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 804
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    const-string v0, "fileName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    monitor-enter p0

    .line 754
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 755
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenAsset(JLjava/lang/String;I)J

    move-result-wide v0

    .line 756
    .local v0, "asset":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 759
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V

    .line 760
    .local v2, "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 761
    monitor-exit p0

    return-object v2

    .line 757
    .end local v2    # "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 762
    .end local v0    # "asset":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    const-string v0, "fileName"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    monitor-enter p0

    .line 778
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 779
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-static {v0, v1, p1, v2}, Landroid/content/res/AssetManager;->nativeOpenAssetFd(JLjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 780
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 783
    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x1

    aget-wide v5, v1, v2

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v7

    .line 781
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 784
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 852
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 5
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    const-string v0, "fileName"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    monitor-enter p0

    .line 867
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 868
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/content/res/AssetManager;->nativeOpenNonAsset(JILjava/lang/String;I)J

    move-result-wide v0

    .line 869
    .local v0, "asset":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 872
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V

    .line 873
    .local v2, "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 874
    monitor-exit p0

    return-object v2

    .line 870
    .end local v2    # "assetInputStream":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset absolute file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 875
    .end local v0    # "asset":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 840
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 904
    const-string v0, "fileName"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    monitor-enter p0

    .line 906
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 907
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 908
    invoke-static {v0, v1, p1, p2, v2}, Landroid/content/res/AssetManager;->nativeOpenNonAssetFd(JILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 909
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 912
    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    iget-object v1, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v2, 0x1

    aget-wide v5, v1, v2

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v7

    .line 910
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 913
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 889
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 5
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    const-string v0, "fileName"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    monitor-enter p0

    .line 967
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 968
    iget-wide v0, p0, Landroid/content/res/AssetManager;->mObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/content/res/AssetManager;->nativeOpenXmlAsset(JILjava/lang/String;)J

    move-result-wide v0

    .line 969
    .local v0, "xmlBlock":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 972
    new-instance v2, Landroid/content/res/XmlBlock;

    invoke-direct {v2, p0, v0, v1}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V

    .line 973
    .local v2, "block":Landroid/content/res/XmlBlock;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 974
    monitor-exit p0

    return-object v2

    .line 970
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Asset XML file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 975
    .end local v0    # "xmlBlock":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 935
    .local v0, "block":Landroid/content/res/XmlBlock;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v2, :cond_1

    .line 942
    nop

    .line 943
    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Landroid/content/res/AssetManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 942
    :cond_0
    return-object v2

    .line 940
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "block.newParser() returned a null parser"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 934
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 943
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Landroid/content/res/AssetManager;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2
.end method

.method public openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method releaseTheme(J)V
    .locals 1
    .param p1, "themePtr"    # J

    .line 1038
    monitor-enter p0

    .line 1039
    :try_start_0
    invoke-static {p1, p2}, Landroid/content/res/AssetManager;->nativeThemeDestroy(J)V

    .line 1040
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 1041
    monitor-exit p0

    .line 1042
    return-void

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resolveAttrs(JII[I[I[I[I)Z
    .locals 15
    .param p1, "themePtr"    # J
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p5, "inValues"    # [I
    .param p6, "inAttrs"    # [I
    .param p7, "outValues"    # [I
    .param p8, "outIndices"    # [I

    move-object v1, p0

    .line 1001
    const-string v0, "inAttrs"

    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    const-string/jumbo v0, "outValues"

    move-object/from16 v13, p7

    invoke-static {v13, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string/jumbo v0, "outIndices"

    move-object/from16 v14, p8

    invoke-static {v14, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    monitor-enter p0

    .line 1007
    :try_start_0
    invoke-direct {v1}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1008
    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    invoke-static/range {v2 .. v11}, Landroid/content/res/AssetManager;->nativeResolveAttrs(JJII[I[I[I[I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method retrieveAttributes(Landroid/content/res/XmlBlock$Parser;[I[I[I)Z
    .locals 8
    .param p1, "parser"    # Landroid/content/res/XmlBlock$Parser;
    .param p2, "inAttrs"    # [I
    .param p3, "outValues"    # [I
    .param p4, "outIndices"    # [I

    .line 1015
    const-string/jumbo v0, "parser"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    const-string v0, "inAttrs"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string/jumbo v0, "outValues"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    const-string/jumbo v0, "outIndices"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    monitor-enter p0

    .line 1022
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1023
    iget-wide v1, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-wide v3, p1, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/content/res/AssetManager;->nativeRetrieveAttributes(JJ[I[I[I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1025
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setApkAssets([Landroid/content/res/ApkAssets;Z)V
    .locals 6
    .param p1, "apkAssets"    # [Landroid/content/res/ApkAssets;
    .param p2, "invalidateCaches"    # Z

    .line 296
    const-string v0, "apkAssets"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/content/res/ApkAssets;

    .line 301
    .local v0, "newApkAssets":[Landroid/content/res/ApkAssets;
    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    sget-object v2, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    sget-object v1, Landroid/content/res/AssetManager;->sSystemApkAssets:[Landroid/content/res/ApkAssets;

    array-length v1, v1

    .line 305
    .local v1, "newLength":I
    array-length v2, p1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 306
    .local v4, "apkAsset":Landroid/content/res/ApkAssets;
    sget-object v5, Landroid/content/res/AssetManager;->sSystemApkAssetsSet:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    add-int/lit8 v5, v1, 0x1

    .local v5, "newLength":I
    aput-object v4, v0, v1

    .line 305
    .end local v1    # "newLength":I
    .end local v4    # "apkAsset":Landroid/content/res/ApkAssets;
    move v1, v5

    .end local v5    # "newLength":I
    .restart local v1    # "newLength":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    :cond_1
    array-length v2, v0

    if-eq v1, v2, :cond_2

    .line 313
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Landroid/content/res/ApkAssets;

    .line 316
    :cond_2
    monitor-enter p0

    .line 317
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->ensureOpenLocked()V

    .line 318
    iput-object v0, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    .line 319
    iget-wide v2, p0, Landroid/content/res/AssetManager;->mObject:J

    iget-object v4, p0, Landroid/content/res/AssetManager;->mApkAssets:[Landroid/content/res/ApkAssets;

    invoke-static {v2, v3, v4, p2}, Landroid/content/res/AssetManager;->nativeSetApkAssets(J[Landroid/content/res/ApkAssets;Z)V

    .line 320
    if-eqz p2, :cond_3

    .line 322
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->invalidateCachesLocked(I)V

    .line 324
    :cond_3
    monitor-exit p0

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V
    .locals 22
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p5, "touchscreen"    # I
    .param p6, "density"    # I
    .param p7, "keyboard"    # I
    .param p8, "keyboardHidden"    # I
    .param p9, "navigation"    # I
    .param p10, "screenWidth"    # I
    .param p11, "screenHeight"    # I
    .param p12, "smallestScreenWidthDp"    # I
    .param p13, "screenWidthDp"    # I
    .param p14, "screenHeightDp"    # I
    .param p15, "screenLayout"    # I
    .param p16, "uiMode"    # I
    .param p17, "colorMode"    # I
    .param p18, "majorVersion"    # I

    move-object/from16 v1, p0

    .line 1246
    monitor-enter p0

    .line 1247
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/content/res/AssetManager;->ensureValidLocked()V

    .line 1248
    iget-wide v2, v1, Landroid/content/res/AssetManager;->mObject:J

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    invoke-static/range {v2 .. v21}, Landroid/content/res/AssetManager;->nativeSetConfiguration(JIILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 1252
    monitor-exit p0

    .line 1253
    return-void

    .line 1252
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method xmlBlockGone(I)V
    .locals 2
    .param p1, "id"    # I

    .line 979
    monitor-enter p0

    .line 980
    int-to-long v0, p1

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 981
    monitor-exit p0

    .line 982
    return-void

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
