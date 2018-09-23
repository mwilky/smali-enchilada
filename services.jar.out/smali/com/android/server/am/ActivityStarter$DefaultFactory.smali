.class Lcom/android/server/am/ActivityStarter$DefaultFactory;
.super Ljava/lang/Object;
.source "ActivityStarter.java"

# interfaces
.implements Lcom/android/server/am/ActivityStarter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultFactory"
.end annotation


# instance fields
.field private final MAX_STARTER_COUNT:I

.field private mController:Lcom/android/server/am/ActivityStartController;

.field private mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mStarterPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/server/am/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->MAX_STARTER_COUNT:I

    new-instance v1, Landroid/util/Pools$SynchronizedPool;

    invoke-direct {v1, v0}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p3, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    return-void
.end method


# virtual methods
.method public obtain()Lcom/android/server/am/ActivityStarter;
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStarter;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/am/ActivityStarter;

    iget-object v2, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mController:Lcom/android/server/am/ActivityStartController;

    iget-object v3, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mInterceptor:Lcom/android/server/am/ActivityStartInterceptor;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStarter;-><init>(Lcom/android/server/am/ActivityStartController;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStartInterceptor;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public recycle(Lcom/android/server/am/ActivityStarter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStarter;->reset(Z)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setController(Lcom/android/server/am/ActivityStartController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityStarter$DefaultFactory;->mController:Lcom/android/server/am/ActivityStartController;

    return-void
.end method
