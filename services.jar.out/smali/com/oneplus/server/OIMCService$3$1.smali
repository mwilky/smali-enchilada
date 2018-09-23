.class Lcom/oneplus/server/OIMCService$3$1;
.super Ljava/lang/Object;
.source "OIMCService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/server/OIMCService$3;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService$3;I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/OIMCService$3$1;->this$1:Lcom/oneplus/server/OIMCService$3;

    iput p2, p0, Lcom/oneplus/server/OIMCService$3$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$3$1;->this$1:Lcom/oneplus/server/OIMCService$3;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService$3;->this$0:Lcom/oneplus/server/OIMCService;

    iget v1, p0, Lcom/oneplus/server/OIMCService$3$1;->val$userId:I

    invoke-static {v0, v1}, Lcom/oneplus/server/OIMCUtil;->adjustOIMCRulesForSwitch(Lcom/oneplus/server/OIMCService;I)V

    return-void
.end method
