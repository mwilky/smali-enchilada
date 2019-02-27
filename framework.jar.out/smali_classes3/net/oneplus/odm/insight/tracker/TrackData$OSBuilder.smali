.class public Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;
.super Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OSBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/insight/tracker/TrackData;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/TrackData;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/odm/insight/tracker/TrackData;
    .param p2, "context"    # Landroid/content/Context;

    .line 110
    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->this$0:Lnet/oneplus/odm/insight/tracker/TrackData;

    .line 111
    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData;)V

    .line 112
    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->deviceId:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->tag:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->dataList:Ljava/util/Map;

    .line 115
    invoke-static {}, Lnet/oneplus/odm/common/Util;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$OSBuilder;->romVersion:Ljava/lang/String;

    .line 116
    return-void
.end method
