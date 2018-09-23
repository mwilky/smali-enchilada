.class Lcom/android/server/OnePlusNfcService$1;
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

    iput-object p1, p0, Lcom/android/server/OnePlusNfcService$1;->this$0:Lcom/android/server/OnePlusNfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/server/OnePlusNfcService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NfcBroadcast] state change state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/OnePlusNfcService$1;->this$0:Lcom/android/server/OnePlusNfcService;

    invoke-static {v2}, Lcom/android/server/OnePlusNfcService;->access$100(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    iget-object v3, p0, Lcom/android/server/OnePlusNfcService$1;->this$0:Lcom/android/server/OnePlusNfcService;

    invoke-static {v3}, Lcom/android/server/OnePlusNfcService;->access$100(Lcom/android/server/OnePlusNfcService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OnePlusNfcService$1;->this$0:Lcom/android/server/OnePlusNfcService;

    invoke-static {v4}, Lcom/android/server/OnePlusNfcService;->access$200(Lcom/android/server/OnePlusNfcService;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
