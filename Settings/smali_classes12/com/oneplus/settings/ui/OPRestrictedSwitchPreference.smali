.class public Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;
.super Lcom/android/settingslib/RestrictedSwitchPreference;
.source "OPRestrictedSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->initViews(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->initViews(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->initViews(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    const v0, 0x7f0d0190

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setLayoutResource(I)V

    .line 29
    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    .line 30
    return-void
.end method
