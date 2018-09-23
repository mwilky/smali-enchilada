.class Lcom/android/server/OemSceneGameModeDialog$1;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog;->updateNotifyType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModeDialog;

.field final synthetic val$notifyStyle:I


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$1;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iput p2, p0, Lcom/android/server/OemSceneGameModeDialog$1;->val$notifyStyle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$1;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$1;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$000(Lcom/android/server/OemSceneGameModeDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, -0xf0

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog$1;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v2}, Lcom/android/server/OemSceneGameModeDialog;->access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog$1;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v2}, Lcom/android/server/OemSceneGameModeDialog;->access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;

    move-result-object v2

    iget v4, p0, Lcom/android/server/OemSceneGameModeDialog$1;->val$notifyStyle:I

    invoke-virtual {v2, v4}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->updateView(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog$1;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v2}, Lcom/android/server/OemSceneGameModeDialog;->access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog$1;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v2}, Lcom/android/server/OemSceneGameModeDialog;->access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog$1;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v3}, Lcom/android/server/OemSceneGameModeDialog;->access$000(Lcom/android/server/OemSceneGameModeDialog;)Landroid/view/View;

    move-result-object v3

    float-to-int v4, v1

    const/16 v5, 0x10

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog$1;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v2}, Lcom/android/server/OemSceneGameModeDialog;->access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setFocusable(Z)V

    return-void
.end method
