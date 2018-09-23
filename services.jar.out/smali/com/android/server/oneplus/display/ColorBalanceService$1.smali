.class Lcom/android/server/oneplus/display/ColorBalanceService$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$100(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$302(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$1;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "POWER down..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
