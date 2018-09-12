.class public Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "MultiSelectListPreferenceDialogFragment.java"


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    .line 30
    iget-boolean v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$002(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
    .param p1, "x1"    # Z

    .line 30
    iput-boolean p1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    .line 30
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    .line 30
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getListPreference()Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {v0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;-><init>()V

    .line 49
    .local v0, "fragment":Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 50
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 60
    invoke-direct {p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->getListPreference()Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v1

    .line 62
    .local v1, "preference":Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    invoke-virtual {v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 69
    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    iput-boolean v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 71
    invoke-virtual {v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 73
    .end local v1    # "preference":Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    goto :goto_0

    .line 63
    .restart local v1    # "preference":Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    .end local v1    # "preference":Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    :cond_1
    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 75
    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    const-string v2, "MultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    const-string v1, "MultiSelectListPreferenceDialogFragment.changed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 77
    const-string v0, "MultiSelectListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 78
    const-string v0, "MultiSelectListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 80
    :goto_0
    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .line 121
    invoke-direct {p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->getListPreference()Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;

    move-result-object v0

    .line 122
    .local v0, "preference":Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 124
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/internal/AbstractMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 128
    .end local v1    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 129
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 99
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    .line 100
    .local v0, "entryCount":I
    new-array v1, v0, [Z

    .line 101
    .local v1, "checkedItems":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 102
    iget-object v3, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    iget-object v4, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    new-instance v3, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;

    invoke-direct {v3, p0}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;-><init>(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)V

    invoke-virtual {p1, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "MultiSelectListPreferenceDialogFragment.values"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    const-string v0, "MultiSelectListPreferenceDialogFragment.changed"

    iget-boolean v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v0, "MultiSelectListPreferenceDialogFragment.entries"

    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 88
    const-string v0, "MultiSelectListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
