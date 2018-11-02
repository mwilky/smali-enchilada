.class public Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateProgress.java"


# static fields
.field private static final ACTION_FINISH_WIZARD:Ljava/lang/String; = "com.android.systemui.action.FINISH_WIZARD"


# instance fields
.field private final mCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private mMoveId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d026d

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.content.pm.extra.MOVE_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    const v0, 0x7f08023e

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->setIcon(I)V

    const v0, 0x7f121155

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->setHeaderText(I[Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->setAuxChecklist()V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/deviceinfo/StorageWizardMigrateProgress;->mMoveId:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getMoveStatus(I)I

    move-result v2

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager$MoveCallback;->onStatusChanged(IIJ)V

    return-void
.end method
