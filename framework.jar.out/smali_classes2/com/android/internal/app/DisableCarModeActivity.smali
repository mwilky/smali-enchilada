.class public Lcom/android/internal/app/DisableCarModeActivity;
.super Landroid/app/Activity;
.source "DisableCarModeActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisableCarModeActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    :try_start_0
    const-string/jumbo v0, "uimode"

    .line 35
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 36
    .local v0, "uiModeManager":Landroid/app/IUiModeManager;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IUiModeManager;->disableCarMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "uiModeManager":Landroid/app/IUiModeManager;
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisableCarModeActivity"

    const-string v2, "Failed to disable car mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/DisableCarModeActivity;->finish()V

    .line 41
    return-void
.end method
