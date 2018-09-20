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

    .line 272
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 280
    new-instance p1, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;-><init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/aod/AodUpdateMonitor$1;)V

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p2, "x1"    # Lcom/oneplus/aod/AodUpdateMonitor$1;

    .line 272
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    .line 272
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->removeWindow()V

    return-void
.end method

.method static synthetic access$3600(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .line 272
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handleStartDozing(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
    .param p1, "x1"    # Lcom/oneplus/doze/DozeHost$PulseCallback;
    .param p2, "x2"    # I

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handlePulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    .line 272
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handleStopDozing()V

    return-void
.end method

.method private handlePulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$PulseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # I

    .line 458
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3000(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/doze/DozeScrimController;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;-><init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/doze/DozeHost$PulseCallback;)V

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/doze/DozeScrimController;->pulse(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    .line 472
    return-void
.end method

.method private handleStartDozing(Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "ready"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 410
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1500(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 411
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 412
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1700(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1600(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 414
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSystemUiVisibility()I

    move-result v0

    .line 422
    .local v0, "uiOPtion":I
    or-int/lit16 v0, v0, 0x700

    .line 426
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 427
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1502(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 429
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1102(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 430
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/oneplus/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 431
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1900(Lcom/oneplus/aod/AodUpdateMonitor;)V

    .line 433
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 434
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2000(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v4}, Lcom/oneplus/aod/AodUpdateMonitor;->access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2100(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 438
    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2300(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/VolumneController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/aod/VolumneController;->getCurrentMode()I

    move-result v5

    invoke-static {v4, v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2202(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    .line 439
    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {}, Lcom/oneplus/aod/Utils;->isNotificationWakeUpEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2402(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 440
    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    sget v5, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    invoke-static {v4, v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2500(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    .line 441
    move v4, v1

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2600(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 442
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2600(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 443
    .local v5, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v5, :cond_0

    .line 444
    invoke-virtual {v5}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    .line 441
    .end local v5    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 447
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v5}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2800(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v6}, Lcom/oneplus/aod/AodUpdateMonitor;->access$100(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-static {v4, v3}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2702(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 450
    .end local v0    # "uiOPtion":I
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 452
    invoke-static {}, Lcom/oneplus/aod/Utils;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2900(Lcom/oneplus/aod/AodUpdateMonitor;Z)V

    .line 455
    :cond_4
    return-void
.end method

.method private handleStopDozing()V
    .locals 5

    .line 475
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1500(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 476
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1502(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 477
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 479
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3102(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    .line 480
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3200(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->stopListening()V

    .line 483
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3400(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3300(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 485
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3302(Lcom/oneplus/aod/AodUpdateMonitor;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 489
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2600(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 490
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2600(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 491
    .local v2, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v2, :cond_1

    .line 492
    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStopDozing()V

    .line 489
    .end local v2    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1900(Lcom/oneplus/aod/AodUpdateMonitor;)V

    .line 496
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/oneplus/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 497
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2100(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 498
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    sget v2, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    invoke-static {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2500(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    .line 499
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1302(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "delay":I
    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 505
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1000(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FINGERPRINT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x12c

    goto :goto_1

    :cond_3
    const/16 v1, 0x32

    :goto_1
    move v0, v1

    .line 507
    :cond_4
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    new-instance v2, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$2;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$2;-><init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    .end local v0    # "delay":I
    :cond_5
    return-void
.end method

.method private removeWindow()V
    .locals 2

    .line 518
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1800(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1700(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 535
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 536
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 537
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/doze/DozeHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 352
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    return-void
.end method

.method public fireAlwaysDisplay()V
    .locals 2

    .line 297
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

    .line 300
    :cond_0
    const-string v0, "AodUpdateMonitor"

    const-string v1, "fireAlwaysDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$802(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 302
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 303
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

    .line 304
    .local v1, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v1}, Lcom/oneplus/doze/DozeHost$Callback;->onAlwaysDisplayOn()V

    .line 305
    .end local v1    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    goto :goto_0

    .line 306
    :cond_1
    return-void

    .line 298
    :cond_2
    :goto_1
    return-void
.end method

.method public fireDetectLight()V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    return-void

    .line 335
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

    .line 336
    .local v1, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v1}, Lcom/oneplus/doze/DozeHost$Callback;->onTriggerDetectLight()V

    .line 337
    .end local v1    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    goto :goto_0

    .line 338
    :cond_1
    return-void
.end method

.method public fireNewNotifications()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    return-void

    .line 314
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

    .line 315
    .local v1, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v1}, Lcom/oneplus/doze/DozeHost$Callback;->onNewNotifications()V

    .line 316
    .end local v1    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    goto :goto_0

    .line 317
    :cond_1
    return-void
.end method

.method public firePowerSaveChanged(Z)V
    .locals 2
    .param p1, "active"    # Z

    .line 291
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

    .line 292
    .local v1, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v1, p1}, Lcom/oneplus/doze/DozeHost$Callback;->onPowerSaveChanged(Z)V

    .line 293
    .end local v1    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method public fireThreeKeyStateChanged()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    return-void

    .line 325
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

    .line 326
    .local v1, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v1}, Lcom/oneplus/doze/DozeHost$Callback;->onThreeKeyChanged()V

    .line 327
    .end local v1    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    goto :goto_0

    .line 328
    :cond_1
    return-void
.end method

.method public isNotificationLightOn()Z
    .locals 1

    .line 405
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mNotificationLightOn:Z

    return v0
.end method

.method public isPowerSaveActive()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1400(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/battery/BatteryControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1400(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/battery/BatteryControllerImpl;

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

    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public onEnterDisplayPeriod(Z)V
    .locals 2
    .param p1, "enter"    # Z

    .line 341
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->access$600(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    return-void

    .line 345
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

    .line 346
    .local v1, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v1, p1}, Lcom/oneplus/doze/DozeHost$Callback;->onEnterDisplayPeriod(Z)V

    .line 347
    .end local v1    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    goto :goto_0

    .line 348
    :cond_1
    return-void
.end method

.method public onWakingUp(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 377
    const-string v0, "AodUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakingUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1002(Lcom/oneplus/aod/AodUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, "FINGERPRINT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1102(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 383
    const-string v2, "WALLPAPER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v2, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->setDisplayMode(I)V

    .line 385
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1200(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 390
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$1302(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 391
    return-void
.end method

.method public pulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$PulseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # I

    .line 367
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 368
    return-void
.end method

.method public removeCallback(Lcom/oneplus/doze/DozeHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 357
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 358
    return-void
.end method

.method public startDozing(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "ready"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 362
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 363
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 373
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 287
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
