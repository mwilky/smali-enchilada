.class public Landroid/telephony/mbms/StreamingServiceCallback;
.super Ljava/lang/Object;
.source "StreamingServiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/StreamingServiceCallback$StreamingServiceError;
    }
.end annotation


# static fields
.field public static final SIGNAL_STRENGTH_UNAVAILABLE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBroadcastSignalStrengthUpdated(I)V
    .locals 0

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onMediaDescriptionUpdated()V
    .locals 0

    return-void
.end method

.method public onStreamMethodUpdated(I)V
    .locals 0

    return-void
.end method

.method public onStreamStateUpdated(II)V
    .locals 0

    return-void
.end method
