.class public Lcom/android/server/SystemEventCollector;
.super Ljava/lang/Object;
.source "SystemEventCollector.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mModuleName:Ljava/lang/String;

.field private mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemEventCollector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/SystemEventCollector;->mModuleName:Ljava/lang/String;

    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    invoke-direct {v0, p1}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemEventCollector;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemEventCollector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemEventCollector;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemEventCollector;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method


# virtual methods
.method public submit(Lcom/android/server/SystemEvent;)V
    .locals 2

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/SystemEventCollector$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/SystemEventCollector$1;-><init>(Lcom/android/server/SystemEventCollector;Lcom/android/server/SystemEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
