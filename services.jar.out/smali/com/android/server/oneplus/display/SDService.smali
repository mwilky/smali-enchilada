.class public final Lcom/android/server/oneplus/display/SDService;
.super Lcom/oneplus/display/ISDService$Stub;
.source "SDService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mNativeObject:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SDService"

    sput-object v0, Lcom/android/server/oneplus/display/SDService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/display/ISDService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/oneplus/display/SDService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/oneplus/display/SDService;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/oneplus/display/SDService;->mNativeObject:J

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDestory(J)V
.end method

.method private static native nativeEnableColorBalance(I)V
.end method

.method private static native nativeEnableMode(I)V
.end method

.method private static native nativeSetActiveModesId(I)V
.end method

.method private static native nativeSetDefaultModesId(I)V
.end method

.method private static native nativeSetPanelMode(IZ)V
.end method

.method private static native nativeSetUsrColorBalanceConfig(DDD)V
.end method

.method private static native nativeSetUsrSharpness(JI)V
.end method


# virtual methods
.method public SetActiveModesId(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/oneplus/display/SDService;->nativeSetActiveModesId(I)V

    return-void
.end method

.method public SetDefaultModesId(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/oneplus/display/SDService;->nativeSetDefaultModesId(I)V

    return-void
.end method

.method public SetPanelMode(IZ)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/oneplus/display/SDService;->nativeSetPanelMode(IZ)V

    return-void
.end method

.method public SetUsrColorBalanceConfig(DDD)V
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/android/server/oneplus/display/SDService;->nativeSetUsrColorBalanceConfig(DDD)V

    return-void
.end method

.method public SetUsrSharpness(I)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/oneplus/display/SDService;->mNativeObject:J

    invoke-static {v0, v1, p1}, Lcom/android/server/oneplus/display/SDService;->nativeSetUsrSharpness(JI)V

    return-void
.end method

.method public enableColorBalance(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/oneplus/display/SDService;->nativeEnableColorBalance(I)V

    return-void
.end method

.method public enableMode(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/oneplus/display/SDService;->nativeEnableMode(I)V

    return-void
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/oneplus/display/SDService;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/oneplus/display/SDService;->mNativeObject:J

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/SDService;->nativeDestory(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public systemRunning()V
    .locals 2

    sget-object v0, Lcom/android/server/oneplus/display/SDService;->TAG:Ljava/lang/String;

    const-string v1, "[systemRunning]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
