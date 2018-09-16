.class Lcom/android/server/net/NetworkPolicyManagerService$21;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 4949
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 4952
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 4967
    const/4 v0, 0x0

    return v0

    .line 4962
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4963
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->handleUidGone(I)V

    .line 4964
    return v1

    .line 4954
    .end local v0    # "uid":I
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4955
    .restart local v0    # "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 4956
    .local v2, "procState":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 4958
    .local v3, "procStateSeq":J
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$21;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5, v0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleUidChanged(IIJ)V

    .line 4959
    return v1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
