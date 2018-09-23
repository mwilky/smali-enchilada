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

    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;Lcom/android/server/secrecy/SecrecyConfig$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;-><init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->access$200(Lcom/android/server/secrecy/SecrecyConfig;)V

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->access$100(Lcom/android/server/secrecy/SecrecyConfig;)Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->onConfigSaveFinished(Ljava/util/Map;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->access$000(Lcom/android/server/secrecy/SecrecyConfig;)V

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->access$100(Lcom/android/server/secrecy/SecrecyConfig;)Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/PolicyManager;->onConfigLoadFinished()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
