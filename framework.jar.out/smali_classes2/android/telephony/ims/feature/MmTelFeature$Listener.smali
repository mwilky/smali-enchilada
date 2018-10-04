.class public Landroid/telephony/ims/feature/MmTelFeature$Listener;
.super Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onIncomingCall(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRejectedCall(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    return-void
.end method

.method public onVoiceMessageCountUpdate(I)V
    .locals 0

    return-void
.end method
