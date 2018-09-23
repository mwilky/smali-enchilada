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

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;-><init>(Landroid/support/v17/preference/LeanbackSettingsFragment;Landroid/support/v17/preference/LeanbackSettingsFragment$1;)V

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackSettingsFragment;->mRootViewOnKeyListener:Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget v0, Landroid/support/v17/preference/R$layout;->leanback_settings_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/preference/LeanbackSettingsRootView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/preference/LeanbackSettingsRootView;->setOnBackKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceDisplayDialog(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/support/v14/preference/PreferenceFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    instance-of v0, p2, Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->newInstanceSingle(Ljava/lang/String;)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v2}, Landroid/support/v17/preference/LeanbackSettingsFragment;->startPreferenceFragment(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Landroid/support/v14/preference/MultiSelectListPreference;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->newInstanceMulti(Ljava/lang/String;)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v2}, Landroid/support/v17/preference/LeanbackSettingsFragment;->startPreferenceFragment(Landroid/app/Fragment;)V

    nop

    :goto_0
    move-object v0, v2

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1

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

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/preference/LeanbackSettingsRootView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackSettingsFragment;->mRootViewOnKeyListener:Landroid/support/v17/preference/LeanbackSettingsFragment$RootViewOnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/preference/LeanbackSettingsRootView;->setOnBackKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->onPreferenceStartInitialScreen()V

    :cond_0
    return-void
.end method

.method public startImmersiveFragment(Landroid/app/Fragment;)V
    .locals 4
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    nop

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "android.support.v17.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    sget v2, Landroid/support/v17/preference/R$id;->settings_preference_fragment_container:I

    new-instance v3, Landroid/support/v17/preference/LeanbackSettingsFragment$DummyFragment;

    invoke-direct {v3}, Landroid/support/v17/preference/LeanbackSettingsFragment$DummyFragment;-><init>()V

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    sget v2, Landroid/support/v17/preference/R$id;->settings_dialog_container:I

    invoke-virtual {v0, v2, p1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;)V
    .locals 5
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    nop

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackSettingsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "android.support.v17.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Landroid/support/v17/preference/R$id;->settings_preference_fragment_container:I

    const-string v4, "android.support.v17.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"

    invoke-virtual {v2, v3, p1, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    :cond_0
    sget v2, Landroid/support/v17/preference/R$id;->settings_preference_fragment_container:I

    const-string v3, "android.support.v17.preference.LeanbackSettingsFragment.PREFERENCE_FRAGMENT"

    invoke-virtual {v0, v2, p1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
