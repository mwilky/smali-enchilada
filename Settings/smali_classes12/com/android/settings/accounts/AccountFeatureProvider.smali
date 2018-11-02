.class public interface abstract Lcom/android/settings/accounts/AccountFeatureProvider;
.super Ljava/lang/Object;
.source "AccountFeatureProvider.java"


# virtual methods
.method public abstract getAccountType()Ljava/lang/String;
.end method

.method public abstract getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
.end method

.method public isAboutPhoneV2Enabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "settings_about_phone_v2"

    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
