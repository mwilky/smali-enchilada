.class public interface abstract Lcom/android/settings/overlay/SupportFeatureProvider;
.super Ljava/lang/Object;
.source "SupportFeatureProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/overlay/SupportFeatureProvider$SupportType;
    }
.end annotation


# virtual methods
.method public abstract getCurrentCountryCodeIfHasConfig(I)Ljava/lang/String;
.end method

.method public abstract getNewDeviceIntroUrl(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getSupportEligibleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
.end method

.method public abstract getSupportPhones(Ljava/lang/String;Z)Lcom/android/settings/support/SupportPhone;
.end method

.method public abstract refreshOperationRules()V
.end method

.method public abstract startSupportV2(Landroid/app/Activity;)V
.end method
