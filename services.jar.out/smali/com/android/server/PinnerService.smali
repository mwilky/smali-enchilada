.class public final Lcom/android/server/PinnerService;
.super Lcom/android/server/SystemService;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PinnerService$PinnerHandler;,
        Lcom/android/server/PinnerService$PinRange;,
        Lcom/android/server/PinnerService$PinnedFile;,
        Lcom/android/server/PinnerService$BinderService;,
        Lcom/android/server/PinnerService$PinRangeSourceStream;,
        Lcom/android/server/PinnerService$PinRangeSourceStatic;,
        Lcom/android/server/PinnerService$PinRangeSource;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_CAMERA_PIN_SIZE:I = 0x5000000

.field private static final PAGE_SIZE:I

.field private static final PIN_META_FILENAME:Ljava/lang/String; = "pinlist.meta"

.field private static final TAG:Ljava/lang/String; = "PinnerService"


# instance fields
.field private mBinderService:Lcom/android/server/PinnerService$BinderService;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mPinnedCameraFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mPinnedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

.field private final mShouldPinCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 87
    new-instance v0, Lcom/android/server/PinnerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PinnerService$1;-><init>(Lcom/android/server/PinnerService;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    .line 107
    new-instance v0, Lcom/android/server/PinnerService$PinnerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$PinnerHandler;-><init>(Lcom/android/server/PinnerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PinnerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PinnerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 70
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/PinnerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 70
    invoke-direct {p0}, Lcom/android/server/PinnerService;->snapshotPinnedFiles()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 70
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/PinnerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;
    .param p1, "x1"    # I

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->handlePinCamera(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/PinnerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PinnerService;

    .line 70
    invoke-direct {p0}, Lcom/android/server/PinnerService;->handlePinOnStart()V

    return-void
.end method

.method private static clamp(III)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .line 541
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "userHandle"    # I

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "cameraIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 210
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/high16 v2, 0xd0000

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 214
    .local v2, "cameraResolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 219
    return-object v3

    .line 222
    :cond_0
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v4}, Lcom/android/server/PinnerService;->isResolverActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    return-object v3

    .line 230
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v3
.end method

.method private handlePinCamera(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 181
    iget-boolean v0, p0, Lcom/android/server/PinnerService;->mShouldPinCamera:Z

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->pinCamera(I)Z

    .line 187
    return-void
.end method

.method private handlePinOnStart()V
    .locals 9

    .line 159
    iget-object v0, p0, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "filesToPin":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 163
    .local v4, "fileToPin":Ljava/lang/String;
    const v5, 0x7fffffff

    invoke-static {v4, v5, v2}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v5

    .line 166
    .local v5, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v5, :cond_0

    .line 167
    const-string v6, "PinnerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to pin file = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    goto :goto_1

    .line 171
    :cond_0
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit p0

    .line 162
    .end local v4    # "fileToPin":Ljava/lang/String;
    .end local v5    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .restart local v4    # "fileToPin":Ljava/lang/String;
    .restart local v5    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 175
    .end local v4    # "fileToPin":Ljava/lang/String;
    .end local v5    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :cond_1
    return-void
.end method

.method private isResolverActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .line 201
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "fileName"    # Ljava/lang/String;

    .line 390
    const-string/jumbo v0, "pinlist.meta"

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 391
    .local v0, "pinMetaEntry":Ljava/util/zip/ZipEntry;
    const/4 v1, 0x0

    .line 392
    .local v1, "pinMetaStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 394
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 400
    goto :goto_0

    .line 395
    :catch_0
    move-exception v2

    .line 396
    .local v2, "ex":Ljava/io/IOException;
    const-string v3, "PinnerService"

    const-string v4, "error reading pin metadata \"%s\": pinning as blob"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 397
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 396
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method private static maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .line 370
    const/4 v0, 0x0

    .line 372
    .local v0, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 379
    goto :goto_0

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, "ex":Ljava/io/IOException;
    const-string v2, "PinnerService"

    const-string v3, "could not open \"%s\" as zip: pinning as blob"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 375
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 374
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method private pinCamera(I)Z
    .locals 13
    .param p1, "userHandle"    # I

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 238
    .local v0, "cameraInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 239
    return v1

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/android/server/PinnerService;->unpinCameraApp()V

    .line 248
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 249
    .local v2, "camAPK":Ljava/lang/String;
    const/high16 v3, 0x5000000

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v5

    .line 252
    .local v5, "pf":Lcom/android/server/PinnerService$PinnedFile;
    if-nez v5, :cond_1

    .line 253
    const-string v3, "PinnerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to pin "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return v1

    .line 259
    :cond_1
    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v6, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    const-string v6, "arm"

    .line 265
    .local v6, "arch":Ljava/lang/String;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 266
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v7}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "64"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 270
    :cond_2
    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-static {v7}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "64"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 276
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, "baseCodePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 279
    .local v8, "files":[Ljava/lang/String;
    :try_start_1
    invoke-static {v7, v6}, Ldalvik/system/DexFile;->getDexFileOutputPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v9

    .line 280
    goto :goto_1

    :catch_0
    move-exception v9

    .line 281
    :goto_1
    if-nez v8, :cond_4

    .line 282
    return v4

    .line 286
    :cond_4
    array-length v9, v8

    move-object v10, v5

    move v5, v1

    .end local v5    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    .local v10, "pf":Lcom/android/server/PinnerService$PinnedFile;
    :goto_2
    if-ge v5, v9, :cond_6

    aget-object v11, v8, v5

    .line 287
    .local v11, "file":Ljava/lang/String;
    invoke-static {v11, v3, v1}, Lcom/android/server/PinnerService;->pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v10

    .line 288
    if-eqz v10, :cond_5

    .line 289
    monitor-enter p0

    .line 290
    :try_start_2
    iget-object v12, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 286
    .end local v11    # "file":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 298
    :cond_6
    return v4

    .line 261
    .end local v6    # "arch":Ljava/lang/String;
    .end local v7    # "baseCodePath":Ljava/lang/String;
    .end local v8    # "files":[Ljava/lang/String;
    .end local v10    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    .restart local v5    # "pf":Lcom/android/server/PinnerService$PinnedFile;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private static pinFile(Ljava/lang/String;IZ)Lcom/android/server/PinnerService$PinnedFile;
    .locals 5
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "maxBytesToPin"    # I
    .param p2, "attemptPinIntrospection"    # Z

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "fileAsZip":Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 345
    .local v1, "pinRangeStream":Ljava/io/InputStream;
    if-eqz p2, :cond_0

    .line 346
    :try_start_0
    invoke-static {p0}, Lcom/android/server/PinnerService;->maybeOpenZip(Ljava/lang/String;)Ljava/util/zip/ZipFile;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 349
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 350
    invoke-static {v0, p0}, Lcom/android/server/PinnerService;->maybeOpenPinMetaInZip(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 353
    :cond_1
    const-string v2, "PinnerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pinRangeStream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    if-eqz v1, :cond_2

    .line 356
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStream;

    invoke-direct {v2, v1}, Lcom/android/server/PinnerService$PinRangeSourceStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 357
    :cond_2
    new-instance v2, Lcom/android/server/PinnerService$PinRangeSourceStatic;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    invoke-direct {v2, v3, v4}, Lcom/android/server/PinnerService$PinRangeSourceStatic;-><init>(II)V

    .line 358
    .local v2, "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    :goto_1
    invoke-static {p0, p1, v2}, Lcom/android/server/PinnerService;->pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 361
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 358
    return-object v3

    .line 360
    .end local v2    # "pinRangeSource":Lcom/android/server/PinnerService$PinRangeSource;
    :goto_2
    invoke-static {v1}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    .line 361
    invoke-static {v0}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/Closeable;)V

    throw v2
.end method

.method private static pinFileRanges(Ljava/lang/String;ILcom/android/server/PinnerService$PinRangeSource;)Lcom/android/server/PinnerService$PinnedFile;
    .locals 21
    .param p0, "fileToPin"    # Ljava/lang/String;
    .param p1, "maxBytesToPin"    # I
    .param p2, "pinRangeSource"    # Lcom/android/server/PinnerService$PinRangeSource;

    move-object/from16 v7, p0

    .line 470
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    move-object v2, v0

    .line 471
    .local v2, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v3, -0x1

    .line 472
    .local v3, "address":J
    const/4 v0, 0x0

    move v5, v0

    .line 475
    .local v5, "mapSize":I
    :try_start_0
    sget v6, Landroid/system/OsConstants;->O_RDONLY:I

    sget v10, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v6, v10

    sget v10, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v10, v6

    .line 478
    .local v10, "openFlags":I
    invoke-static {v7, v10, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v6
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 479
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .local v6, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    invoke-static {v6}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v2

    iget-wide v11, v2, Landroid/system/StructStat;->st_size:J

    const-wide/32 v13, 0x7fffffff

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    long-to-int v5, v11

    .line 480
    const-wide/16 v11, 0x0

    int-to-long v13, v5

    :try_start_2
    sget v15, Landroid/system/OsConstants;->PROT_READ:I

    sget v16, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v18, 0x0

    move-object/from16 v17, v6

    invoke-static/range {v11 .. v19}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v11
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 485
    .end local v3    # "address":J
    .local v11, "address":J
    :try_start_3
    new-instance v2, Lcom/android/server/PinnerService$PinRange;

    invoke-direct {v2}, Lcom/android/server/PinnerService$PinRange;-><init>()V

    move-object v13, v2

    .line 486
    .local v13, "pinRange":Lcom/android/server/PinnerService$PinRange;
    const/4 v2, 0x0

    .line 489
    .local v2, "bytesPinned":I
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, p1, v3
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v3, :cond_0

    .line 490
    :try_start_4
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, p1, v3
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int v1, p1, v3

    .line 493
    .end local p1    # "maxBytesToPin":I
    .local v1, "maxBytesToPin":I
    move v15, v1

    goto :goto_2

    .line 533
    .end local v1    # "maxBytesToPin":I
    .end local v2    # "bytesPinned":I
    .end local v10    # "openFlags":I
    .end local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local p1    # "maxBytesToPin":I
    :catchall_0
    move-exception v0

    move/from16 v15, p1

    goto/16 :goto_a

    .line 529
    :catch_0
    move-exception v0

    move/from16 v15, p1

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "address":J
    .end local p1    # "maxBytesToPin":I
    .local v2, "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "address":J
    .local v15, "maxBytesToPin":I
    :goto_0
    move-object v2, v6

    :goto_1
    move-wide v3, v11

    goto/16 :goto_9

    .line 493
    .end local v3    # "address":J
    .end local v15    # "maxBytesToPin":I
    .local v2, "bytesPinned":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v10    # "openFlags":I
    .restart local v11    # "address":J
    .restart local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local p1    # "maxBytesToPin":I
    :cond_0
    move/from16 v15, p1

    .end local v2    # "bytesPinned":I
    .end local p1    # "maxBytesToPin":I
    .local v14, "bytesPinned":I
    .restart local v15    # "maxBytesToPin":I
    :goto_2
    move v14, v2

    :goto_3
    if-ge v14, v15, :cond_3

    move-object/from16 v4, p2

    :try_start_5
    invoke-virtual {v4, v13}, Lcom/android/server/PinnerService$PinRangeSource;->read(Lcom/android/server/PinnerService$PinRange;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 494
    iget v1, v13, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 495
    .local v1, "pinStart":I
    iget v2, v13, Lcom/android/server/PinnerService$PinRange;->length:I

    .line 496
    .local v2, "pinLength":I
    invoke-static {v0, v1, v5}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v1, v3

    .line 497
    sub-int v3, v5, v1

    invoke-static {v0, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 498
    sub-int v3, v15, v14

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 507
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    add-int/2addr v2, v3

    .line 508
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v1, v3

    sub-int/2addr v1, v3

    .line 509
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v3, v2, v3

    if-eqz v3, :cond_1

    .line 510
    sget v3, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    sget v16, Lcom/android/server/PinnerService;->PAGE_SIZE:I

    rem-int v16, v2, v16

    sub-int v3, v3, v16

    add-int/2addr v2, v3

    .line 512
    :cond_1
    sub-int v3, v15, v14

    invoke-static {v0, v2, v3}, Lcom/android/server/PinnerService;->clamp(III)I

    move-result v3

    move v2, v3

    .line 514
    if-lez v2, :cond_2

    .line 521
    int-to-long v8, v1

    add-long/2addr v8, v11

    move/from16 v20, v1

    int-to-long v0, v2

    .end local v1    # "pinStart":I
    .local v20, "pinStart":I
    invoke-static {v8, v9, v0, v1}, Landroid/system/Os;->mlock(JJ)V
    :try_end_5
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 523
    .end local v20    # "pinStart":I
    .restart local v1    # "pinStart":I
    :cond_2
    move/from16 v20, v1

    .end local v1    # "pinStart":I
    .restart local v20    # "pinStart":I
    :goto_4
    add-int/2addr v14, v2

    .line 524
    .end local v2    # "pinLength":I
    .end local v20    # "pinStart":I
    nop

    .line 493
    const/4 v0, 0x0

    goto :goto_3

    .line 533
    .end local v10    # "openFlags":I
    .end local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v14    # "bytesPinned":I
    :catchall_1
    move-exception v0

    goto/16 :goto_a

    .line 529
    :catch_1
    move-exception v0

    goto :goto_0

    .line 526
    .restart local v10    # "openFlags":I
    .restart local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .restart local v14    # "bytesPinned":I
    :cond_3
    move-object/from16 v4, p2

    :cond_4
    :try_start_6
    new-instance v0, Lcom/android/server/PinnerService$PinnedFile;
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v1, v0

    move-wide v2, v11

    move v4, v5

    move v8, v5

    move-object v5, v7

    .end local v5    # "mapSize":I
    .local v8, "mapSize":I
    move-object v9, v6

    move v6, v14

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .local v9, "fd":Ljava/io/FileDescriptor;
    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/android/server/PinnerService$PinnedFile;-><init>(JILjava/lang/String;I)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 527
    .local v0, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    const-wide/16 v1, -0x1

    .line 528
    .end local v11    # "address":J
    .local v1, "address":J
    nop

    .line 533
    invoke-static {v9}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 534
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_5

    .line 535
    int-to-long v3, v8

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 528
    :cond_5
    return-object v0

    .line 533
    .end local v0    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    .end local v1    # "address":J
    .end local v10    # "openFlags":I
    .end local v13    # "pinRange":Lcom/android/server/PinnerService$PinRange;
    .end local v14    # "bytesPinned":I
    .restart local v11    # "address":J
    :catchall_2
    move-exception v0

    move v5, v8

    move-object v6, v9

    goto/16 :goto_a

    .line 529
    :catch_2
    move-exception v0

    move v5, v8

    move-object v2, v9

    goto/16 :goto_1

    .line 533
    .end local v8    # "mapSize":I
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v5    # "mapSize":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    :catchall_3
    move-exception v0

    move v8, v5

    move-object v9, v6

    goto :goto_6

    .line 529
    :catch_3
    move-exception v0

    move v8, v5

    move-object v9, v6

    goto :goto_5

    .line 533
    .end local v15    # "maxBytesToPin":I
    .restart local p1    # "maxBytesToPin":I
    :catchall_4
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    goto :goto_6

    .line 529
    :catch_4
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    .end local v11    # "address":J
    .end local p1    # "maxBytesToPin":I
    .local v2, "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "address":J
    .restart local v15    # "maxBytesToPin":I
    :goto_5
    move-object v2, v9

    move-wide v3, v11

    goto :goto_7

    .line 533
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v15    # "maxBytesToPin":I
    .restart local p1    # "maxBytesToPin":I
    :catchall_5
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    move-wide v11, v3

    .end local v3    # "address":J
    .end local v5    # "mapSize":I
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "maxBytesToPin":I
    .restart local v8    # "mapSize":I
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "address":J
    .restart local v15    # "maxBytesToPin":I
    :goto_6
    goto :goto_a

    .line 529
    .end local v8    # "mapSize":I
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "address":J
    .end local v15    # "maxBytesToPin":I
    .restart local v3    # "address":J
    .restart local v5    # "mapSize":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "maxBytesToPin":I
    :catch_5
    move-exception v0

    move v8, v5

    move-object v9, v6

    move/from16 v15, p1

    move-object v2, v9

    .end local v5    # "mapSize":I
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "maxBytesToPin":I
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    .restart local v8    # "mapSize":I
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v15    # "maxBytesToPin":I
    :goto_7
    goto :goto_9

    .line 533
    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v8    # "mapSize":I
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .end local v15    # "maxBytesToPin":I
    .restart local v5    # "mapSize":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local p1    # "maxBytesToPin":I
    :catchall_6
    move-exception v0

    move-object v9, v6

    move/from16 v15, p1

    move-wide v11, v3

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    goto :goto_a

    .line 529
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    :catch_6
    move-exception v0

    move-object v9, v6

    move/from16 v15, p1

    move-object v2, v9

    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v9    # "fd":Ljava/io/FileDescriptor;
    goto :goto_9

    .line 533
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    :catchall_7
    move-exception v0

    move/from16 v15, p1

    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "address":J
    .end local p1    # "maxBytesToPin":I
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "address":J
    .restart local v15    # "maxBytesToPin":I
    :goto_8
    move-object v6, v2

    move-wide v11, v3

    goto :goto_a

    .line 529
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v11    # "address":J
    .end local v15    # "maxBytesToPin":I
    .restart local v2    # "fd":Ljava/io/FileDescriptor;
    .restart local v3    # "address":J
    .restart local p1    # "maxBytesToPin":I
    :catch_7
    move-exception v0

    move/from16 v15, p1

    .line 530
    .end local p1    # "maxBytesToPin":I
    .local v0, "ex":Landroid/system/ErrnoException;
    .restart local v15    # "maxBytesToPin":I
    :goto_9
    :try_start_8
    const-string v1, "PinnerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not pin file "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 531
    const/4 v1, 0x0

    .line 533
    invoke-static {v2}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 534
    const-wide/16 v8, 0x0

    cmp-long v6, v3, v8

    if-ltz v6, :cond_6

    .line 535
    int-to-long v8, v5

    invoke-static {v3, v4, v8, v9}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    .line 531
    :cond_6
    return-object v1

    .line 533
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :catchall_8
    move-exception v0

    goto :goto_8

    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "address":J
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v11    # "address":J
    :goto_a
    invoke-static {v6}, Lcom/android/server/PinnerService;->safeClose(Ljava/io/FileDescriptor;)V

    .line 534
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-ltz v1, :cond_7

    .line 535
    int-to-long v1, v5

    invoke-static {v11, v12, v1, v2}, Lcom/android/server/PinnerService;->safeMunmap(JJ)V

    :cond_7
    throw v0
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 4
    .param p0, "thing"    # Ljava/io/Closeable;

    .line 575
    if-eqz p0, :cond_0

    .line 577
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "PinnerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignoring error closing resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static safeClose(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 556
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 564
    .local v0, "ex":Landroid/system/ErrnoException;
    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->EBADF:I

    if-eq v1, v2, :cond_0

    .end local v0    # "ex":Landroid/system/ErrnoException;
    goto :goto_0

    .line 565
    .restart local v0    # "ex":Landroid/system/ErrnoException;
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 569
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :cond_1
    :goto_0
    return-void
.end method

.method private static safeMunmap(JJ)V
    .locals 3
    .param p0, "address"    # J
    .param p2, "mapSize"    # J

    .line 546
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->munmap(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v1, "PinnerService"

    const-string/jumbo v2, "ignoring error in unmap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method

.method private declared-synchronized snapshotPinnedFiles()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/PinnerService$PinnedFile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 586
    .local v0, "nrPinnedFiles":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 587
    .local v1, "pinnedFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 588
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-object v1

    .line 584
    .end local v0    # "nrPinnedFiles":I
    .end local v1    # "pinnedFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/PinnerService;
    throw v0
.end method

.method private unpinCameraApp()V
    .locals 3

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 193
    .local v0, "pinnedCameraFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedCameraFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    .line 196
    .local v2, "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    invoke-virtual {v2}, Lcom/android/server/PinnerService$PinnedFile;->close()V

    .line 197
    .end local v2    # "pinnedFile":Lcom/android/server/PinnerService$PinnedFile;
    goto :goto_0

    .line 198
    :cond_0
    return-void

    .line 194
    .end local v0    # "pinnedCameraFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/PinnerService$PinnedFile;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .line 120
    new-instance v0, Lcom/android/server/PinnerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PinnerService$BinderService;-><init>(Lcom/android/server/PinnerService;Lcom/android/server/PinnerService$1;)V

    iput-object v0, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    .line 121
    const-string/jumbo v0, "pinner"

    iget-object v1, p0, Lcom/android/server/PinnerService;->mBinderService:Lcom/android/server/PinnerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PinnerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 122
    const-class v0, Lcom/android/server/PinnerService;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/PinnerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 125
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/4 v1, 0x0

    const/16 v2, 0xfa0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userHandle"    # I

    .line 137
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v1, 0xfa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public update(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "updatedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PinnerService;->getCameraInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 147
    .local v1, "cameraInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "PinnerService"

    const-string v3, "Updating pinned files."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3, v0, v0}, Lcom/android/server/PinnerService$PinnerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 152
    :cond_0
    return-void
.end method
