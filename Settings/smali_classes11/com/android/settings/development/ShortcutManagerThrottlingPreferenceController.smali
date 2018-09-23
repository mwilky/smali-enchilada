.class public Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ShortcutManagerThrottlingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final SHORTCUT_MANAGER_RESET_KEY:Ljava/lang/String; = "reset_shortcut_manager_throttling"

.field private static final TAG:Ljava/lang/String; = "ShortcutMgrPrefCtrl"


# instance fields
.field private final mShortcutService:Landroid/content/pm/IShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->getShortCutService()Landroid/content/pm/IShortcutService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    return-void
.end method

.method private getShortCutService()Landroid/content/pm/IShortcutService;
    .locals 2

    :try_start_0
    const-string v0, "shortcut"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private resetShortcutManagerThrottling()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    invoke-interface {v0}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    iget-object v0, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120ece

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShortcutMgrPrefCtrl"

    const-string v2, "Failed to reset rate limiting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "reset_shortcut_manager_throttling"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    const-string v0, "reset_shortcut_manager_throttling"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->resetShortcutManagerThrottling()V

    const/4 v0, 0x1

    return v0
.end method
