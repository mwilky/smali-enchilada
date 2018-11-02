.class public Lcom/android/settings/display/ColorModePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ColorModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;
    }
.end annotation


# static fields
.field private static final KEY_COLOR_MODE:Ljava/lang/String; = "color_mode"

.field private static final SURFACE_FLINGER_TRANSACTION_QUERY_WIDE_COLOR:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ColorModePreference"


# instance fields
.field private mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

.field private final mConfigWrapper:Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "color_mode"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;

    invoke-direct {v0}, Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceController;->mConfigWrapper:Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceController;->mConfigWrapper:Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;

    invoke-virtual {v0}, Lcom/android/settings/display/ColorModePreferenceController$ConfigurationWrapper;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/display/ColorModePreferenceController;->getColorDisplayController()Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAccessibilityTransformActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method getColorDisplayController()Lcom/android/internal/app/ColorDisplayController;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceController;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceController;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceController;->mColorDisplayController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/display/ColorModePreferenceController;->getColorDisplayController()Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1203de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1203e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1203df

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1203e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method
