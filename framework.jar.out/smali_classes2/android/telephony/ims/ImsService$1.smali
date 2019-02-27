.class Landroid/telephony/ims/ImsService$1;
.super Landroid/telephony/ims/aidl/IImsServiceController$Stub;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsService;


# direct methods
.method constructor <init>(Landroid/telephony/ims/ImsService;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createMmTelFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/ImsService;->access$100(Landroid/telephony/ims/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public createRcsFeature(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/ImsService;->access$200(Landroid/telephony/ims/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public disableIms(I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsService;->disableIms(I)V

    return-void
.end method

.method public enableIms(I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsService;->enableIms(I)V

    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsService;->getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsService;->getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->getBinder()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public notifyImsServiceReadyForFeatureCreation()V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsService;->readyForFeatureCreation()V

    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsService;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->access$300(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/ImsService$1;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsService;->access$002(Landroid/telephony/ims/ImsService;Landroid/telephony/ims/aidl/IImsServiceControllerListener;)Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    return-void
.end method
