.class public Lcom/android/settings/password/PasswordRequirementAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PasswordRequirementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mRequirements:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/PasswordRequirementAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/PasswordRequirementAdapter;->onBindViewHolder(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;I)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;->access$000(Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/PasswordRequirementAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/password/PasswordRequirementAdapter$PasswordRequirementViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setRequirements([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/PasswordRequirementAdapter;->mRequirements:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/password/PasswordRequirementAdapter;->notifyDataSetChanged()V

    return-void
.end method
