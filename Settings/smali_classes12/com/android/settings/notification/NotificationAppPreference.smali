.class public Lcom/android/settings/notification/NotificationAppPreference;
.super Lcom/android/settings/widget/MasterSwitchPreference;
.source "NotificationAppPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationAppPreference;)Lcom/oneplus/lib/widget/button/OPSwitch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationAppPreference;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppPreference;->persistBoolean(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    const v0, 0x7f0d0217

    return v0
.end method

.method public getSwitch()Lcom/oneplus/lib/widget/button/OPSwitch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

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

    invoke-super {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/notification/NotificationAppPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAppPreference$1;-><init>(Lcom/android/settings/notification/NotificationAppPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0a0559

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/button/OPSwitch;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPSwitch;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPSwitch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/button/OPSwitch;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAppPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Lcom/oneplus/lib/widget/button/OPSwitch;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/button/OPSwitch;->setEnabled(Z)V

    :cond_0
    return-void
.end method
