.class Lcom/oneplus/aod/battery/BatteryControllerImpl$2;
.super Ljava/lang/Object;
.source "BatteryControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/battery/BatteryControllerImpl;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curLevel:I

.field dummy:Landroid/content/Intent;

.field incr:I

.field saveLevel:I

.field savePlugged:Z

.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 225
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    iput-object p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 p2, 0x0

    iput p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    .line 227
    const/4 p2, 0x1

    iput p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    .line 228
    iget-object p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    iget p2, p2, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    iput p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->saveLevel:I

    .line 229
    iget-object p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    iget-boolean p2, p2, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    iput-boolean p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->savePlugged:Z

    .line 230
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 234
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0, v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$602(Lcom/oneplus/aod/battery/BatteryControllerImpl;Z)Z

    .line 236
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string v2, "level"

    iget v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->saveLevel:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string v2, "plugged"

    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->savePlugged:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string v2, "testmode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string v2, "level"

    iget v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string v2, "plugged"

    iget v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    const/4 v4, 0x1

    if-lez v3, :cond_1

    move v1, v4

    goto :goto_0

    .line 242
    :cond_1
    nop

    .line 241
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    const-string v1, "testmode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->dummy:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$600(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 249
    :cond_2
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    .line 250
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->curLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 251
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->incr:I

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;->this$0:Lcom/oneplus/aod/battery/BatteryControllerImpl;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->access$700(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    return-void
.end method
