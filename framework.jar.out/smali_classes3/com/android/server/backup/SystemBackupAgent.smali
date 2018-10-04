.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final ACCOUNT_MANAGER_HELPER:Ljava/lang/String; = "account_manager"

.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PERMISSION_HELPER:Ljava/lang/String; = "permissions"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SHORTCUT_MANAGER_HELPER:Ljava/lang/String; = "shortcut_manager"

.field private static final SLICES_HELPER:Ljava/lang/String; = "slices"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final USAGE_STATS_HELPER:Ljava/lang/String; = "usage_stats"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field public static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field private mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    nop

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "wallpaper"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    nop

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string v2, "wallpaper_info.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "account_sync_settings"

    new-instance v1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "preferred_activities"

    new-instance v1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "notifications"

    new-instance v1, Lcom/android/server/backup/NotificationBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "permissions"

    new-instance v1, Lcom/android/server/backup/PermissionBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "usage_stats"

    new-instance v1, Lcom/android/server/backup/UsageStatsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "shortcut_manager"

    new-instance v1, Lcom/android/server/backup/ShortcutBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "account_manager"

    new-instance v1, Lcom/android/server/backup/AccountManagerBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "slices"

    new-instance v1, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/app/backup/WallpaperBackupHelper;

    const-string v1, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    const-string v0, "wallpaper"

    iget-object v1, p0, Lcom/android/server/backup/SystemBackupAgent;->mWallpaperHelper:Landroid/app/backup/WallpaperBackupHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "system_files"

    new-instance v1, Landroid/app/backup/WallpaperBackupHelper;

    const-string v2, "/data/data/com.android.settings/files/wallpaper"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "account_sync_settings"

    new-instance v1, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "preferred_activities"

    new-instance v1, Lcom/android/server/backup/PreferredActivityBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "notifications"

    new-instance v1, Lcom/android/server/backup/NotificationBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "permissions"

    new-instance v1, Lcom/android/server/backup/PermissionBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/PermissionBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "usage_stats"

    new-instance v1, Lcom/android/server/backup/UsageStatsBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/UsageStatsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "shortcut_manager"

    new-instance v1, Lcom/android/server/backup/ShortcutBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/ShortcutBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "account_manager"

    new-instance v1, Lcom/android/server/backup/AccountManagerBackupHelper;

    invoke-direct {v1}, Lcom/android/server/backup/AccountManagerBackupHelper;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    const-string v0, "slices"

    new-instance v1, Lcom/android/server/backup/SliceBackupHelper;

    invoke-direct {v1, p0}, Lcom/android/server/backup/SliceBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    const-string v0, "SystemBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring file domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v4, "r"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "wallpaper_info.xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "wallpaper"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    const/4 v0, 0x1

    :cond_1
    :goto_0
    move v13, v0

    if-nez v3, :cond_2

    :try_start_0
    const-string v0, "SystemBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping unrecognized system file: [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    move-object v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object v12, v3

    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    if-eqz v13, :cond_3

    const-string v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v4}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v5, v0

    :try_start_2
    const-string v5, "SystemBackupAgent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t restore settings\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    goto :goto_4

    :goto_3
    nop

    if-eqz v13, :cond_4

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_4
    return-void
.end method
