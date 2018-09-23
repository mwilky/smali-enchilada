.class public Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;
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
    name = "AdapterSingle"
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

.field private mSelectedValue:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mEntries:[Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mEntryValues:[Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mSelectedValue:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->getWidgetView()Landroid/widget/Checkable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mSelectedValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->onBindViewHolder(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/preference/R$layout;->leanback_list_preference_item_single:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

    invoke-direct {v2, v1, p0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;-><init>(Landroid/view/View;Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;)V

    return-object v2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;

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
    iget-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    iget-object v2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    invoke-virtual {v2}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    if-ltz v0, :cond_1

    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->mSelectedValue:Ljava/lang/CharSequence;

    :cond_1
    iget-object v3, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->this$0:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;

    invoke-virtual {v3}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->popBackStack()V

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$AdapterSingle;->notifyDataSetChanged()V

    return-void
.end method
