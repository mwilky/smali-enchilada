.class public Lcom/android/settings/backup/BackupSettingsActivity;
.super Landroid/app/Activity;
.source "BackupSettingsActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "BackupSettingsActivity"


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/backup/BackupSettingsActivity$1;

    invoke-direct {v0}, Lcom/android/settings/backup/BackupSettingsActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/BackupSettingsActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/settings/backup/BackupSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->isBackupProvidedByManufacturer()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_1

    const-string v1, "BackupSettingsActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "BackupSettingsActivity"

    const-string v2, "No manufacturer settings found, launching the backup settings directly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForBackupSettings()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "BackupSettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to enable activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but couldn\'t: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/backup/BackupSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->finish()V

    goto :goto_1

    :cond_1
    const-string v1, "BackupSettingsActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "BackupSettingsActivity"

    const-string v2, "Manufacturer provided backup settings, showing the preference screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    :cond_3
    iget-object v1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    new-instance v3, Lcom/android/settings/backup/BackupSettingsFragment;

    invoke-direct {v3}, Lcom/android/settings/backup/BackupSettingsFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    :goto_1
    return-void
.end method

.method setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method
