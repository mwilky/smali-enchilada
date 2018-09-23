.class Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;
.super Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextHubServiceCallback"
.end annotation


# instance fields
.field private final mContextHubId:I

.field final synthetic this$0:Lcom/android/server/location/ContextHubService;


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    invoke-direct {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;-><init>()V

    iput p2, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    return-void
.end method


# virtual methods
.method public handleAppAbort(JI)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/location/ContextHubService;->access$300(Lcom/android/server/location/ContextHubService;IJI)V

    return-void
.end method

.method public handleAppsInfo(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubService;->access$400(Lcom/android/server/location/ContextHubService;ILjava/util/List;)V

    return-void
.end method

.method public handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubService;->access$000(Lcom/android/server/location/ContextHubService;ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    return-void
.end method

.method public handleHubEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubService;->access$200(Lcom/android/server/location/ContextHubService;II)V

    return-void
.end method

.method public handleTxnResult(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/location/ContextHubService;->access$100(Lcom/android/server/location/ContextHubService;III)V

    return-void
.end method
