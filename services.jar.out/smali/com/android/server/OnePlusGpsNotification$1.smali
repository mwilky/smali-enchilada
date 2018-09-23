.class Lcom/android/server/OnePlusGpsNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusGpsNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusGpsNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusGpsNotification;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusGpsNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusGpsNotification$1;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/android/server/OnePlusGpsNotification$1;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {v2}, Lcom/android/server/OnePlusGpsNotification;->access$000(Lcom/android/server/OnePlusGpsNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "forcePackageName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/OnePlusGpsNotification;->DEBUG:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/OnePlusGpsNotification$1;->this$0:Lcom/android/server/OnePlusGpsNotification;

    iget-object v2, v2, Lcom/android/server/OnePlusGpsNotification;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReceiver packageName  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/OnePlusGpsNotification$1;->this$0:Lcom/android/server/OnePlusGpsNotification;

    invoke-static {v2}, Lcom/android/server/OnePlusGpsNotification;->access$100(Lcom/android/server/OnePlusGpsNotification;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
