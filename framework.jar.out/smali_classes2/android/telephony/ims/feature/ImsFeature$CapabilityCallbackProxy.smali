.class public Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/ImsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CapabilityCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    return-void
.end method


# virtual methods
.method public onChangeCapabilityConfigurationError(III)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;->mCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onChangeCapabilityConfigurationError(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsFeature"

    const-string/jumbo v2, "onChangeCapabilityConfigurationError called on dead binder."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
