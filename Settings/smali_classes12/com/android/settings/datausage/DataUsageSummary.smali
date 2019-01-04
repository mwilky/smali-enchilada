.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/datausage/DataUsageBaseFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/datausage/DataUsageEditController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final KEY_MOBILE_BILLING_CYCLE:Ljava/lang/String; = "billing_preference"

.field public static final KEY_MOBILE_DATA_USAGE:Ljava/lang/String; = "cellular_data_usage"

.field public static final KEY_MOBILE_DATA_USAGE_TOGGLE:Ljava/lang/String; = "data_usage_enable"

.field public static final KEY_MOBILE_USAGE_TITLE:Ljava/lang/String; = "mobile_category"

.field public static final KEY_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict_background"

.field private static final KEY_STATUS_HEADER:Ljava/lang/String; = "status_header"

.field public static final KEY_WIFI_DATA_USAGE:Ljava/lang/String; = "wifi_data_usage"

.field public static final KEY_WIFI_USAGE_TITLE:Ljava/lang/String; = "wifi_category"

.field static final LOGD:Z = false

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "DataUsageSummary"


# instance fields
.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

.field private mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$1;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;-><init>()V

    return-void
.end method

.method private addEthernetSection()V
    .locals 4

    nop

    const v0, 0x7f160036

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private addMobileSection(ILandroid/telephony/SubscriptionInfo;)V
    .locals 3

    nop

    const v0, 0x7f160035

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mobile_category"

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x3fc80000    # 1.5625f

    const v1, 0x3f23d70a    # 0.64f

    const/high16 v6, 0x3fc80000    # 1.5625f

    const v7, 0x3f23d70a    # 0.64f

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lcom/android/settings/datausage/DataUsageSummary;->formatUsage(Landroid/content/Context;Ljava/lang/String;JFF)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method static formatUsage(Landroid/content/Context;Ljava/lang/String;JFF)Ljava/lang/CharSequence;
    .locals 17

    const/16 v0, 0x12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0xa

    move-wide/from16 v3, p2

    invoke-static {v1, v3, v4, v2}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    iget-object v5, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    move/from16 v6, p4

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x12

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v9, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/SpannableString;

    const v7, 0x104022e

    move-object/from16 v10, p0

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v11, "%1$s"

    const-string v12, "^1"

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "%2$s"

    const-string v12, "^2"

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/CharSequence;

    aput-object v2, v7, v9

    iget-object v11, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v11, v7, v12

    invoke-static {v5, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v11, Landroid/text/SpannableString;

    move-object/from16 v13, p1

    invoke-direct {v11, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    move/from16 v15, p5

    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v11}, Landroid/text/SpannableString;->length()I

    move-result v12

    invoke-virtual {v11, v14, v9, v12, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v12

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v9

    invoke-static {v11, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    return-object v8
.end method

.method private getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method private inflatePreferences(I)Landroid/support/v7/preference/Preference;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-object v1
.end method

.method private updateState()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addMobileSection(I)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method addWifiSection()V
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    nop

    const v0, 0x7f16003a

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, v0, v3, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-object v1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120712

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DataUsageSummary"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x25

    return v0
.end method

.method public getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    return-object v0
.end method

.method public getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160034

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v0, v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    const-string v3, "status_header"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "restrict_background"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->removePreference(Ljava/lang/String;)Z

    :cond_2
    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v5, v5, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(I)V

    :cond_4
    const/4 v6, 0x0

    :goto_0
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_5

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-direct {p0, v8, v7}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(ILandroid/telephony/SubscriptionInfo;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(I)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    :cond_7
    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    :cond_9
    :goto_2
    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasEthernet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addEthernetSection()V

    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0168

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isNetworkSettingsApkAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.qualcomm.qti.networksetting"

    const-string v3, "com.qualcomm.qti.networksetting.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "DataUsageSummary"

    const-string v2, "vendor MobileNetworkSettings is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const-string v0, "status_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/DataUsageEditController;Z)V

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method

.method public updateDataUsage()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryController:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method
