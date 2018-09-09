.class Lcom/android/server/secrecy/SecrecyConfig$MyHandler;
.super Landroid/os/Handler;
.source "SecrecyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/SecrecyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/secrecy/SecrecyConfig;


# direct methods
.method private constructor <init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 72
    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;Lcom/android/server/secrecy/SecrecyConfig$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/secrecy/SecrecyConfig;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/server/secrecy/SecrecyConfig$1;

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;-><init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->access$200(Lcom/android/server/secrecy/SecrecyConfig;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->access$100(Lcom/android/server/secrecy/SecrecyConfig;)Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->onConfigSaveFinished(Ljava/util/Map;)V

    .line 87
    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->access$000(Lcom/android/server/secrecy/SecrecyConfig;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->access$100(Lcom/android/server/secrecy/SecrecyConfig;)Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/PolicyManager;->onConfigLoadFinished()V

    .line 82
    nop

    .line 93
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
