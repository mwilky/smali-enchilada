.class public Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;
.super Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/insight/tracker/TrackData;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/TrackData;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->this$0:Lnet/oneplus/odm/insight/tracker/TrackData;

    invoke-direct {p0, p1}, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData;)V

    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->deviceId:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->className:Ljava/lang/String;

    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getUid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->uid:I

    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getPid(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->pid:I

    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->versionCode:I

    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->versionName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->tag:Ljava/lang/String;

    invoke-static {p2}, Lnet/oneplus/odm/common/Util;->checkIsSystemApp(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->is_system_app:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->dataList:Ljava/util/Map;

    invoke-static {}, Lnet/oneplus/odm/common/Util;->getRomVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/odm/insight/tracker/TrackData$AppBuilder;->romVersion:Ljava/lang/String;

    return-void
.end method
