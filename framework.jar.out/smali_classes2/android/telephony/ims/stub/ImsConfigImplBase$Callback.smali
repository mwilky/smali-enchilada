.class public Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;
.super Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;
.source "ImsConfigImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsConfigImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsConfigCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(II)V
    .locals 0

    return-void
.end method

.method public onConfigChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onIntConfigChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;->onConfigChanged(II)V

    return-void
.end method

.method public final onStringConfigChanged(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;->onConfigChanged(ILjava/lang/String;)V

    return-void
.end method
