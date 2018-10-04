.class public Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.super Ljava/lang/Object;
.source "ImsCallSessionImplBase.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsCallSessionImplBase$State;
    }
.end annotation


# static fields
.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1


# instance fields
.field private mServiceImpl:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceImpl()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 2

    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsVideoCallProvider;->getInterface()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isInCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMultiparty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public merge()V
    .locals 0

    return-void
.end method

.method public reject(I)V
    .locals 0

    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 0

    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 0

    return-void
.end method

.method public final setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {p0, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    return-void
.end method

.method public setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->mServiceImpl:Lcom/android/ims/internal/IImsCallSession;

    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    return-void
.end method

.method public startDtmf(C)V
    .locals 0

    return-void
.end method

.method public stopDtmf()V
    .locals 0

    return-void
.end method

.method public terminate(I)V
    .locals 0

    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    return-void
.end method
