.class public Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageWizardFormatConfirm.java"


# static fields
.field private static final TAG_FORMAT_WARNING:Ljava/lang/String; = "format_warning"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "format_forget_uuid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "format_private"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format_forget_uuid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "format_private"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "format_warning"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showPrivate(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static showPublic(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static showPublic(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x55f

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format_forget_uuid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "format_private"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v2}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v6

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    nop

    const v8, 0x7f121102

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/CharSequence;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v8, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    nop

    const v8, 0x7f121101

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v8, v10}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    nop

    const v8, 0x7f121100

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v8, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$c4jIKjriuaEtVR7ERojcHILapk8;

    invoke-direct {v8, v0, v2, v3, v4}, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$c4jIKjriuaEtVR7ERojcHILapk8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v7, v5, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method
