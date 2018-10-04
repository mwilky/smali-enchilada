.class Landroid/secrecy/SecrecyManager$MyHandler;
.super Landroid/os/Handler;
.source "SecrecyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/secrecy/SecrecyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/secrecy/SecrecyManager;


# direct methods
.method private constructor <init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/secrecy/SecrecyManager$MyHandler;->this$0:Landroid/secrecy/SecrecyManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;Landroid/secrecy/SecrecyManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/secrecy/SecrecyManager$MyHandler;-><init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/secrecy/SecrecyManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/secrecy/SecrecyManager$MyHandler;->this$0:Landroid/secrecy/SecrecyManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/secrecy/SecrecyManager$MyHandler;->this$0:Landroid/secrecy/SecrecyManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-static {v0, v1}, Landroid/secrecy/SecrecyManager;->access$000(Landroid/secrecy/SecrecyManager;Ljava/util/Map;)V

    nop

    :goto_0
    return-void
.end method
