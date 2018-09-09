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

    .line 22
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/oneplus/server/MsgObjectArg;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    .line 37
    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    .line 38
    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private clear()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    .line 64
    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    .line 65
    iput-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public static obtain()Lcom/oneplus/server/MsgObjectArg;
    .locals 2

    .line 42
    sget-object v0, Lcom/oneplus/server/MsgObjectArg;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/MsgObjectArg;

    .line 43
    .local v0, "moa":Lcom/oneplus/server/MsgObjectArg;
    if-nez v0, :cond_0

    .line 44
    new-instance v1, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {v1}, Lcom/oneplus/server/MsgObjectArg;-><init>()V

    move-object v0, v1

    .line 46
    :cond_0
    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 51
    .local v0, "moa":Lcom/oneplus/server/MsgObjectArg;
    invoke-virtual {v0, p0}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 52
    invoke-virtual {v0, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 53
    invoke-virtual {v0, p2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 54
    return-object v0
.end method


# virtual methods
.method public getArg1()Ljava/lang/Object;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    return-object v0
.end method

.method public getArg2()Ljava/lang/Object;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    return-object v0
.end method

.method public getArg3()Ljava/lang/Object;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    return-object v0
.end method

.method public recycle()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/oneplus/server/MsgObjectArg;->clear()V

    .line 59
    sget-object v0, Lcom/oneplus/server/MsgObjectArg;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 69
    iput-object p1, p0, Lcom/oneplus/server/MsgObjectArg;->arg1:Ljava/lang/Object;

    .line 70
    return-object p0
.end method

.method public setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lcom/oneplus/server/MsgObjectArg;->arg2:Ljava/lang/Object;

    .line 75
    return-object p0
.end method

.method public setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 79
    iput-object p1, p0, Lcom/oneplus/server/MsgObjectArg;->arg3:Ljava/lang/Object;

    .line 80
    return-object p0
.end method
