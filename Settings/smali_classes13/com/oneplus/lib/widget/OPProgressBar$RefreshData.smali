.class Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "OPProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshData"
.end annotation


# static fields
.field private static final POOL_MAX:I = 0x18

.field private static final sPool:Lcom/oneplus/lib/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/lib/util/Pools$SynchronizedPool<",
            "Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/util/Pools$SynchronizedPool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/oneplus/lib/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->sPool:Lcom/oneplus/lib/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZ)Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    .locals 2

    sget-object v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->sPool:Lcom/oneplus/lib/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/oneplus/lib/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    if-nez v0, :cond_0

    new-instance v1, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    invoke-direct {v1}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;-><init>()V

    move-object v0, v1

    :cond_0
    iput p0, v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->id:I

    iput p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->progress:I

    iput-boolean p2, v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->fromUser:Z

    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    sget-object v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->sPool:Lcom/oneplus/lib/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method
