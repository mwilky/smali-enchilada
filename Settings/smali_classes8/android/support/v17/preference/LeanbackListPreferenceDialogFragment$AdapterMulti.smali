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
    .param p1, "this$0"    # Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;
    .param p2, "entries"    # [Ljava/lang/CharSequence;
    .param p3, "entryValues"    # [Ljava/lang/CharSequence;
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

    .line 243
    .local p4, "initialSelections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 244
    iput-object p2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntries:[Ljava/lang/CharSequence;

    .line 245
    iput-object p3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntryValues:[Ljava/lang/CharSequence;

    .line 246
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    .line 247
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 266
    iget-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;
    .param p2, "position"    # I

    .line 259
    invoke-virtual {p1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->getWidgetView()Landroid/widget/Checkable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p2

    .line 260
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 259
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 261
    invoke-virtual {p1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 235
    check-cast p1, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->onBindViewHolder(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 251
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 252
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/v17/preference/R$layout;->leanback_list_preference_item_multi:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 254
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

    invoke-direct {v2, v1, p0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;-><init>(Landroid/view/View;Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;)V

    return-object v2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 235
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;)V
    .locals 5
    .param p1, "viewHolder"    # Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

    .line 271
    invoke-virtual {p1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 272
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "entry":Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_1
    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_0
    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    .line 282
    invoke-virtual {v2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/MultiSelectListPreference;

    .line 284
    .local v2, "multiSelectListPreference":Landroid/support/v14/preference/MultiSelectListPreference;
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 286
    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    iget-object v4, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-static {v3, v4}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->access$002(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;Ljava/util/Set;)Ljava/util/Set;

    goto :goto_1

    .line 289
    :cond_2
    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 290
    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_3
    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->mSelections:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterMulti;->notifyDataSetChanged()V

    .line 297
    return-void
.end method
