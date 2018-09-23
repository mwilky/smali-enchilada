.class final Lcom/android/server/policy/ScreenDecor$ScreenHandler;
.super Landroid/os/Handler;
.source "ScreenDecor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ScreenDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ScreenDecor;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ScreenDecor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenDecor;->doExpandScreenDecor()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenDecor;->refreshScreenDecor()V

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
