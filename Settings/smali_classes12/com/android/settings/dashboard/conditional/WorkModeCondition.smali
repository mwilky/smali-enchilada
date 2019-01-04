.class public Lcom/android/settings/dashboard/conditional/WorkModeCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "WorkModeCondition.java"


# instance fields
.field private mUm:Landroid/os/UserManager;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method private updateUserHandle()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12040c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08022f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    const/16 v0, 0x17f

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12040d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12040e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->setActive(Z)V

    return-void

    :cond_1
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

.method public onPrimaryClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$AccountDashboardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public refreshState()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->updateUserHandle()V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->setActive(Z)V

    return-void
.end method
