.class Lcom/android/server/OemSceneAnswerWithoutUIController$1;
.super Landroid/database/ContentObserver;
.source "OemSceneAnswerWithoutUIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneAnswerWithoutUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneAnswerWithoutUIController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneAnswerWithoutUIController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneAnswerWithoutUIController;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/android/server/OemSceneAnswerWithoutUIController$1;->this$0:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 68
    iget-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController$1;->this$0:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->addOrRemoveRule(I)V

    .line 69
    return-void
.end method
