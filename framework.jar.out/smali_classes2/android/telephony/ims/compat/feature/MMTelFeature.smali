.class public Landroid/telephony/ims/compat/feature/MMTelFeature;
.super Landroid/telephony/ims/compat/feature/ImsFeature;
.source "MMTelFeature.java"


# instance fields
.field private final mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/ImsFeature;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/compat/feature/MMTelFeature$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/feature/MMTelFeature$1;-><init>(Landroid/telephony/ims/compat/feature/MMTelFeature;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/compat/feature/MMTelFeature;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public endSession(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic getBinder()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public final getBinder()Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/MMTelFeature;->mImsMMTelBinder:Lcom/android/ims/internal/IImsMMTelFeature;

    return-object v0
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpened()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFeatureReady()V
    .locals 0

    return-void
.end method

.method public onFeatureRemoved()V
    .locals 0

    return-void
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0

    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public turnOffIms()V
    .locals 0

    return-void
.end method

.method public turnOnIms()V
    .locals 0

    return-void
.end method
