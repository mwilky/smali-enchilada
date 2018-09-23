.class public Lcom/oneplus/server/MsgObjectArg;
.super Ljava/lang/Object;
.source "MsgObjectArg.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/oneplus/server/MsgObjectArg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arg1:Ljava/lang/Object;

.field private arg2:Ljava/lang/Object;

.field private arg3:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/oneplus/server/MsgObjectArg;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    return-void
.end method

.method public static obtain()Lcom/oneplus/server/MsgObjectArg;
    .locals 2

    sget-object v0, Lcom/oneplus/server/MsgObjectArg;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/MsgObjectArg;

    if-nez v0, :cond_0

    new-instance v1, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {v1}, Lcom/oneplus/server/MsgObjectArg;-><init>()V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;
    .locals 1

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v0, p2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    return-object v0
.end method


# virtual methods
.method public getArg1()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    return-object v0
.end method

.method public getArg2()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    return-object v0
.end method

.method public getArg3()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    return-object v0
.end method

.method public recycle()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/server/MsgObjectArg;->clear()V

    sget-object v0, Lcom/oneplus/server/MsgObjectArg;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    return-object p0
.end method

.method public setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    return-object p0
.end method

.method public setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    return-object p0
.end method
