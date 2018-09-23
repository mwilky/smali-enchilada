.class public Lcom/android/server/connectivity/tethering/SimChangeListener;
.super Landroid/net/util/VersionedBroadcastListener;
.source "SimChangeListener.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/connectivity/tethering/SimChangeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 6

    sget-object v1, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/connectivity/tethering/SimChangeListener;->makeIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    invoke-static {p3}, Lcom/android/server/connectivity/tethering/SimChangeListener;->makeCallback(Ljava/lang/Runnable;)Ljava/util/function/Consumer;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static makeCallback(Ljava/lang/Runnable;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/tethering/SimChangeListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/SimChangeListener$1;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private static makeIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method
