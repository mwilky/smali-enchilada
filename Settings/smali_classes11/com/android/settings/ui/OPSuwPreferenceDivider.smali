.class public Lcom/android/settings/ui/OPSuwPreferenceDivider;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "OPSuwPreferenceDivider.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->initViews(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->initViews(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->initViews(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    iput-object p1, p0, Lcom/android/settings/ui/OPSuwPreferenceDivider;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const v0, 0x7f0d01be

    invoke-virtual {p0, v0}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->setLayoutResource(I)V

    goto :goto_0

    .line 39
    :cond_0
    const v0, 0x7f0d014a

    invoke-virtual {p0, v0}, Lcom/android/settings/ui/OPSuwPreferenceDivider;->setLayoutResource(I)V

    .line 41
    :goto_0
    return-void
.end method
