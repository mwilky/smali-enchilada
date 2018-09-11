.class public Lcom/oneplus/settings/utils/OPPreferenceDividerLine;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPPreferenceDividerLine.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_PREFERENCE_DIVIDER_LINE:Ljava/lang/String; = "preference_divider_line"


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 27
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 28
    invoke-virtual {p0}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;->mPreference:Landroid/support/v7/preference/Preference;

    .line 29
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "preference_divider_line"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 22
    const/4 v0, 0x1

    return v0
.end method
