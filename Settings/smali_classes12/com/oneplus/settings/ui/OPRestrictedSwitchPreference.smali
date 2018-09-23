.class public Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;
.super Lcom/android/settingslib/RestrictedSwitchPreference;
.source "OPRestrictedSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d0190

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setLayoutResource(I)V

    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setWidgetLayoutResource(I)V

    return-void
.end method
