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
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mContext:Landroid/content/Context;

    .line 30
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->setLayoutResource(I)V

    .line 31
    return-void
.end method

.method private initSeekBar(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 51
    const v0, 0x7f0a0490

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    const/16 v2, 0x190

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 55
    .local v0, "progress":I
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 56
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference$1;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->initSeekBar(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 49
    return-void
.end method

.method public setOPColorModeSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

    .line 87
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreference;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreference$OPNightModeLevelPreferenceChangeListener;

    .line 88
    return-void
.end method
