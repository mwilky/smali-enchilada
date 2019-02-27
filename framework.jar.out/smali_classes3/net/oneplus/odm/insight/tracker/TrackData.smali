.class public Lnet/oneplus/odm/insight/tracker/TrackData;
.super Lorg/json/JSONObject;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;,
        Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;,
        Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
    }
.end annotation


# static fields
.field public static final KEY_APP_DETAIL_DATA:Ljava/lang/String; = "oi"

.field public static final KEY_CLASS_NAME:Ljava/lang/String; = "cn"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "id"

.field public static final KEY_EVENT:Ljava/lang/String; = "en"

.field public static final KEY_IS_ROM_DEBUG_VERSION:Ljava/lang/String; = "it"

.field public static final KEY_IS_SYSTEM_APP:Ljava/lang/String; = "sa"

.field public static final KEY_OS_DETAIL_DATA:Ljava/lang/String; = "oi"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "pn"

.field public static final KEY_PROCESS_ID:Ljava/lang/String; = "pi"

.field public static final KEY_ROM_VERSION:Ljava/lang/String; = "rv"

.field public static final KEY_SESSION_ID:Ljava/lang/String; = "si"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "ts"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "pvc"

.field public static final KEY_VERSION_NAME:Ljava/lang/String; = "pvn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/TrackData$Builder;)V
    .locals 3
    .param p1, "builder"    # Lnet/oneplus/odm/insight/tracker/TrackData$Builder;

    .line 36
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    instance-of v0, p1, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    const-string v0, "en"

    iget-object v1, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v0, "pn"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v0, "pvc"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 43
    const-string v0, "oi"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->dataList:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v0, "rv"

    iget-object v1, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->romVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    goto :goto_1

    .line 48
    :cond_0
    instance-of v0, p1, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;

    if-eqz v0, :cond_1

    .line 50
    :try_start_1
    const-string v0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    const-string v0, "pn"

    iget-object v1, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v0, "pvc"

    iget v1, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->versionCode:I

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v0, "en"

    iget-object v1, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v0, "oi"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->dataList:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v0, "rv"

    iget-object v1, p1, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->romVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lnet/oneplus/odm/insight/tracker/TrackData;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    goto :goto_1

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_1
    return-void
.end method
