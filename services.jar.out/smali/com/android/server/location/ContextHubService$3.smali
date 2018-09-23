.class Lcom/android/server/location/ContextHubService$3;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ContextHubService;->createUnloadTransactionCallback(I)Landroid/hardware/location/IContextHubTransactionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ContextHubService;

.field final synthetic val$contextHubId:I


# direct methods
.method constructor <init>(Lcom/android/server/location/ContextHubService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/ContextHubService$3;->this$0:Lcom/android/server/location/ContextHubService;

    iput p2, p0, Lcom/android/server/location/ContextHubService$3;->val$contextHubId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTransactionComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/ContextHubService$3;->this$0:Lcom/android/server/location/ContextHubService;

    iget v1, p0, Lcom/android/server/location/ContextHubService$3;->val$contextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/ContextHubService;->access$800(Lcom/android/server/location/ContextHubService;II)V

    return-void
.end method
