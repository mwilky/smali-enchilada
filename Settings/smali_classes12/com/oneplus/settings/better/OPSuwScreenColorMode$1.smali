.class Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;
.super Landroid/os/Handler;
.source "OPSuwScreenColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPSuwScreenColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    .line 80
    iput-object p1, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPSuwScreenColorMode$1;->this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    const-string v1, "screen_color_mode_seekbar"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->scrollToPreference(Ljava/lang/String;)V

    .line 88
    nop

    .line 92
    :goto_0
    return-void
.end method
