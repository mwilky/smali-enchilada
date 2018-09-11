.class public Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPSeekbarPreferenceCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;->initViews(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;->initViews(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;->initViews(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const v0, 0x7f0d01ac

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;->setLayoutResource(I)V

    .line 37
    return-void
.end method
