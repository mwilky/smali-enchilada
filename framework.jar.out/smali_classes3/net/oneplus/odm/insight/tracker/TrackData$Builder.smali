.class public abstract Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
.super Ljava/lang/Object;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/odm/insight/tracker/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Builder"
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field dataList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field deviceId:Ljava/lang/String;

.field is_system_app:Z

.field packageName:Ljava/lang/String;

.field pid:I

.field romVersion:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lnet/oneplus/odm/insight/tracker/TrackData;

.field uid:I

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/oneplus/odm/insight/tracker/TrackData;)V
    .locals 0

    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->this$0:Lnet/oneplus/odm/insight/tracker/TrackData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lnet/oneplus/odm/insight/tracker/TrackData;
    .locals 1

    new-instance v0, Lnet/oneplus/odm/insight/tracker/TrackData;

    invoke-direct {v0, p0}, Lnet/oneplus/odm/insight/tracker/TrackData;-><init>(Lnet/oneplus/odm/insight/tracker/TrackData$Builder;)V

    return-object v0
.end method

.method public data(Ljava/util/Map;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/oneplus/odm/insight/tracker/TrackData$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->dataList:Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lnet/oneplus/odm/insight/tracker/TrackData$Builder;
    .locals 0

    iput-object p1, p0, Lnet/oneplus/odm/insight/tracker/TrackData$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
