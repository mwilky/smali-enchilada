.class Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThreeKeyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreeKeyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyBase;


# direct methods
.method private constructor <init>(Lcom/oneplus/threekey/ThreeKeyBase;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;->this$0:Lcom/oneplus/threekey/ThreeKeyBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/threekey/ThreeKeyBase;Lcom/oneplus/threekey/ThreeKeyBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/threekey/ThreeKeyBase;
    .param p2, "x1"    # Lcom/oneplus/threekey/ThreeKeyBase$1;

    .line 74
    invoke-direct {p0, p1}, Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;-><init>(Lcom/oneplus/threekey/ThreeKeyBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string/jumbo v1, "switch_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, "state":I
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;->this$0:Lcom/oneplus/threekey/ThreeKeyBase;

    invoke-virtual {v2, v1}, Lcom/oneplus/threekey/ThreeKeyBase;->setSwitchState(I)V

    .line 82
    .end local v1    # "state":I
    :cond_0
    return-void
.end method
