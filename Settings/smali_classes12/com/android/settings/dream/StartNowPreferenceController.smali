.class public Lcom/android/settings/dream/StartNowPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "StartNowPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "dream_start_now_button_container"

.field private static final TAG:Ljava/lang/String; = "StartNowPreferenceController"


# instance fields
.field private final mBackend:Lcom/android/settingslib/dream/DreamBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dream/StartNowPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-void
.end method

.method public static synthetic lambda$displayPreference$0(Lcom/android/settings/dream/StartNowPreferenceController;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dream/StartNowPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v0}, Lcom/android/settingslib/dream/DreamBackend;->startDreaming()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/dream/StartNowPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a01b0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/dream/-$$Lambda$StartNowPreferenceController$bNNILqA5JAxzjWV5EYdSnVpdHoI;

    invoke-direct {v2, p0}, Lcom/android/settings/dream/-$$Lambda$StartNowPreferenceController$bNNILqA5JAxzjWV5EYdSnVpdHoI;-><init>(Lcom/android/settings/dream/StartNowPreferenceController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "dream_start_now_button_container"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a01b0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/dream/StartNowPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->getWhenToDreamSetting()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
