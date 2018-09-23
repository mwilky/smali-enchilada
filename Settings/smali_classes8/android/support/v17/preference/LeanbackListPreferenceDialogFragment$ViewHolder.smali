.class public Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LeanbackListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;
    }
.end annotation


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;

.field private final mListener:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;

.field private final mTitleView:Landroid/widget/TextView;

.field private final mWidgetView:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Landroid/support/v17/preference/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->mWidgetView:Landroid/widget/Checkable;

    sget v0, Landroid/support/v17/preference/R$id;->container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->mListener:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWidgetView()Landroid/widget/Checkable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->mWidgetView:Landroid/widget/Checkable;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;->mListener:Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;

    invoke-interface {v0, p0}, Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder$OnItemClickListener;->onItemClick(Landroid/support/v17/preference/LeanbackListPreferenceDialogFragment$ViewHolder;)V

    return-void
.end method
