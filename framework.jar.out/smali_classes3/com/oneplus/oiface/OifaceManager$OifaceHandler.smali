.class public Lcom/oneplus/oiface/OifaceManager$OifaceHandler;
.super Landroid/os/Handler;
.source "OifaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/oiface/OifaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OifaceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/oiface/OifaceManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/oiface/OifaceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/oiface/OifaceManager$OifaceHandler;->this$0:Lcom/oneplus/oiface/OifaceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OifaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager$OifaceHandler;->this$0:Lcom/oneplus/oiface/OifaceManager;

    invoke-static {v0}, Lcom/oneplus/oiface/OifaceManager;->access$300(Lcom/oneplus/oiface/OifaceManager;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager$OifaceHandler;->this$0:Lcom/oneplus/oiface/OifaceManager;

    invoke-static {v0}, Lcom/oneplus/oiface/OifaceManager;->access$200(Lcom/oneplus/oiface/OifaceManager;)V

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
