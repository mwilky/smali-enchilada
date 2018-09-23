.class public abstract Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProfileSettingsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIntentActionString()Ljava/lang/String;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    nop

    invoke-virtual {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/drawer/UserAdapter;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settingslib/drawer/UserAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0d0250

    invoke-virtual {p0, v2}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v3, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;-><init>(Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;Lcom/android/settingslib/drawer/UserAdapter;Landroid/widget/Spinner;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method
