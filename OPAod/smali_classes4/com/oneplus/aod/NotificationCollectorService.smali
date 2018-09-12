.class public Lcom/oneplus/aod/NotificationCollectorService;
.super Ljava/lang/Object;
.source "NotificationCollectorService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

.field private mCallBack:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationListenerService:Landroid/service/notification/NotificationListenerService;

.field private mNotificationManager:Lcom/oneplus/aod/NotificationManager;

.field private mPm:Landroid/os/PowerManager;

.field private mRegisted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "NotificationCollectorService"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationCollectorService$1;-><init>(Lcom/oneplus/aod/NotificationCollectorService;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mCallBack:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 78
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationCollectorService$2;-><init>(Lcom/oneplus/aod/NotificationCollectorService;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationListenerService:Landroid/service/notification/NotificationListenerService;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aodUpdateMonitor"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "NotificationCollectorService"

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationCollectorService$1;-><init>(Lcom/oneplus/aod/NotificationCollectorService;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mCallBack:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 78
    new-instance v0, Lcom/oneplus/aod/NotificationCollectorService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/NotificationCollectorService$2;-><init>(Lcom/oneplus/aod/NotificationCollectorService;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationListenerService:Landroid/service/notification/NotificationListenerService;

    .line 41
    iput-object p2, p0, Lcom/oneplus/aod/NotificationCollectorService;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 42
    new-instance v0, Lcom/oneplus/aod/NotificationManager;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/aod/NotificationManager;-><init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    .line 43
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->setNotificationManager(Lcom/oneplus/aod/NotificationManager;)V

    .line 44
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService;->mCallBack:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 45
    iput-object p1, p0, Lcom/oneplus/aod/NotificationCollectorService;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mPm:Landroid/os/PowerManager;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/NotificationCollectorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationCollectorService;

    .line 24
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mRegisted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/aod/NotificationCollectorService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationCollectorService;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationCollectorService;->mRegisted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationCollectorService;

    .line 24
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/service/notification/NotificationListenerService;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationCollectorService;

    .line 24
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationListenerService:Landroid/service/notification/NotificationListenerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationCollectorService;

    .line 24
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mNotificationManager:Lcom/oneplus/aod/NotificationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationCollectorService;

    .line 24
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mPm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/NotificationCollectorService;

    .line 24
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
