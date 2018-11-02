.class public Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;
.super Landroid/support/v7/preference/Preference;
.source "OPGestureAnswerCallInStructionsCategory.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d017a

    iput v0, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d017a

    iput v0, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d017a

    iput v0, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
