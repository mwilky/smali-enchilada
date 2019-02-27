.class Landroid/widget/TextClock$1;
.super Landroid/content/BroadcastReceiver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextClock;


# direct methods
.method constructor <init>(Landroid/widget/TextClock;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->access$200(Landroid/widget/TextClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->access$300(Landroid/widget/TextClock;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-static {v1, v0}, Landroid/widget/TextClock;->access$400(Landroid/widget/TextClock;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->access$100(Landroid/widget/TextClock;)V

    return-void
.end method
