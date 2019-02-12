.class Lcom/android/server/location/GnssSatelliteBlacklistHelper;
.super Ljava/lang/Object;
.source "GnssSatelliteBlacklistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;
    }
.end annotation


# static fields
.field private static final BLACKLIST_DELIMITER:Ljava/lang/String; = ","

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssBlacklistHelper"


# instance fields
.field private final mCallback:Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssBlacklistHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mCallback:Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    new-instance v0, Lcom/android/server/location/GnssSatelliteBlacklistHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssSatelliteBlacklistHelper$1;-><init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "gnss_satellite_blacklist"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static parseSatelliteBlacklist(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Negative value is invalid."

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method updateSatelliteBlacklist()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gnss_satellite_blacklist"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    sget-boolean v2, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->DEBUG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v2, "GnssBlacklistHelper"

    const-string v5, "Update GNSS satellite blacklist: %s"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-static {v1}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->parseSatelliteBlacklist(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    const-string v3, "GnssBlacklistHelper"

    const-string v4, "blacklist string has odd number of values.Aborting updateSatelliteBlacklist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    new-array v6, v5, [I

    new-array v7, v5, [I

    nop

    :goto_0
    if-ge v3, v5, :cond_3

    mul-int/lit8 v8, v3, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v3

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v4

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->mCallback:Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;

    invoke-interface {v3, v6, v7}, Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;->onUpdateSatelliteBlacklist([I[I)V

    return-void

    :catch_0
    move-exception v2

    const-string v3, "GnssBlacklistHelper"

    const-string v4, "Exception thrown when parsing blacklist string."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
