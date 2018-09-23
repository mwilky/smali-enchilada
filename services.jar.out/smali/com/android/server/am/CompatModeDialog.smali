.class public final Lcom/android/server/am/CompatModeDialog;
.super Landroid/app/Dialog;
.source "CompatModeDialog.java"


# instance fields
.field final mAlwaysShow:Landroid/widget/CheckBox;

.field final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field final mCompatEnabled:Landroid/widget/Switch;

.field final mHint:Landroid/view/View;

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    const v0, 0x1030070

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->requestFeature(I)Z

    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iput-object p1, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    const v0, 0x1090033

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->setContentView(I)V

    const v0, 0x102020b

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    new-instance v1, Lcom/android/server/am/CompatModeDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/CompatModeDialog$1;-><init>(Lcom/android/server/am/CompatModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x10201b3

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/server/am/CompatModeDialog$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/CompatModeDialog$2;-><init>(Lcom/android/server/am/CompatModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x10203a1

    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mHint:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->updateControls()V

    return-void
.end method


# virtual methods
.method updateControls()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    iget-object v2, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    iget-object v4, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/server/am/CompatModeDialog;->mHint:Landroid/view/View;

    if-eqz v2, :cond_1

    const/4 v3, 0x4

    nop

    :cond_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
