.class public Lcom/android/settings/notification/ZenModeButtonPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field protected static final KEY:Ljava/lang/String; = "zen_mode_settings_button_container"

.field private static final TAG:Ljava/lang/String; = "EnableZenModeButton"


# instance fields
.field private mFragment:Landroid/app/FragmentManager;

.field private mZenButtonOff:Landroid/widget/Button;

.field private mZenButtonOn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "fragment"    # Landroid/app/FragmentManager;

    .line 43
    const-string v0, "zen_mode_settings_button_container"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 44
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mFragment:Landroid/app/FragmentManager;

    .line 45
    return-void
.end method

.method public static synthetic lambda$updateState$0(Lcom/android/settings/notification/ZenModeButtonPreferenceController;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x4f4

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    .line 77
    return-void
.end method

.method public static synthetic lambda$updateZenButtonOnClickListener$1(Lcom/android/settings/notification/ZenModeButtonPreferenceController;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x4f4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 106
    new-instance v0, Lcom/android/settings/notification/SettingsEnableZenModeDialog;

    invoke-direct {v0}, Lcom/android/settings/notification/SettingsEnableZenModeDialog;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mFragment:Landroid/app/FragmentManager;

    const-string v2, "EnableZenModeButton"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/SettingsEnableZenModeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static synthetic lambda$updateZenButtonOnClickListener$2(Lcom/android/settings/notification/ZenModeButtonPreferenceController;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x4f4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    .line 114
    return-void
.end method

.method public static synthetic lambda$updateZenButtonOnClickListener$3(Lcom/android/settings/notification/ZenModeButtonPreferenceController;ILandroid/view/View;)V
    .locals 4
    .param p1, "zenDuration"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x4f4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->setZenModeForDuration(I)V

    .line 121
    return-void
.end method

.method private updateButtons()V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->updateZenButtonOnClickListener()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    nop

    .line 97
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateZenButtonOnClickListener()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->getZenDuration()I

    move-result v0

    .line 101
    .local v0, "zenDuration":I
    packed-switch v0, :pswitch_data_0

    .line 117
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$NQfCfaUFz6J6tbPXZDP09CGnoAo;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$NQfCfaUFz6J6tbPXZDP09CGnoAo;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$16-xvFNOTseGHNtlUJrmr4Oa8o8;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$16-xvFNOTseGHNtlUJrmr4Oa8o8;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$KAk_Mj51Obvq4mW4RobrcR4_CRM;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$KAk_Mj51Obvq4mW4RobrcR4_CRM;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    nop

    .line 123
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "zen_mode_settings_button_container"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a05d5

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->updateZenButtonOnClickListener()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a05d4

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$RnfY8k3LZN005jbH9s0d6akYfFk;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$RnfY8k3LZN005jbH9s0d6akYfFk;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->updateButtons()V

    .line 81
    return-void
.end method
