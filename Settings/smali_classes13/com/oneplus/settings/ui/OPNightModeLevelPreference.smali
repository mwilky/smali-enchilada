.class public Lcom/oneplus/settings/ui/OPNightModeLevelPreference;
.super Landroid/support/v7/preference/Preference;
.source "OPNightModeLevelPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final SEEKBAR_MAX:I = 0x258


# instance fields
.field private mContext:Landroid/content/Context;

.field mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mContext:Landroid/content/Context;

    const v0, 0x7f0d018c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->setLayoutResource(I)V

    return-void
.end method

.method private initSeekBar(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    const v0, 0x7f0a04c3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    const/16 v2, 0x190

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->initSeekBar(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

    return-void
.end method
