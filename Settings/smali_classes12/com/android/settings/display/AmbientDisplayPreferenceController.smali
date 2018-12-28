.class public Lcom/android/settings/display/AmbientDisplayPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AmbientDisplayPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iput-object p3, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->available()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120102

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120103

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->enabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1211a7

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f1211a6

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method
