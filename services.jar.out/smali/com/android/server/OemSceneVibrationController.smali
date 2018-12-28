.class public Lcom/android/server/OemSceneVibrationController;
.super Ljava/lang/Object;
.source "OemSceneVibrationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;,
        Lcom/android/server/OemSceneVibrationController$VibrationMode;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OemSceneVibrationController"

.field private static final VMODE_ALLOWALL:I

.field private static final VMODE_ALLOWWHITE:I

.field private static mAllowWhiteVibration:Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

.field private static sInstance:Lcom/android/server/OemSceneVibrationController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field private vibrationMode:I

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

    sput-boolean v0, Lcom/android/server/OemSceneVibrationController;->DEBUG:Z

    sget-object v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_ALL:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneVibrationController;->VMODE_ALLOWALL:I

    sget-object v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_WHITE:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/android/server/OemSceneVibrationController;->VMODE_ALLOWWHITE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemSceneVibrationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneVibrationController;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.android.dialer"

    const-string v3, "com.android.phone"

    const-string v4, "com.oneplus.camera"

    const-string v5, "com.android.emergency"

    const-string v6, "com.android.server.telecom"

    const-string v7, "com.oneplus.brickmode"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/OemSceneVibrationController;->whiteListInBreathMode:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/OemSceneVibrationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneVibrationController;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/OemSceneVibrationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput v0, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneVibrationController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneVibrationController;->updateVibrationMode(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneVibrationController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneVibrationController;->whiteListInBreathMode:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/OemSceneVibrationController;->sInstance:Lcom/android/server/OemSceneVibrationController;

    if-nez v0, :cond_0

    const-string v0, "OemSceneVibrationController"

    const-string v1, "Not registerOIMCFunctions yet, just let it go!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/OemSceneVibrationController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneVibrationController;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/android/server/OemSceneVibrationController;->canVibrationGoInModes(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canVibrationGoInBreathMode(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneVibrationController;->whiteListInBreathMode:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/OemSceneVibrationController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneVibrationController"

    const-string v1, "canVibrationGo => true in BreathMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "OemSceneVibrationController"

    const-string v1, "forbid vibration in BreathMode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private canVibrationGoInModes(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    iget v0, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    sget v1, Lcom/android/server/OemSceneVibrationController;->VMODE_ALLOWALL:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    sget v2, Lcom/android/server/OemSceneVibrationController;->VMODE_ALLOWWHITE:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/OemSceneVibrationController;->canVibrationGoInBreathMode(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneVibrationController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneVibrationController"

    const-string v2, "canVibrationGo => true for DEFAULT!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneVibrationController;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneVibrationController;->sInstance:Lcom/android/server/OemSceneVibrationController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneVibrationController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneVibrationController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneVibrationController;->sInstance:Lcom/android/server/OemSceneVibrationController;

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneVibrationController;->sInstance:Lcom/android/server/OemSceneVibrationController;

    return-object v0
.end method

.method private updateVibrationMode(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneVibrationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget v2, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    shl-int/2addr v1, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/OemSceneVibrationController;->vibrationMode:I

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
.method public getAllowWhiteVibration()Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneVibrationController;->mAllowWhiteVibration:Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;-><init>(Lcom/android/server/OemSceneVibrationController;)V

    sput-object v0, Lcom/android/server/OemSceneVibrationController;->mAllowWhiteVibration:Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneVibrationController;->mAllowWhiteVibration:Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    return-object v0
.end method
