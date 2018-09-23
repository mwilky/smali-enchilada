.class public Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LeanbackListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterMulti"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;",
        ">;",
        "Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final mEntries:[Ljava/lang/CharSequence;

.field private final mEntryValues:[Ljava/lang/CharSequence;

.field private final mSelections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntries:[Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntryValues:[Ljava/lang/CharSequence;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->getWidgetView()Landroid/widget/Checkable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->onBindViewHolder(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/preference/R$layout;->leanback_list_preference_item_multi:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

    invoke-direct {v2, v1, p0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;-><init>(Landroid/view/View;Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;)V

    return-object v2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    invoke-virtual {v2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/MultiSelectListPreference;

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    iget-object v4, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-static {v3, v4}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->access$002(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;Ljava/util/Set;)Ljava/util/Set;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->notifyDataSetChanged()V

    return-void
.end method
