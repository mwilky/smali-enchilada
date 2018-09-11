.class public abstract Landroid/support/v17/preference/LeanbackSettingsFragment;
.super Landroid/app/Fragment;
.source "LeanbackSettingsFragment.java"

# interfaces
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartScreenCallback;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/preference/LeanbackSettingsFragment$DummyFragment;,
        Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;
    }
.end annotation


# static fields
.field private static final PREFERENCE_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v17.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"


# instance fields
.field private final mRootViewOnKeyListener:Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 64
    new-instance v0, Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;-><init>(Landroid/support/v17/preference/LeanbackSettingsFragment;Landroid/support/v17/preference/LeanbackSettingsFragment$1;)V

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackSettingsFragment;->mRootViewOnKeyListener:Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;

    .line 196
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    sget v0, Landroid/support/v17/preference/R$layout;->leanback_settings_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 95
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/preference/LeanbackSettingsRootView;

    .line 96
    .local v0, "rootView":Landroid/support/v17/preference/LeanbackSettingsRootView;
    if-eqz v0, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/preference/LeanbackSettingsRootView;->setOnBackKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onPreferenceDisplayDialog(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .line 103
    if-eqz p1, :cond_2

    .line 108
    instance-of v0, p2, Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    move-object v0, p2

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 110
    .local v0, "listPreference":Landroid/support/v7/preference/ListPreference;
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->newInstanceSingle(Ljava/lang/String;)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    move-result-object v2

    .line 111
    .local v2, "f":Landroid/app/Fragment;
    invoke-virtual {v2, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 112
    invoke-virtual {p0, v2}, Landroid/support/v17/preference/LeanbackSettingsFragment;->startPreferenceFragment(Landroid/app/Fragment;)V

    .line 113
    .end local v0    # "listPreference":Landroid/support/v7/preference/ListPreference;
    goto :goto_0

    .end local v2    # "f":Landroid/app/Fragment;
    :cond_0
    instance-of v0, p2, Landroid/support/v14/preference/MultiSelectListPreference;

    if-eqz v0, :cond_1

    .line 114
    move-object v0, p2

    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference;

    .line 115
    .local v0, "listPreference":Landroid/support/v14/preference/MultiSelectListPreference;
    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->newInstanceMulti(Ljava/lang/String;)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    move-result-object v2

    .line 116
    .restart local v2    # "f":Landroid/app/Fragment;
    invoke-virtual {v2, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 117
    invoke-virtual {p0, v2}, Landroid/support/v17/preference/LeanbackSettingsFragment;->startPreferenceFragment(Landroid/app/Fragment;)V

    .line 118
    .end local v0    # "listPreference":Landroid/support/v14/preference/MultiSelectListPreference;
    nop

    .line 124
    :goto_0
    move-object v0, v2

    .line 126
    .end local v2    # "f":Landroid/app/Fragment;
    .local v0, "f":Landroid/app/Fragment;
    const/4 v1, 0x1

    return v1

    .line 124
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_1
    return v1

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot display dialog for preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Caller must not be null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onPreferenceStartInitialScreen()V
.end method

.method public onResume()V
    .locals 2

    .line 84
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 86
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/preference/LeanbackSettingsRootView;

    .line 87
    .local v0, "rootView":Landroid/support/v17/preference/LeanbackSettingsRootView;
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Landroid/support/v17/preference/LeanbackSettingsFragment;->mRootViewOnKeyListener:Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/preference/LeanbackSettingsRootView;->setOnBackKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 76
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    if-nez p2, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->onPreferenceStartInitialScreen()V

    .line 80
    :cond_0
    return-void
.end method

.method public startImmersiveFragment(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 165
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 166
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    nop

    .line 167
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "android.support.v17.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 168
    .local v1, "preferenceFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    .line 171
    sget v2, Landroid/support/v17/preference/R$id;->settings_preference_fragment_container:I

    new-instance v3, Landroid/support/v17/preference/LeanbackSettingsFragment$DummyFragment;

    invoke-direct {v3}, Landroid/support/v17/preference/LeanbackSettingsFragment$DummyFragment;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 173
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 175
    :cond_1
    sget v2, Landroid/support/v17/preference/R$id;->settings_dialog_container:I

    .line 176
    invoke-virtual {v0, v2, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x0

    .line 177
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 179
    return-void
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 143
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 144
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    nop

    .line 145
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "android.support.v17.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 146
    .local v1, "prevFragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    .line 147
    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Landroid/support/v17/preference/R$id;->settings_preference_fragment_container:I

    const-string v4, "android.support.v17.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"

    .line 149
    invoke-virtual {v2, v3, p1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 152
    :cond_0
    sget v2, Landroid/support/v17/preference/R$id;->settings_preference_fragment_container:I

    const-string v3, "android.support.v17.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"

    .line 153
    invoke-virtual {v0, v2, p1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 156
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 157
    return-void
.end method
