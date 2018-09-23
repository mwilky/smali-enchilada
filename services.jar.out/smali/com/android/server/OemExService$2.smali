.class Lcom/android/server/OemExService$2;
.super Landroid/os/Handler;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemExService$2;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    return-void
.end method
