.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DISALLOW_CONFIG_SIM:Ljava/lang/String; = "no_config_sim"

.field public static final EXTRA_SLOT_ID:Ljava/lang/String; = "slot_id"

.field private static final KEY_CALLS:Ljava/lang/String; = "sim_calls"

.field private static final KEY_CELLULAR_DATA:Ljava/lang/String; = "sim_cellular_data"

.field private static final KEY_SMS:Ljava/lang/String; = "sim_sms"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SIM_CARD_CATEGORY:Ljava/lang/String; = "sim_cards"

.field private static final TAG:Ljava/lang/String; = "SimSettings"


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:[I

.field private mContext:Landroid/content/Context;

.field private mNumSlots:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/support/v7/preference/PreferenceScreen;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    new-array v0, v0, [Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 4

    move v0, p1

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v2, Lcom/android/settings/sim/SimSettings$2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;Ljava/lang/Integer;I)V

    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private isCallStateIdle()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mCallState:[I

    aget v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "SimSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCallStateIdle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateActivitesCategory()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    return-void
.end method

.method private updateAllOptions()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    return-void
.end method

.method private updateCallValues()V
    .locals 6

    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    nop

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    const v4, 0x7f120383

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updateCellularDataValues()V
    .locals 7

    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const v2, 0x7f1203b9

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->isCallStateIdle()Z

    move-result v2

    const-string v3, "ril.cdma.inecmmode"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    move v4, v5

    nop

    :cond_0
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    const v6, 0x7f121046

    invoke-virtual {v0, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v5, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    move v4, v5

    nop

    :cond_2
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateSimSlotValues()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 5

    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const v2, 0x7f12105c

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    const v4, 0x7f121046

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateSubscriptions()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    nop

    :goto_1
    iget v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    new-instance v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/android/settings/sim/SimSettings$SimPreference;->setOrder(I)V

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateAllOptions()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x58

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    nop

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const v1, 0x7f1600ba

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    iput v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    const-string v1, "sim_cards"

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    instance-of v2, p1, Lcom/android/settings/sim/SimSettings$SimPreference;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "slot_id"

    move-object v5, p1

    check-cast v5, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v5}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_1

    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v2, "sim_calls"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_2

    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v2, "sim_sms"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_3

    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return v3
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    nop

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "SimSettings"

    const-string v2, "Register for call state change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
