.class public Lcom/android/settings/display/ScreenZoomPreference;
.super Landroid/support/v7/preference/Preference;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const v0, 0x7f040287

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {v0, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/display/ScreenZoomPreference;->setVisible(Z)V

    invoke-virtual {p0, v2}, Lcom/android/settings/display/ScreenZoomPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v3

    aget-object v4, v2, v3

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
