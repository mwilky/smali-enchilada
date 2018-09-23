.class Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;
.super Ljava/lang/Object;
.source "DevelopmentTilePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnChangeHandler"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    nop

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->addTile(Landroid/content/ComponentName;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTilePreferenceController$OnChangeHandler;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->remTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v4, "DevTilePrefController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to modify QS tile for component "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return v3
.end method
