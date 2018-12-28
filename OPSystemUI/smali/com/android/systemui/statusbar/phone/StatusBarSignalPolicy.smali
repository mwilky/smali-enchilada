.class public Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;
.super Ljava/lang/Object;
.source "StatusBarSignalPolicy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$SignalIconState;,
        Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;
    }
.end annotation


# static fields
.field static final OP_DEBUG:Z


# instance fields
.field private mActivityEnabled:Z

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockLTE:[Z

.field private mBlockMobile:Z

.field private mBlockWifi:Z

.field private mCTA:Z

.field private final mContext:Landroid/content/Context;

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mForceBlockWifi:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mIsAirplaneMode:Z

.field private mIsVoLteEnable:Z

.field private mIsVoWifiEnable:Z

.field private mLTEIconStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private mProvisionState:[I

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mShowNoSim:Z

.field private final mSlotAirplane:Ljava/lang/String;

.field private final mSlotEthernet:Ljava/lang/String;

.field private final mSlotMobile:Ljava/lang/String;

.field private final mSlotVpn:Ljava/lang/String;

.field private final mSlotWifi:Ljava/lang/String;

.field private mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiVisible:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsVoWifiEnable:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsVoLteEnable:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104063b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104064a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104065a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x1040644

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    const v3, 0x1040659

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    invoke-static {p1}, Lcom/android/systemui/util/OPUtils;->hasCtaFeature(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->initProvistionState()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method private currentVpnIconId(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0805c9

    goto :goto_0

    :cond_0
    const v0, 0x7f08086c

    :goto_0
    return v0
.end method

.method private dumpMobileStates()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v1, "StatusBarSignalPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setSubs log:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSlotProvisionStatus(II)I
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v0, :cond_0

    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    :cond_0
    move v0, p2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v2, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    const-string v1, "StatusBarSignalPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    const-string v1, "StatusBarSignalPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get pref, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    const-string v1, "StatusBarSignalPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlotProvisionStatus slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "StatusBarSignalPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected subscription "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private getStateByPhoneId(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v2, v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "StatusBarSignalPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-eq v3, v4, :cond_3

    const-string v3, "StatusBarSignalPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasCorrectSubs SubId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " change from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method private initLTEIcon()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v1, "volte"

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v1, "vowifi"

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    const-string/jumbo v1, "volte"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;-><init>(Ljava/lang/String;)V

    const v1, 0x7f080864

    iput v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    const-string/jumbo v3, "vowifi"

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;-><init>(Ljava/lang/String;)V

    const v3, 0x7f080868

    iput v3, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v5, "vowifi"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v4, "volte"

    invoke-interface {v3, v4, v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v3, "volte"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const-string/jumbo v3, "vowifi"

    invoke-interface {v1, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private initProvistionState()V
    .locals 5

    const-string v0, "StatusBarSignalPolicy"

    const-string v1, "init provision"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v1, -0x1

    nop

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getSlotProvisionStatus(II)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isDataDisable(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    aget v0, v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public static synthetic lambda$UsBELiDs0GJjQ8hYeagcWJmxhFc(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateVpn()V

    return-void
.end method

.method private updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    return-void
.end method

.method private updateVpn()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->currentVpnIconId(Z)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotVpn:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setSignalIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarSignalPolicy$UsBELiDs0GJjQ8hYeagcWJmxhFc;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarSignalPolicy$UsBELiDs0GJjQ8hYeagcWJmxhFc;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "volte"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "vowifi"

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    if-ne v1, v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-ne v2, v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    if-ne v4, v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    if-eq v3, v7, :cond_4

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    const/4 v7, 0x0

    if-nez v3, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mForceBlockWifi:Z

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    move v8, v7

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aput-boolean v5, v8, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    const/4 v8, 0x2

    aput-boolean v6, v7, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v7, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v7, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_4
    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 6

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockEthernet:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    if-lez v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-interface {v1, v5, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-interface {v1, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotEthernet:Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 7

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockAirplane:Z

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-eqz v4, :cond_1

    if-lez v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotAirplane:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->subId:I

    if-gez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_3

    :cond_2
    move v6, v1

    :goto_3
    iput-boolean v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    :cond_3
    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setLTEStatus([Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;

    iget v3, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->imsIndex:I

    aget-object v4, p1, v3

    iget v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    aget-object v4, p1, v3

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockLTE:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->visible:Z

    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->contentDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    iget v6, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->resId:I

    iget-object v7, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->contentDescription:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->slot:Ljava/lang/String;

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$LTEIconState;->visible:Z

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "StatusBarSignalPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setLTEStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mLTEIconStates:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZI[I[ILjava/lang/String;Ljava/lang/String;ZIZZ)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p13

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getState(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v5, :cond_2

    if-eqz v2, :cond_1

    iget v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez v5, :cond_2

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    iget-boolean v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez v8, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v6

    :goto_1
    iput-boolean v8, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v8, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->strengthId:I

    iput v2, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    iget-object v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->contentDescription:Ljava/lang/String;

    move-object/from16 v8, p10

    iput-object v8, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeContentDescription:Ljava/lang/String;

    move/from16 v9, p14

    iput-boolean v9, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->roaming:Z

    if-eqz p5, :cond_4

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v10, :cond_4

    move v10, v7

    goto :goto_2

    :cond_4
    move v10, v6

    :goto_2
    iput-boolean v10, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityIn:Z

    if-eqz p6, :cond_5

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v11, :cond_5

    move v11, v7

    goto :goto_3

    :cond_5
    move v11, v6

    :goto_3
    iput-boolean v11, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->activityOut:Z

    aget v11, p8, v6

    iput v11, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataStrengthId:I

    aget v6, p9, v6

    iput v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceStrengthId:I

    aget v6, p8, v7

    iput v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    aget v6, p9, v7

    iput v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    move/from16 v6, p15

    iput-boolean v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->dataConnected:Z

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    if-eqz v5, :cond_6

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateShowWifiSignalSpacer(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-static {v7, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    :cond_6
    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0

    return-void
.end method

.method public setProvision(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mProvisionState:[I

    aput p2, v0, p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getStateByPhoneId(I)Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->OP_DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "StatusBarSignalPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProvision slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " provision:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->isDataDisable(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->isAbsent()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StatusBarSignalPolicy"

    const-string v1, "setSubs s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->initLTEIcon()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-direct {v7, v8, v5}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    move-object v5, v7

    iput v6, v5, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v6, v4, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v6, 0x1

    :goto_1
    move v4, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-array v1, v4, [Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move v6, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    aput-object v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mShowNoSim:Z

    if-eqz v6, :cond_8

    add-int/lit8 v6, v4, -0x1

    :goto_3
    if-ltz v6, :cond_8

    if-eqz v0, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mCTA:Z

    if-eqz v7, :cond_4

    aget-object v7, v1, v6

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    aget-object v7, v1, v6

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    aget-object v8, v1, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    :goto_4
    new-instance v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    rsub-int/lit8 v8, v6, 0x0

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-direct {v7, v8, v5}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$1;)V

    iput v6, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->phoneId:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockMobile:Z

    if-nez v8, :cond_6

    goto :goto_5

    :cond_6
    move v9, v3

    :goto_5
    iput-boolean v9, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->visible:Z

    nop

    :cond_7
    :goto_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotMobile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mMobileStates:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->access$000(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setMobileIcons(Ljava/lang/String;Ljava/util/List;)V

    const-string v3, "StatusBarSignalPolicy"

    const-string v5, "setSubs e"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->dumpMobileStates()V

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mBlockWifi:Z

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz p4, :cond_1

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz p5, :cond_2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mActivityEnabled:Z

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->copy()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    move-result-object v7

    iput-boolean v2, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->visible:Z

    iget v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->resId:I

    iput-boolean v5, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityIn:Z

    iput-boolean v6, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->activityOut:Z

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mSlotWifi:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->slot:Ljava/lang/String;

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mIsAirplaneMode:Z

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->airplaneSpacerVisible:Z

    iget-object v8, v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->contentDescription:Ljava/lang/String;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->getFirstMobileState()Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;

    move-result-object v8

    if-eqz v8, :cond_4

    iget v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->typeId:I

    if-nez v9, :cond_3

    iget v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedDataTypeId:I

    if-nez v9, :cond_3

    iget v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->stackedVoiceTypeId:I

    if-nez v9, :cond_3

    iget-boolean v9, v8, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$MobileIconState;->showNoSim:Z

    if-eqz v9, :cond_4

    :cond_3
    move v3, v4

    nop

    :cond_4
    iput-boolean v3, v7, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;->signalSpacerVisible:Z

    invoke-direct {v0, v7}, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->updateWifiIconWithState(Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;->mWifiIconState:Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy$WifiIconState;

    return-void
.end method
