.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
.super Ljava/lang/Object;
.source "SimStatusDialogController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final CB_AREA_INFO_RECEIVED_ACTION:Ljava/lang/String; = "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

.field static final CELLULAR_NETWORK_STATE:I = 0x7f0a0150
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CELL_BROADCAST_RECEIVER_APP:Ljava/lang/String; = "com.android.cellbroadcastreceiver"

.field static final CELL_DATA_NETWORK_TYPE_VALUE_ID:I = 0x7f0a014c
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CELL_VOICE_NETWORK_TYPE_VALUE_ID:I = 0x7f0a05a5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EID_INFO_VALUE_ID:I = 0x7f0a01c0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final GET_LATEST_CB_AREA_INFO_ACTION:Ljava/lang/String; = "com.android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

.field static final ICCID_INFO_LABEL_ID:I = 0x7f0a0239
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ICCID_INFO_VALUE_ID:I = 0x7f0a023a
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final IMS_REGISTRATION_STATE_LABEL_ID:I = 0x7f0a0257
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final IMS_REGISTRATION_STATE_VALUE_ID:I = 0x7f0a0258
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final NETWORK_PROVIDER_VALUE_ID:I = 0x7f0a03b8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final OPERATOR_INFO_LABEL_ID:I = 0x7f0a02af
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final OPERATOR_INFO_VALUE_ID:I = 0x7f0a02b0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final PHONE_NUMBER_VALUE_ID:I = 0x7f0a0351
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ROAMING_INFO_VALUE_ID:I = 0x7f0a0455
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SERVICE_STATE_VALUE_ID:I = 0x7f0a049e
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SIGNAL_STRENGTH_LABEL_ID:I = 0x7f0a04b6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SIGNAL_STRENGTH_VALUE_ID:I = 0x7f0a04b7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SimStatusDialogCtrl"


# instance fields
.field private final mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

.field private final mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 3
    .param p1, "dialog"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "slotId"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    .line 136
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    .line 137
    invoke-direct {p0, p3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 138
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 140
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 142
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    const-string v1, "euicc"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 144
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    .line 146
    if-eqz p2, :cond_0

    .line 147
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 149
    :cond_0
    const-string v0, "SimStatusDialogCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 59
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 59
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
    .param p1, "x1"    # I

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateDataState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkProvider(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 5
    .param p1, "slotId"    # I

    .line 415
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 417
    .local v0, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 418
    return-object v1

    .line 420
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 421
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne p1, v4, :cond_1

    .line 422
    return-object v3

    .line 424
    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_1
    goto :goto_0

    .line 425
    :cond_2
    return-object v1
.end method

.method private resetSignalStrength()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const-string v1, "0"

    const v2, 0x7f0a04b7

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method private updateDataState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120e80

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120e6d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "networkStateValue":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v0    # "networkStateValue":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120e6a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    .restart local v0    # "networkStateValue":Ljava/lang/String;
    goto :goto_0

    .line 231
    .end local v0    # "networkStateValue":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120e6b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .restart local v0    # "networkStateValue":Ljava/lang/String;
    goto :goto_0

    .line 234
    .end local v0    # "networkStateValue":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120e6c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0    # "networkStateValue":Ljava/lang/String;
    nop

    .line 237
    :goto_0
    nop

    .line 241
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v2, 0x7f0a0150

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 242
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateEid()V
    .locals 3

    .line 395
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v1}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a01c0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 396
    return-void
.end method

.method private updateIccidNumber()V
    .locals 6

    .line 377
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 378
    .local v0, "subscriptionId":I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 379
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 381
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    const/4 v2, 0x0

    .line 382
    .local v2, "showIccId":Z
    if-eqz v1, :cond_0

    .line 383
    const-string v3, "show_iccid_in_sim_status_bool"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 386
    :cond_0
    const v3, 0x7f0a023a

    if-nez v2, :cond_1

    .line 387
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v5, 0x7f0a0239

    invoke-virtual {v4, v5}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 388
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v4, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 392
    :goto_0
    return-void
.end method

.method private updateImsRegistrationState()V
    .locals 8

    .line 399
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 400
    .local v0, "subscriptionId":I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 401
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 402
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 403
    :cond_0
    const-string v2, "show_ims_registration_status_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 404
    .local v2, "showImsRegState":Z
    :goto_0
    const v3, 0x7f0a0258

    if-eqz v2, :cond_2

    .line 405
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v4

    .line 406
    .local v4, "isImsRegistered":Z
    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    if-eqz v4, :cond_1

    .line 407
    const v7, 0x7f120754

    goto :goto_1

    :cond_1
    const v7, 0x7f120753

    .line 406
    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 408
    .end local v4    # "isImsRegistered":Z
    goto :goto_2

    .line 409
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v5, 0x7f0a0257

    invoke-virtual {v4, v5}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 410
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v4, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 412
    :goto_2
    return-void
.end method

.method private updateLatestAreaInfo()V
    .locals 2

    .line 246
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 248
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    .line 250
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a02af

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a02b0

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 254
    :cond_1
    return-void
.end method

.method private updateNetworkProvider(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 211
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a03b8

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 212
    return-void
.end method

.method private updateNetworkType()V
    .locals 12

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "dataNetworkTypeName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 331
    .local v1, "voiceNetworkTypeName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 332
    .local v2, "subId":I
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    .line 333
    .local v3, "actualDataNetworkType":I
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v4

    .line 334
    .local v4, "actualVoiceNetworkType":I
    if-eqz v3, :cond_0

    .line 335
    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_0
    if-eqz v4, :cond_1

    .line 338
    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    :cond_1
    const/4 v5, 0x0

    move v6, v5

    .line 343
    .local v6, "show4GForLTE":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    const-string v8, "com.android.systemui"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 345
    .local v7, "con":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "config_show4GForLTE"

    const-string v10, "bool"

    const-string v11, "com.android.systemui"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 347
    .local v8, "id":I
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v9

    .line 350
    .end local v7    # "con":Landroid/content/Context;
    .end local v8    # "id":I
    goto :goto_0

    .line 348
    :catch_0
    move-exception v7

    .line 349
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "SimStatusDialogCtrl"

    const-string v9, "NameNotFoundException for show4GForLTE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v6, :cond_3

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/16 v8, 0x54

    aput v8, v7, v5

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 356
    const-string v5, "LTE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 357
    const-string v0, "4G"

    .line 359
    :cond_2
    const-string v5, "LTE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 360
    const-string v1, "4G"

    .line 364
    :cond_3
    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v7, 0x7f0a05a5

    invoke-virtual {v5, v7, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 365
    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v7, 0x7f0a014c

    invoke-virtual {v5, v7, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method private updatePhoneNumber()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 216
    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0351

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method private updateRoamingStatus(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 369
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    const v1, 0x7f0a0455

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f120e7a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f120e7b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 374
    :goto_0
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 257
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 258
    .local v0, "state":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->resetSignalStrength()V

    .line 264
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 278
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f120e80

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 275
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f120e7e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "serviceStateValue":Ljava/lang/String;
    goto :goto_0

    .line 272
    .end local v1    # "serviceStateValue":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f120e7f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .restart local v1    # "serviceStateValue":Ljava/lang/String;
    goto :goto_0

    .line 266
    .end local v1    # "serviceStateValue":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f120e7d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    .restart local v1    # "serviceStateValue":Ljava/lang/String;
    nop

    .line 278
    :goto_0
    nop

    .line 282
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v3, 0x7f0a049e

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 283
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 14
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 286
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 287
    .local v0, "subscriptionId":I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 288
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 290
    .local v1, "carrierConfig":Landroid/os/PersistableBundle;
    const/4 v2, 0x1

    .line 291
    .local v2, "showSignalStrength":Z
    if-eqz v1, :cond_0

    .line 292
    const-string v3, "show_signal_strength_in_sim_status_bool"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 295
    :cond_0
    const v3, 0x7f0a04b7

    if-nez v2, :cond_1

    .line 296
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v5, 0x7f0a04b6

    invoke-virtual {v4, v5}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 297
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v4, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 298
    return-void

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 303
    .local v4, "state":I
    const/4 v5, 0x1

    if-eq v5, v4, :cond_5

    const/4 v6, 0x3

    if-ne v6, v4, :cond_2

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getDbm(Landroid/telephony/SignalStrength;)I

    move-result v6

    .line 309
    .local v6, "signalDbm":I
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getAsuLevel(Landroid/telephony/SignalStrength;)I

    move-result v7

    .line 311
    .local v7, "signalAsu":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    .line 312
    const/4 v6, 0x0

    .line 315
    :cond_3
    if-ne v7, v8, :cond_4

    .line 316
    const/4 v7, 0x0

    .line 319
    :cond_4
    iget-object v8, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f12104d

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 320
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    .line 319
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 321
    return-void

    .line 305
    .end local v6    # "signalDbm":I
    .end local v7    # "signalAsu":I
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method getAsuLevel(Landroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 449
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v0

    return v0
.end method

.method getCurrentServiceState()Landroid/telephony/ServiceState;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 431
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 430
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method getDbm(Landroid/telephony/SignalStrength;)I
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 438
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    .local v0, "signalDbm":I
    goto :goto_0

    .line 441
    .end local v0    # "signalDbm":I
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .line 443
    .restart local v0    # "signalDbm":I
    :goto_0
    return v0
.end method

.method getPhoneNumber()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, v1}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 454
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 455
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Ljava/lang/Integer;)V

    .line 454
    return-object v0
.end method

.method getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscriptionId"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 153
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateEid()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 162
    .local v0, "serviceState":Landroid/telephony/ServiceState;
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkProvider(Landroid/telephony/ServiceState;)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updatePhoneNumber()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateLatestAreaInfo()V

    .line 165
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkType()V

    .line 168
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateIccidNumber()V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateImsRegistrationState()V

    .line 171
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 205
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "getLatestIntent":Landroid/content/Intent;
    const-string v1, "com.android.cellbroadcastreceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 194
    .end local v0    # "getLatestIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
