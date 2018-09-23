.class public Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PhoneNumberPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"


# instance fields
.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private getPhoneNumber(I)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120549

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getFormattedPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private getPreferenceTitle(I)Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1210a5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1210a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone_number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getFormattedPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120549

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v0, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "phone_number"

    return-object v0
.end method

.method getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getPreferenceTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getPhoneNumber(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
