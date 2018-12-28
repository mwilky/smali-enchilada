.class public Lcom/android/settings/ui/OPSuwPreferenceDivider;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "OPSuwPreferenceDivider.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/ui/OPSuwPreferenceDivider;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d01cc

    invoke-virtual {p0, v0}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->setLayoutResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d014e

    invoke-virtual {p0, v0}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->setLayoutResource(I)V

    :goto_0
    return-void
.end method
