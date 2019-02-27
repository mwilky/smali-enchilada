.class public Lnet/oneplus/odm/insight/tracker/OSTracker;
.super Lnet/oneplus/odm/insight/tracker/AbstractTracker;
.source "OSTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/insight/tracker/OSTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;-><init>(Landroid/content/Context;)V

    const-string v0, "1000000003"

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/AbstractTracker;-><init>(Landroid/content/Context;)V

    const-string v0, "1000000003"

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mAppId:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    sget-object v0, Lnet/oneplus/odm/insight/tracker/OSTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OS Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData;

    invoke-direct {v0}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>()V

    iget-object v1, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    sget-object v1, Lnet/oneplus/odm/insight/tracker/OSTracker;->TAG:Ljava/lang/String;

    const-string v2, "Context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData;Landroid/content/Context;)V

    if-eqz p2, :cond_2

    invoke-virtual {v1, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->data(Ljava/util/Map;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->build()Lnet/oneplus/odm/insight/tracker/TrackData;

    move-result-object v0

    :goto_0
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

    iget-object v4, p0, Lnet/oneplus/odm/insight/tracker/OSTracker;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;->insertValues(Landroid/content/ContentValues;)V

    return-void
.end method
