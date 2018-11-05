.class Lcom/oneplus/doze/DozeService$7;
.super Lcom/oneplus/doze/DozeService$LightCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/doze/DozeService;->checkLightSensor()V
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

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$7;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/doze/DozeService$LightCheck;-><init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$1;)V

    return-void
.end method


# virtual methods
.method public onLightResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$7;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0, p1}, Lcom/oneplus/doze/DozeService;->access$3302(Lcom/oneplus/doze/DozeService;I)I

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$7;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0, p1}, Lcom/oneplus/doze/DozeService;->access$3400(Lcom/oneplus/doze/DozeService;I)V

    return-void
.end method
