.class public Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPWiFiCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_WIFI_CALLING:Ljava/lang/String; = "wifi_calling"


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "wifi_calling"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_calling"

    return-object v0
.end method
