.class public Landroid/telephony/mbms/MbmsStreamingSessionCallback;
.super Ljava/lang/Object;
.source "MbmsStreamingSessionCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/MbmsStreamingSessionCallback$StreamingError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMiddlewareReady()V
    .locals 0

    return-void
.end method

.method public onStreamingServicesUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
