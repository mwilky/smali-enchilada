.class Landroid/service/dreams/DreamService$DreamServiceWrapper$4;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService$DreamServiceWrapper;->onWakingUp(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/dreams/DreamService$DreamServiceWrapper;

    .line 1204
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$4;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$4;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1207
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$4;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iget-object v0, v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$4;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamService;->onWakingUp(Ljava/lang/String;)V

    .line 1208
    return-void
.end method
