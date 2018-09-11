.class public abstract Landroid/support/v17/preference/BaseLeanbackPreferenceFragment;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "BaseLeanbackPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Landroid/support/v17/preference/BaseLeanbackPreferenceFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    sget v0, Landroid/support/v17/preference/R$layout;->leanback_preferences_list:I

    .line 42
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 43
    .local v0, "verticalGridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusScrollStrategy(I)V

    .line 45
    new-instance v1, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 47
    return-object v0
.end method
