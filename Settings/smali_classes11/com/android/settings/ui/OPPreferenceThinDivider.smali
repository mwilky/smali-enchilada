.class public Lcom/android/settings/ui/OPPreferenceThinDivider;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "OPPreferenceThinDivider.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPPreferenceThinDivider;->initViews(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPPreferenceThinDivider;->initViews(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPPreferenceThinDivider;->initViews(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/android/settings/ui/OPPreferenceThinDivider;->mContext:Landroid/content/Context;

    .line 35
    const v0, 0x7f0d0194

    invoke-virtual {p0, v0}, Lcom/android/settings/ui/OPPreferenceThinDivider;->setLayoutResource(I)V

    .line 37
    return-void
.end method
