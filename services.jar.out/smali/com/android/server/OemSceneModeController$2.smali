.class Lcom/android/server/OemSceneModeController$2;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .line 473
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iput p2, p0, Lcom/android/server/OemSceneModeController$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 476
    iget v0, p0, Lcom/android/server/OemSceneModeController$2;->val$code:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$1200(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/server/OemSceneModeController;->access$1400(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    .line 485
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1300(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->access$1200(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneModeController;->access$1400(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    goto :goto_0

    .line 481
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$1200(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/android/server/OemSceneModeController;->access$1400(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    .line 482
    goto :goto_0

    .line 478
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->access$1200(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$2;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$1300(Lcom/android/server/OemSceneModeController;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneModeController;->access$1400(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V

    .line 479
    nop

    .line 492
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
