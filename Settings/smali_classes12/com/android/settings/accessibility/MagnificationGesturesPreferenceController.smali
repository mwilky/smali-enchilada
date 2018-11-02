.class public Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MagnificationGesturesPreferenceController.java"


# instance fields
.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    return-void
.end method

.method static populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 2

    const-string v0, "preference_key"

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title_res"

    const v1, 0x7f120076

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "summary_res"

    const v1, 0x7f12007d

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "video_resource"

    const v1, 0x7f110001

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    if-eqz v1, :cond_0

    const v0, 0x7f12007b

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x7f120062

    goto :goto_0

    :cond_1
    const v2, 0x7f120061

    :goto_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    const-string v1, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "from_suw"

    iget-boolean v2, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_magnification_gestures_preference_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setIsFromSUW(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->mIsFromSUW:Z

    return-void
.end method
