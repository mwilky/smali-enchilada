.class public final Lcom/android/settings/dashboard/conditional/NightDisplayCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "NightDisplayCondition.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 2
    .param p1, "manager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 36
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 37
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12040b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080217

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 42
    const/16 v0, 0x1ec

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120408

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120409

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 3
    .param p1, "index"    # I

    .line 80
    if-nez p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 85
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->refreshState()V

    .line 95
    return-void
.end method

.method public onPrimaryClick()V
    .locals 2

    .line 67
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/oneplus/settings/better/OPNightMode;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 72
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 73
    const v1, 0x7f1209b3

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 74
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 76
    return-void
.end method

.method public refreshState()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/NightDisplayCondition;->setActive(Z)V

    .line 90
    return-void
.end method
