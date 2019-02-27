.class Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;
.super Ljava/lang/Object;
.source "EuiccService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->getEuiccInfo(ILandroid/service/euicc/IGetEuiccInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

.field final synthetic val$callback:Landroid/service/euicc/IGetEuiccInfoCallback;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;ILandroid/service/euicc/IGetEuiccInfoCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iput p2, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$slotId:I

    iput-object p3, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$callback:Landroid/service/euicc/IGetEuiccInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->this$1:Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;

    iget-object v0, v0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper;->this$0:Landroid/service/euicc/EuiccService;

    iget v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$slotId:I

    invoke-virtual {v0, v1}, Landroid/service/euicc/EuiccService;->onGetEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/service/euicc/EuiccService$IEuiccServiceWrapper$8;->val$callback:Landroid/service/euicc/IGetEuiccInfoCallback;

    invoke-interface {v1, v0}, Landroid/service/euicc/IGetEuiccInfoCallback;->onSuccess(Landroid/telephony/euicc/EuiccInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method
