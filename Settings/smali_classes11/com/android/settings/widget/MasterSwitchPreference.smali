.class public Lcom/android/settings/widget/MasterSwitchPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "MasterSwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    .line 65
    const v0, 0x7f0d0195

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setLayoutResource(I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    .line 58
    const v0, 0x7f0d0195

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setLayoutResource(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    .line 51
    const v0, 0x7f0d0195

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setLayoutResource(I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    .line 44
    const v0, 0x7f0d0195

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setLayoutResource(I)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MasterSwitchPreference;)Lcom/oneplus/lib/widget/button/OPSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/MasterSwitchPreference;

    .line 34
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MasterSwitchPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/MasterSwitchPreference;

    .line 34
    iget-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MasterSwitchPreference;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/MasterSwitchPreference;
    .param p1, "x1"    # Z

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->persistBoolean(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    .line 71
    const v0, 0x7f0d0204

    return v0
.end method

.method public getSwitch()Lcom/oneplus/lib/widget/button/OPSwitch;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 76
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 77
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "widgetView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lcom/android/settings/widget/MasterSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MasterSwitchPreference$1;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_0
    const v1, 0x7f0a051e

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPSwitch;

    iput-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    .line 96
    iget-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    invoke-virtual {p0}, Lcom/android/settings/widget/MasterSwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPSwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    iget-boolean v2, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPSwitch;->setChecked(Z)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    iget-boolean v2, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPSwitch;->setEnabled(Z)V

    .line 101
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mChecked:Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPSwitch;->setChecked(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 126
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    .line 127
    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 115
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mEnableSwitch:Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPSwitch;->setEnabled(Z)V

    .line 119
    :cond_0
    return-void
.end method
