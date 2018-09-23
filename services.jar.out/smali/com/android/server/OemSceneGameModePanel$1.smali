.class Lcom/android/server/OemSceneGameModePanel$1;
.super Landroid/app/UserSwitchObserver;
.source "OemSceneGameModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$1;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$1;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$000(Lcom/android/server/OemSceneGameModePanel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$1$1;-><init>(Lcom/android/server/OemSceneGameModePanel$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
