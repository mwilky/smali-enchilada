.class Lcom/android/server/OnePlusNfcService$2;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusNfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusNfcService;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusNfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusNfcService;

    .line 186
    iput-object p1, p0, Lcom/android/server/OnePlusNfcService$2;->this$0:Lcom/android/server/OnePlusNfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.oem.engineermode.StartOEMLogMain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/server/OnePlusNfcService$2;->this$0:Lcom/android/server/OnePlusNfcService;

    const-string v2, "ProductLine"

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusNfcService;->setCardType(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method
