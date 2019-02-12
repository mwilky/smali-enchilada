.class public Lcom/android/server/emergency/EmergencyAffordanceService;
.super Lcom/android/server/SystemService;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    }
.end annotation


# static fields
.field private static final CELL_INFO_STATE_CHANGED:I = 0x2

.field private static final EMERGENCY_SIM_INSERTED_SETTING:Ljava/lang/String; = "emergency_sim_inserted_before"

.field private static final INITIALIZE_STATE:I = 0x1

.field private static final NUM_POLLING_UNTIL_ABORT:I = 0x6

.field private static final NUM_SCANS_UNTIL_ABORT:I = 0x4

.field private static final POLLING_CELL_INFO_INTERVAL:I = 0x2710

.field private static final SUBSCRIPTION_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceService"


# instance fields
.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyAffordanceNeeded:Z

.field private final mEmergencyCallMccNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNetworkNeedsEmergencyAffordance:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPollingComplete:I

.field private mScansCompleted:I

.field private mSimNeedsEmergencyAffordance:Z

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceCapable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$1;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$2;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$3;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$3;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const-string v1, "ecc.test.mcc"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :try_start_0
    const-string v3, "ecc.test.mcc"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "EmergencyAffordanceService"

    const-string/jumbo v5, "mcc should be a number"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "EmergencyAffordanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add a test mcc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    nop

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    nop

    :goto_2
    move v1, v2

    array-length v2, v0

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/emergency/EmergencyAffordanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/emergency/EmergencyAffordanceService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    move-result v0

    return v0
.end method

.method private handleInitializeState()V
    .locals 2

    const-string v0, "EmergencyAffordanceService"

    const-string/jumbo v1, "handleInitializeState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()Z

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateCellInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onStartPollingCellInfo()V

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void
.end method

.method private handleUpdateCellInfo()Z
    .locals 13

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    const-string v1, "EmergencyAffordanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateCellInfo  cellInfos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->isOPSoftSimEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "000"

    const-string/jumbo v4, "sys.radio.mcc"

    const-string v5, "000"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EmergencyAffordanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update mcc from network mccmnc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.oem.intent.action.mcc_changed"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "mcc"

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EmergencyAffordanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcast mcc change intent mcc "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "sys.radio.mcc"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    const/4 v6, 0x0

    instance-of v7, v5, Landroid/telephony/CellInfoGsm;

    if-eqz v7, :cond_2

    move-object v7, v5

    check-cast v7, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v7}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v6

    goto :goto_1

    :cond_2
    instance-of v7, v5, Landroid/telephony/CellInfoLte;

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Landroid/telephony/CellInfoLte;

    invoke-virtual {v7}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    goto :goto_1

    :cond_3
    instance-of v7, v5, Landroid/telephony/CellInfoWcdma;

    if-eqz v7, :cond_4

    move-object v7, v5

    check-cast v7, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v7}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v6

    :cond_4
    :goto_1
    const v7, 0x7fffffff

    const/4 v8, 0x1

    if-eqz v6, :cond_8

    if-eq v6, v7, :cond_8

    iget-object v9, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/server/emergency/EmergencyAffordanceService;->isOPSoftSimEnable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "sys.radio.mcc"

    const-string v11, "000"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.oem.intent.action.mcc_changed"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v10, "mcc"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "EmergencyAffordanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Broadcast mcc change intent mcc "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_5
    iget-object v9, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    const-string v10, "EmergencyAffordanceService"

    const-string/jumbo v11, "receive emergency raido mcc"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-ne v10, v8, :cond_7

    invoke-direct {p0, v6}, Lcom/android/server/emergency/EmergencyAffordanceService;->isMccChange(I)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    const-string v10, "EmergencyAffordanceService"

    const-string/jumbo v11, "set country code from radio mcc"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v6, v2}, Landroid/net/wifi/WifiManager;->setCountryCodeFromMcc(IZ)V

    :cond_7
    const-string/jumbo v10, "sys.radio.mcc"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0, v6}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-direct {p0, v8}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    return v8

    :cond_9
    if-eqz v6, :cond_a

    if-eq v6, v7, :cond_a

    const/4 v3, 0x1

    :cond_a
    goto/16 :goto_0

    :cond_b
    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    goto :goto_2

    :cond_c
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onCellScanFinishedUnsuccessful()V

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService;->setNetworkNeedsEmergencyAffordance(Z)V

    return v2
.end method

.method private handleUpdateSimSubscriptionInfo()Z
    .locals 10

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v0

    move v1, v0

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "EmergencyAffordanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeSubscriptionInfoList is null, return : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    return v1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    const-string v5, "EmergencyAffordanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subinfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_2

    const/4 v1, 0x0

    :cond_2
    iget-object v6, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const-string v7, "EmergencyAffordanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simOperator = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_3
    if-eqz v5, :cond_5

    invoke-direct {p0, v5}, Lcom/android/server/emergency/EmergencyAffordanceService;->mccRequiresEmergencyAffordance(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    goto :goto_0

    :cond_6
    :goto_1
    const-string v3, "EmergencyAffordanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "neededNow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", neededBefore = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService;->setSimNeedsEmergencyAffordance(Z)V

    return v1
.end method

.method private isEmergencyAffordanceNeeded()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isMccChange(I)Z
    .locals 5

    const/4 v0, 0x0

    const-string/jumbo v1, "sys.radio.mcc"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "EmergencyAffordanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMccChange oldMcc =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " newMcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private isOPSoftSimEnable(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.redteamobile.virtual.softsim"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private mccRequiresEmergencyAffordance(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallMccNumbers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onCellScanFinishedUnsuccessful()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    const-string v1, "EmergencyAffordanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScansCompleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onStartPollingCellInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    const-string v1, "EmergencyAffordanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "polling mPollingComplete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    const/4 v3, 0x6

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onStopPollingCellInfo()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onStopPollingCellInfo()V
    .locals 2

    const-string v0, "EmergencyAffordanceService"

    const-string/jumbo v1, "onStopPollingCellInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->removeMessages(I)V

    return-void
.end method

.method private requestCellScan()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setNetworkNeedsEmergencyAffordance(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSimNeedsEmergencyAffordance(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->simNeededAffordanceBefore()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_sim_inserted_before"

    nop

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    :cond_1
    return-void
.end method

.method private simNeededAffordanceBefore()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_sim_inserted_before"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private startScanning()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x410

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private stopScanning()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EmergencyAffordanceService"

    const-string/jumbo v2, "stopScanning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iput v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mScansCompleted:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateEmergencyAffordanceNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "EmergencyAffordanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSimNeedsEmergencyAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mNetworkNeedsEmergencyAffordance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSimNeedsEmergencyAffordance:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_affordance_needed"

    iget-boolean v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->onStopPollingCellInfo()V

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->stopScanning()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4

    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmergencyAffordanceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
