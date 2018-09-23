.class Lcom/android/server/OemSceneGameModeMessage$1;
.super Ljava/lang/Object;
.source "OemSceneGameModeMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeMessage;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModeMessage;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneGameModeMessage$1;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeMessage$1;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModeMessage;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeMessage$1;->this$0:Lcom/android/server/OemSceneGameModeMessage;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModeMessage;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModePanel;->showDetail(Z)V

    return-void
.end method
