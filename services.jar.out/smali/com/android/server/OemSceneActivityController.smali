.class public Lcom/android/server/OemSceneActivityController;
.super Ljava/lang/Object;
.source "OemSceneActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;,
        Lcom/android/server/OemSceneActivityController$ActivityMode;
    }
.end annotation


# static fields
.field private static final AMODE_ALLOWALL:I

.field private static final AMODE_ALLOWWHITE:I

.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OemSceneActivityController"

.field private static mAllowWhiteActivity:Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

.field private static sInstance:Lcom/android/server/OemSceneActivityController;


# instance fields
.field private activityMode:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field private whiteListInBreathMode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneActivityController;->DEBUG:Z

    sget-object v0, Lcom/android/server/OemSceneActivityController$ActivityMode;->ALLOW_ALL:Lcom/android/server/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneActivityController$ActivityMode;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneActivityController;->AMODE_ALLOWALL:I

    sget-object v0, Lcom/android/server/OemSceneActivityController$ActivityMode;->ALLOW_WHITE:Lcom/android/server/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneActivityController$ActivityMode;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneActivityController;->AMODE_ALLOWWHITE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemSceneActivityController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneActivityController;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.android.dialer"

    const-string v3, "com.android.phone"

    const-string v4, "com.oneplus.camera"

    const-string v5, "com.oneplus.gallery"

    const-string v6, "com.android.emergency"

    const-string v7, "com.android.server.telecom"

    const-string v8, "com.oneplus.brickmode"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/OemSceneActivityController;->whiteListInBreathMode:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/OemSceneActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneActivityController;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/OemSceneActivityController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput v0, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneActivityController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneActivityController;->updateActivityMode(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneActivityController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneActivityController;->whiteListInBreathMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static canActivityGo(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/server/OemSceneActivityController;->sInstance:Lcom/android/server/OemSceneActivityController;

    if-nez v1, :cond_1

    const-string v1, "OemSceneActivityController"

    const-string v2, "Not registerOIMCFunctions yet, just let it go!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/OemSceneActivityController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneActivityController;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneActivityController;->canActivityGoInModes(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method private canActivityGoInBreathMode(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneActivityController;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/OemSceneActivityController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneActivityController"

    const-string v1, "canActivityGo => true in BreathMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneActivityController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneActivityController"

    const-string v1, "forbid Activity in BreathMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private canActivityGoInModes(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    iget v0, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    sget v1, Lcom/android/server/OemSceneActivityController;->AMODE_ALLOWALL:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    sget v2, Lcom/android/server/OemSceneActivityController;->AMODE_ALLOWWHITE:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneActivityController;->canActivityGoInBreathMode(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneActivityController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneActivityController"

    const-string v2, "canActivityGo => true for DEFAULT!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneActivityController;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneActivityController;->sInstance:Lcom/android/server/OemSceneActivityController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneActivityController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneActivityController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneActivityController;->sInstance:Lcom/android/server/OemSceneActivityController;

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneActivityController;->sInstance:Lcom/android/server/OemSceneActivityController;

    return-object v0
.end method

.method private updateActivityMode(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneActivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget v2, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    shl-int/2addr v1, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneActivityController;->activityMode:I

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getAllowWhiteActivity()Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneActivityController;->mAllowWhiteActivity:Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;-><init>(Lcom/android/server/OemSceneActivityController;)V

    sput-object v0, Lcom/android/server/OemSceneActivityController;->mAllowWhiteActivity:Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneActivityController;->mAllowWhiteActivity:Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    return-object v0
.end method
