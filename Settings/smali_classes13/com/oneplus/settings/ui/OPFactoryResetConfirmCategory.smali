.class public Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "OPFactoryResetConfirmCategory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mConfirmButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mLayoutResId:I

.field public mOnFactoryResetConfirmListener:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d018c

    iput v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d018c

    iput v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d018c

    iput v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a01dc

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mConfirmButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mConfirmButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mOnFactoryResetConfirmListener:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mOnFactoryResetConfirmListener:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;

    invoke-interface {v0}, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;->onFactoryResetConfirmClick()V

    :cond_0
    return-void
.end method

.method public setOnFactoryResetConfirmListener(Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory;->mOnFactoryResetConfirmListener:Lcom/oneplus/settings/ui/OPFactoryResetConfirmCategory$OnFactoryResetConfirmListener;

    return-void
.end method
