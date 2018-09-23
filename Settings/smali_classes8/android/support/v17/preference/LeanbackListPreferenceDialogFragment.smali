.class public Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;
.super Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;
.source "LeanbackListPreferenceDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;,
        Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;,
        Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;
    }
.end annotation


# static fields
.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_INITIAL_SELECTION:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.initialSelection"

.field private static final SAVE_STATE_INITIAL_SELECTIONS:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.initialSelections"

.field private static final SAVE_STATE_IS_MULTI:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.isMulti"

.field private static final SAVE_STATE_MESSAGE:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.message"

.field private static final SAVE_STATE_TITLE:Ljava/lang/String; = "LeanbackListPreferenceDialogFragment.title"


# instance fields
.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mInitialSelection:Ljava/lang/String;

.field private mInitialSelections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMulti:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    return-object p1
.end method

.method public static newInstanceMulti(Ljava/lang/String;)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    invoke-direct {v1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static newInstanceSingle(Ljava/lang/String;)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    invoke-direct {v1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/support/v7/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    move-object v0, v1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    move-object v0, v1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    move-object v0, v1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelection:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v0, v1, Landroid/support/v14/preference/MultiSelectListPreference;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    move-object v0, v1

    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    move-object v0, v1

    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    move-object v0, v1

    check-cast v0, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    :goto_0
    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Preference must be a ListPreference or MultiSelectListPreference"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v1, "LeanbackListPreferenceDialogFragment.title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.isMulti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    const-string v1, "LeanbackListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    const-string v1, "LeanbackListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget-boolean v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    if-eqz v1, :cond_5

    const-string v1, "LeanbackListPreferenceDialogFragment.initialSelections"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/support/v4/util/ArraySet;

    if-eqz v1, :cond_3

    array-length v0, v1

    nop

    :cond_3
    invoke-direct {v2, v0}, Landroid/support/v4/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    goto :goto_1

    :cond_5
    const-string v0, "LeanbackListPreferenceDialogFragment.initialSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelection:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public onCreateAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 4

    iget-boolean v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;-><init>(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/Set;)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelection:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;-><init>(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget v0, Landroid/support/v17/preference/R$layout;->leanback_list_preference_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    nop

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusScrollStrategy(I)V

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->onCreateAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Landroid/support/v17/preference/R$id;->decor_title:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const v5, 0x102000b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "LeanbackListPreferenceDialogFragment.title"

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "LeanbackListPreferenceDialogFragment.message"

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "LeanbackListPreferenceDialogFragment.isMulti"

    iget-boolean v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "LeanbackListPreferenceDialogFragment.entries"

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "LeanbackListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mMulti:Z

    if-eqz v0, :cond_0

    const-string v0, "LeanbackListPreferenceDialogFragment.initialSelections"

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelections:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "LeanbackListPreferenceDialogFragment.initialSelection"

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->mInitialSelection:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
