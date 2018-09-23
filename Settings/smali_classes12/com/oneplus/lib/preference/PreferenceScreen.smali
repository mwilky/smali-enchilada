.class public final Lcom/oneplus/lib/preference/PreferenceScreen;
.super Lcom/oneplus/lib/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v3, Lcom/oneplus/commonctrl/R$layout;->preference_list_fragment:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_2

    invoke-virtual {v4, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onAttachedToActivity()V

    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;-><init>(Lcom/oneplus/lib/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/lib/preference/Preference;

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->performClick(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v2

    :cond_1
    :goto_0
    return-object v0
.end method
