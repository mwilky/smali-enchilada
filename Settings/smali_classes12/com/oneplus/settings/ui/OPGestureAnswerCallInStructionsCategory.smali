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
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    const v0, 0x7f0d0171

    iput v0, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->initViews(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const v0, 0x7f0d0171

    iput v0, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    .line 40
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->initViews(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const v0, 0x7f0d0171

    iput v0, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->initViews(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mContext:Landroid/content/Context;

    .line 52
    iget v0, p0, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPGestureAnswerCallInStructionsCategory;->setLayoutResource(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 58
    return-void
.end method
