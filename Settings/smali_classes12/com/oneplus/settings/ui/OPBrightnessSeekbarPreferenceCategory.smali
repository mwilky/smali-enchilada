.class public Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;
.super Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;
.source "OPBrightnessSeekbarPreferenceCategory.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OPBrightnessSeekbarPreferenceCategory"


# instance fields
.field private isManuallyTouchingSeekbar:Z

.field private mBrightness:I

.field private mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

.field private mContext:Landroid/content/Context;

.field private mDefaultBacklight:I

.field private mDefaultBacklightForVr:I

.field private mMaximumBacklight:I

.field private mMaximumBacklightForVr:I

.field private mMinimumBacklight:I

.field private mMinimumBacklightForVr:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private max:I

.field private min:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklight:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklight:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklightForVr:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklightForVr:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklightForVr:I

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isInVrMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_for_vr"

    iget v6, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklightForVr:I

    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    iget v6, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mDefaultBacklight:I

    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    :goto_0
    if-eqz v1, :cond_1

    iget v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklightForVr:I

    iput v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:I

    iget v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklightForVr:I

    iput v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->max:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMinimumBacklight:I

    iput v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:I

    iget v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mMaximumBacklight:I

    iput v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->max:I

    :goto_1
    iget v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->min:I

    iget v4, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->max:I

    invoke-static {v2, v3, v4}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    return-void
.end method


# virtual methods
.method public getBrightness()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    return v0
.end method

.method isInVrMode()Z
    .locals 3

    :try_start_0
    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "OPBrightnessSeekbarPreferenceCategory"

    const-string v2, "Failed to check vr mode!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/OPSeekbarPreferenceCategory;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a03c2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const-string v0, "OPBrightnessSeekbarPreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekbar progress arg1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSeekBar.getProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->onOPBrightValueChanged(II)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "OPBrightnessSeekbarPreferenceCategory"

    const-string v1, "start tracking seekbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->onOPBrightValueStartTrackingTouch(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const-string v0, "OPBrightnessSeekbarPreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop tracking seekbar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->isManuallyTouchingSeekbar:Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;->saveBrightnessDataBase(I)V

    :cond_0
    return-void
.end method

.method public setBrightness(I)V
    .locals 3

    iput p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    const-string v0, "OPBrightnessSeekbarPreferenceCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekbar brightness after set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->notifyChanged()V

    return-void
.end method

.method public setCallback(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->mCallback:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;

    return-void
.end method
