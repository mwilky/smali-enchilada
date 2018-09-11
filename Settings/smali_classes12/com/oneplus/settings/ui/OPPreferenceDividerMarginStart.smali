.class public Lcom/oneplus/settings/ui/OPPreferenceDividerMarginStart;
.super Landroid/support/v7/preference/Preference;
.source "OPPreferenceDividerMarginStart.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceDividerMarginStart;->initViews(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceDividerMarginStart;->initViews(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPreferenceDividerMarginStart;->initViews(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPreferenceDividerMarginStart;->mContext:Landroid/content/Context;

    .line 42
    const v0, 0x7f0d018b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPreferenceDividerMarginStart;->setLayoutResource(I)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPreferenceDividerMarginStart;->setEnabled(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 51
    return-void
.end method
