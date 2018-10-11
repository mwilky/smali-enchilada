.class public Lcom/oneplus/aod/MdmLogger;
.super Ljava/lang/Object;
.source "MdmLogger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MdmLogger"

.field private static mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sInstance:Lcom/oneplus/aod/MdmLogger;

.field private static sTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sTouchGear:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/aod/MdmLogger;->sInstance:Lcom/oneplus/aod/MdmLogger;

    sput-object v0, Lcom/oneplus/aod/MdmLogger;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/aod/MdmLogger;->sTouchGear:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-direct {v0, p1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/aod/MdmLogger;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v0, Lcom/oneplus/aod/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MdmLogger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/aod/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/oneplus/aod/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/oneplus/aod/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/aod/MdmLogger;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lnet/oneplus/odm/insight/tracker/AppTracker;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/MdmLogger;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/oneplus/aod/MdmLogger;->sInstance:Lcom/oneplus/aod/MdmLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/aod/MdmLogger;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/MdmLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/aod/MdmLogger;->sInstance:Lcom/oneplus/aod/MdmLogger;

    :cond_0
    const-string v0, "MdmLogger"

    const-string v1, "MdmLogger is initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneplus/aod/MdmLogger;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/aod/MdmLogger$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/oneplus/aod/MdmLogger$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
