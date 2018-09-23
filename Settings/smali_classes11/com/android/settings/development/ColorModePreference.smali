.class public Lcom/android/settings/development/ColorModePreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "ColorModePreference.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/ColorModePreference$ColorModeDescription;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/development/ColorModePreference$ColorModeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/development/ColorModePreference$ColorModeDescription;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const v3, 0x7f03003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03003c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_1

    aget v6, v2, v5

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    new-instance v6, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;-><init>(Lcom/android/settings/development/ColorModePreference$1;)V

    aget v7, v2, v5

    invoke-static {v6, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$102(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;I)I

    aget-object v7, v3, v5

    invoke-static {v6, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$202(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;

    aget-object v7, v4, v5

    invoke-static {v6, v7}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$302(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getColorModeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    iget-object v1, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$100(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Display;->requestColorMode(I)V

    iget-object v1, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public startListening()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public updateCurrentAndSupported()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/development/ColorModePreference;->getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/development/ColorModePreference;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getColorMode()I

    move-result v0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/development/ColorModePreference;->mDescriptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;

    invoke-static {v3}, Lcom/android/settings/development/ColorModePreference$ColorModeDescription;->access$100(Lcom/android/settings/development/ColorModePreference$ColorModeDescription;)I

    move-result v3

    if-ne v3, v0, :cond_0

    iput v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/settings/development/ColorModePreference;->mCurrentIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v1, v3

    nop

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/development/ColorModePreference;->setChecked(Z)V

    return-void
.end method
