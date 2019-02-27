.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field public static final ACCESS_RULES:Ljava/lang/String; = "access_rules"

.field public static final ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final ACTION_MANAGE_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REFRESH_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.REFRESH_SUBSCRIPTION_PLANS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SUBSCRIPTION_PLANS_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

.field public static final CARD_ID:Ljava/lang/String; = "card_id"

.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = false

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final DUMMY_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final ENHANCED_4G_MODE_ENABLED:Ljava/lang/String; = "volte_vt_enabled"

.field public static final EXTRA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_INDEX"

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INVALID_PHONE_INDEX:I = -0x1

.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field public static final IS_EMBEDDED:Ljava/lang/String; = "is_embedded"

.field public static final IS_REMOVABLE:Ljava/lang/String; = "is_removable"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static final MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_PROVISIONED:I = 0x0

.field public static final SIM_PROVISIONING_STATUS:Ljava/lang/String; = "sim_provisioning_status"

.field public static final SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field private static final VDBG:Z = false

.field public static final VT_IMS_ENABLED:Ljava/lang/String; = "vt_ims_enabled"

.field public static final WFC_IMS_ENABLED:Ljava/lang/String; = "wfc_ims_enabled"

.field public static final WFC_IMS_MODE:Ljava/lang/String; = "wfc_ims_mode"

.field public static final WFC_IMS_ROAMING_ENABLED:Ljava/lang/String; = "wfc_ims_roaming_enabled"

.field public static final WFC_IMS_ROAMING_MODE:Ljava/lang/String; = "wfc_ims_roaming_mode"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mNetworkPolicy:Landroid/net/INetworkPolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createRefreshSubscriptionIntent(I)Landroid/content/Intent;
    .locals 6

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.telephony.action.REFRESH_SUBSCRIPTION_PLANS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    :cond_2
    return-object v3
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .locals 3

    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public static getDefaultDataSubscriptionId()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static getDefaultSubId()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static getDefaultSubscriptionId()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubscriptionId()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .locals 3

    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method private final getNetworkPolicy()Landroid/net/INetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mNetworkPolicy:Landroid/net/INetworkPolicyManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionManager;->mNetworkPolicy:Landroid/net/INetworkPolicyManager;

    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mNetworkPolicy:Landroid/net/INetworkPolicyManager;

    return-object v0
.end method

.method public static getPhoneId(I)I
    .locals 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 7

    nop

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    iget v3, v2, Landroid/content/res/Configuration;->mnc:I

    if-nez v3, :cond_0

    const v3, 0xffff

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v4, v3}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v5
.end method

.method public static getSimStateForSlotIndex(I)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIndex(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static getSlotIndex(I)I
    .locals 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSlotIndex(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public static getSubId(I)[I
    .locals 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[getSubId]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    return-object v1

    :cond_0
    move-object v0, v1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method private getSubscriptionPlansOwner(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    nop

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, p1, v2}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public static isUsableSubIdValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSlotIndex(I)Z
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 1

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 1

    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    :try_start_0
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-void
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[addSubscriptionInfoRecord]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I

    goto :goto_0

    :cond_2
    const-string v1, "[addSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public allDefaultsSelected()Z
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAccessRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccAccessRule;

    invoke-virtual {v4, v2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    return v6

    :cond_1
    goto :goto_0

    :cond_2
    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an embedded subscription"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 1

    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public clearSubscriptionInfo()V
    .locals 1

    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public createManageSubscriptionIntent(I)Landroid/content/Intent;
    .locals 6

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    :cond_2
    return-object v3
.end method

.method public getAccessibleSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public getActiveSubscriptionIdList()[I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[I

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    new-array v0, v1, [I

    :cond_1
    return-object v0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move-object v0, v1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public getActiveSubscriptionInfoCount()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    return-object v0

    :cond_0
    nop

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    return-object v1

    :cond_0
    move-object v0, v1

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public getAvailableSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAvailableSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method public getDefaultDataPhoneId()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSmsPhoneId()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionPlans(I)Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    nop

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/INetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isActiveSubId(I)Z
    .locals 2

    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isActiveSubId(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1
.end method

.method public isSubscriptionPlansRefreshSupported(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->createRefreshSubscriptionIntent(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<unknown>"

    :goto_0
    :try_start_0
    const-string/jumbo v1, "telephony.registry"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-void
.end method

.method public requestEmbeddedSubscriptionInfoListRefresh()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public requestSubscriptionPlansRefresh(I)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/telephony/SubscriptionManager;->createRefreshSubscriptionIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setDataRoaming(II)I
    .locals 3

    if-ltz p1, :cond_2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0

    :cond_2
    :goto_1
    const-string v0, "[setDataRoaming]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public setDefaultDataSubId(I)V
    .locals 1

    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setDefaultSmsSubId(I)V
    .locals 1

    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 1

    :try_start_0
    const-string v0, "isub"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;IJ)I
    .locals 3

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[setDisplayName]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 3

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0

    :cond_2
    :goto_1
    const-string v0, "[setDisplayNumber]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public setIconTint(II)I
    .locals 3

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[setIconTint]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method public setSubscriptionOverrideCongested(IZJ)V
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v1

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move v2, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v7}, Landroid/net/INetworkPolicyManager;->setSubscriptionOverride(IIIJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSubscriptionOverrideUnmetered(IZJ)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    move v3, p2

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move v1, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkPolicyManager;->setSubscriptionOverride(IIIJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSubscriptionPlans(ILjava/util/List;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicy()Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/telephony/SubscriptionPlan;

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Landroid/net/INetworkPolicyManager;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
