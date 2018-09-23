.class public Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final AUTOCLICK_DELAY_STEP:I = 0x64

.field private static final MAX_AUTOCLICK_DELAY:I = 0x3e8

.field private static final MIN_AUTOCLICK_DELAY:I = 0xc8

.field private static final mAutoclickPreferenceSummaries:[I


# instance fields
.field private mDelay:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100003
        0x7f100007
        0x7f100005
        0x7f100004
        0x7f100006
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private delayToSeekBarProgress(I)I
    .locals 1

    add-int/lit16 v0, p1, -0xc8

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method static getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 5

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummaryIndex(I)I

    move-result v0

    sget-object v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAutoclickPreferenceSummaryIndex(I)I
    .locals 2

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_1

    sget-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    const/16 v0, 0x320

    sget-object v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    add-int/lit16 v1, p0, -0xc8

    div-int/2addr v1, v0

    return v1
.end method

.method private seekBarProgressToDelay(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x64

    add-int/lit16 v0, v0, 0xc8

    return v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120709

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x14f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160001

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_delay"

    const/16 v2, 0x258

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "autoclick_delay"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    const v2, 0x7f120054

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    if-ne v0, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_delay"

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->seekBarProgressToDelay(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    const-string v0, "accessibility_autoclick_enabled"

    invoke-virtual {p0, v0, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method
