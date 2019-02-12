.class final Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
.super Ljava/lang/Object;
.source "AodUpdateMonitor.java"

# interfaces
.implements Lcom/oneplus/doze/DozeHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DozeServiceHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;
    }
.end annotation


# static fields
.field private static final PROCESSING_TIME:J = 0x1f4L


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/doze/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

.field private mNotificationLightOn:Z

.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method private constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    new-instance p1, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;-><init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/aod/AodUpdateMonitor$1;)V

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handleStartDozing(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handlePulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handleStopDozing()V

    return-void
.end method

.method private handlePulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 2
    .param p1    # Lcom/oneplus/doze/DozeHost$PulseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3100(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/doze/DozeScrimController;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;-><init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/doze/DozeHost$PulseCallback;)V

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/doze/DozeScrimController;->pulse(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method private handleStartDozing(Ljava/lang/Runnable;)V
    .locals 10
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1000(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1600(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "AodUpdateMonitor"

    const-string v2, "mAodView has already been added to window, do not add it again."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1800(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1700(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1902(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x700

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1002(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1202(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1402(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const-string v4, ""

    invoke-static {v2, v4}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1102(Lcom/oneplus/aod/AodUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/oneplus/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2000(Lcom/oneplus/aod/AodUpdateMonitor;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2100(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2400(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/VolumneController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/VolumneController;->getCurrentMode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2302(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {}, Lcom/oneplus/aod/Utils;->isNotificationWakeUpEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2502(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    sget v5, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    invoke-static {v4, v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2600(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2700(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2700(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v6}, Lcom/oneplus/aod/AodUpdateMonitor;->access$100(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-static {v4, v3}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    :cond_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lcom/oneplus/aod/Utils;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3000(Lcom/oneplus/aod/AodUpdateMonitor;Z)V

    :cond_5
    return-void
.end method

.method private handleStopDozing()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1000(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1002(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3202(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3300(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->stopListening()V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3400(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3500(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3400(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3402(Lcom/oneplus/aod/AodUpdateMonitor;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2700(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2700(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStopDozing()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2000(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/oneplus/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    sget v2, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    invoke-static {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2600(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1402(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    const/4 v0, 0x0

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_3

    const-string v2, "AodUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopDozing mWakingUpReason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1100(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1100(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FINGERPRINT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x46

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1100(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FINGERPRINT_WALLPAPER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v1, 0x64

    nop

    :cond_6
    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1600(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/doze/DozeHost$Callback;)V
    .locals 1
    .param p1    # Lcom/oneplus/doze/DozeHost$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fireAlwaysDisplay()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$700(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v0

    sget v1, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_PULSING:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "AodUpdateMonitor"

    const-string v1, "fireAlwaysDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v1}, Lcom/oneplus/doze/DozeHost$Callback;->onAlwaysDisplayOn()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public fireDetectLight()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v1}, Lcom/oneplus/doze/DozeHost$Callback;->onTriggerDetectLight()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fireNewNotifications()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v1}, Lcom/oneplus/doze/DozeHost$Callback;->onNewNotifications()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public firePowerSaveChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v1, p1}, Lcom/oneplus/doze/DozeHost$Callback;->onPowerSaveChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireThreeKeyStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v1}, Lcom/oneplus/doze/DozeHost$Callback;->onThreeKeyChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isNotificationLightOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mNotificationLightOn:Z

    return v0
.end method

.method public isPowerSaveActive()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1500(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/battery/BatteryControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1500(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/battery/BatteryControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->isPowerSave()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPulsingBlocked()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onEnterDisplayPeriod(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/doze/DozeHost$Callback;

    invoke-interface {v1, p1}, Lcom/oneplus/doze/DozeHost$Callback;->onEnterDisplayPeriod(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onWakingUp(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1000(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AodUpdateMonitor"

    const-string v1, "onWakingUp: not dozing, don\'t set wake up state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "AodUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakingUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1102(Lcom/oneplus/aod/AodUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "FINGERPRINT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1202(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    const-string v0, "WALLPAPER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->setDisplayMode(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1402(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    return-void
.end method

.method public pulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 3
    .param p1    # Lcom/oneplus/doze/DozeHost$PulseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeCallback(Lcom/oneplus/doze/DozeHost$Callback;)V
    .locals 1
    .param p1    # Lcom/oneplus/doze/DozeHost$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public startDozing(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopDozing()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PSB.DozeServiceHost[mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
