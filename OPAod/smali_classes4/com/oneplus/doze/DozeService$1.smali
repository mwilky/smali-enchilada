.class Lcom/oneplus/doze/DozeService$1;
.super Lcom/oneplus/doze/DozeService$CustomProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/doze/DozeService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/DozeService$CustomProximityCheck;-><init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$1;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 3

    const-string v0, "DozeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProximityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0, p1}, Lcom/oneplus/doze/DozeService;->access$202(Lcom/oneplus/doze/DozeService;I)I

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$300(Lcom/oneplus/doze/DozeService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/doze/DozeService;->access$302(Lcom/oneplus/doze/DozeService;I)I

    const-string v0, "DozeService"

    const-string v2, "pulse from pocket"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcom/oneplus/doze/DozeService;->access$400(Lcom/oneplus/doze/DozeService;IZ)V

    :cond_0
    return-void
.end method
