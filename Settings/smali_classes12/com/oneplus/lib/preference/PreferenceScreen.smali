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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 101
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    :cond_0
    const-string v1, "layout_inflater"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 167
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/oneplus/commonctrl/R$layout;->preference_list_fragment:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, "childPrefScreen":Landroid/view/View;
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 170
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 173
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 174
    .local v3, "title":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Dialog;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 175
    .local v4, "dialog":Landroid/app/Dialog;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    invoke-virtual {v4, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 181
    invoke-virtual {v4, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 182
    if-eqz p1, :cond_2

    .line 183
    invoke-virtual {v4, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 187
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 189
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 190
    return-void
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 144
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 148
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .line 152
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

    .line 156
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 157
    return-void

    .line 153
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 133
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;-><init>(Lcom/oneplus/lib/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 194
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 195
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 208
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 209
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/oneplus/lib/preference/Preference;

    if-nez v1, :cond_1

    return-void

    .line 214
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/preference/Preference;

    .line 215
    .local v1, "preference":Lcom/oneplus/lib/preference/Preference;
    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->performClick(Lcom/oneplus/lib/preference/PreferenceScreen;)V

    .line 216
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 239
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    .line 246
    .local v0, "myState":Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 247
    iget-boolean v1, v0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, v0, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 250
    :cond_1
    return-void

    .line 241
    .end local v0    # "myState":Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 242
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 225
    invoke-super {p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 226
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 227
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v2, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;

    invoke-direct {v2, v0}, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 232
    .local v2, "myState":Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 233
    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 234
    return-object v2

    .line 228
    .end local v2    # "myState":Lcom/oneplus/lib/preference/PreferenceScreen$SavedState;
    :cond_1
    :goto_0
    return-object v0
.end method
