.class public Lnet/oneplus/odm/insight/tracker/AppTracker;
.super Lnet/oneplus/odm/insight/tracker/AbstractTracker;
.source "AppTracker.java"


# static fields
.field public static final APP_ID_CUSTOM_APP_EVENT:Ljava/lang/String; = "1000000005"

.field public static final APP_ID_SYSTEM_APP_EVENT:Ljava/lang/String; = "1000000002"

.field public static final APP_ID_THIRDPARTY_APP_EVENT:Ljava/lang/String; = "1000000004"

.field public static final DATA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EVENT_CRASH:Ljava/lang/String; = "crash"

.field public static final EVENT_END_SESSION:Ljava/lang/String; = "stop"

.field public static final EVENT_START_SESSION:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;-><init>(Landroid/content/Context;)V

    const-string v0, "1000000002"

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;-><init>(Landroid/content/Context;)V

    const-string v0, "1000000002"

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 2

    const-string v0, "stop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-object v0, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    const-string v1, "Context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData;

    invoke-direct {v0}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>()V

    const-string v1, ""

    :try_start_0
    new-instance v2, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData;Landroid/content/Context;)V

    if-eqz p2, :cond_2

    invoke-virtual {v2, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->data(Ljava/util/Map;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v3

    move-object v0, v3

    :goto_0
    if-eqz p2, :cond_3

    const-string v3, "1000000005"

    iput-object v3, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-boolean v3, v2, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->is_system_app:Z

    if-eqz v3, :cond_4

    const-string v3, "1000000002"

    iput-object v3, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, "1000000004"

    iput-object v3, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    sget-object v3, Lnet/oneplus/odm/insight/tracker/AppTracker;->TAG:Ljava/lang/String;

    const-string v4, "onEvent RuntimeException: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "OP_payload"

    invoke-virtual {v0}, Lnet/oneplus/odm/insight/tracker/TrackData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "OP_payload_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "OP_payload_category"

    iget-object v4, p0, Lnet/oneplus/odm/insight/tracker/AppTracker;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/oneplus/odm/insight/tracker/AppTracker;->insertValues(Landroid/content/ContentValues;)V

    return-void
.end method

.method public startSession()V
    .locals 2

    const-string v0, "start"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
