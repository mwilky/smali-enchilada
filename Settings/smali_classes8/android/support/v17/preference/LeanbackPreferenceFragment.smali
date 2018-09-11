.class public abstract Landroid/support/v17/preference/LeanbackPreferenceFragment;
.super Landroid/support/v17/preference/BaseLeanbackPreferenceFragment;
.source "LeanbackPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroid/support/v17/preference/BaseLeanbackPreferenceFragment;-><init>()V

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 45
    invoke-static {p0}, Landroid/support/v17/preference/LeanbackPreferenceFragmentTransitionHelperApi21;->addTransitions(Landroid/app/Fragment;)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    sget v0, Landroid/support/v17/preference/R$layout;->leanback_preference_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    sget v1, Landroid/support/v17/preference/R$id;->main_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 54
    .local v1, "innerContainer":Landroid/view/ViewGroup;
    invoke-super {p0, p1, v1, p3}, Landroid/support/v17/preference/BaseLeanbackPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "innerView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1, p2}, Landroid/support/v17/preference/BaseLeanbackPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/preference/LeanbackPreferenceFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget v1, Landroid/support/v17/preference/R$id;->decor_title:I

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    .local v1, "decorTitle":Landroid/widget/TextView;
    :goto_0
    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    return-void
.end method
