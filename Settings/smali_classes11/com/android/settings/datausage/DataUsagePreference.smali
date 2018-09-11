.class public Lcom/android/settings/datausage/DataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "DataUsagePreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTitleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10101e1

    aput v2, v0, v1

    .line 43
    const v2, 0x7f040287

    const v3, 0x101008e

    invoke-static {p1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v2

    .line 41
    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 4

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "network_template"

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    const-string v1, "sub_id"

    iget v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const-class v2, Lcom/android/settings/datausage/DataUsageList;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 84
    .local v1, "launcher":Lcom/android/settings/core/SubSettingLauncher;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "settings_data_usage_v2"

    invoke-static {v2, v3}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const v2, 0x7f120131

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    goto :goto_0

    .line 88
    :cond_0
    iget v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    goto :goto_0

    .line 91
    :cond_1
    iget v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    if-lez v2, :cond_2

    .line 92
    iget v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    .line 97
    :goto_0
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "subId"    # I
    .param p3, "services"    # Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 53
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 54
    iput p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSubId:I

    .line 55
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "controller":Lcom/android/settingslib/net/DataUsageController;
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    .line 57
    .local v1, "usageInfo":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "settings_data_usage_v2"

    invoke-static {v2, v3}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const v6, 0x7f1204e4

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const v2, 0x7f120131

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsagePreference;->setTitle(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsagePreference;->setTitle(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v7, v8, v9}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v4

    iget-object v4, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    aput-object v4, v5, v3

    .line 62
    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_1
    iget v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsagePreference;->setTitle(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v5, v5, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v7, v8, v9}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v4

    iget-object v4, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    aput-object v4, v5, v3

    .line 68
    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsagePreference;->setIntent(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
