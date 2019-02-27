.class Landroid/widget/DoubleDigitManager;
.super Ljava/lang/Object;
.source "DoubleDigitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DoubleDigitManager$CallBack;
    }
.end annotation


# instance fields
.field private intermediateDigit:Ljava/lang/Integer;

.field private final mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

.field private final timeoutInMillis:J


# direct methods
.method public constructor <init>(JLandroid/widget/DoubleDigitManager$CallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    iput-object p3, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/DoubleDigitManager;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/DoubleDigitManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Landroid/widget/DoubleDigitManager;)Landroid/widget/DoubleDigitManager$CallBack;
    .locals 1

    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    return-object v0
.end method


# virtual methods
.method public reportDigit(I)V
    .locals 5

    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/widget/DoubleDigitManager$1;

    invoke-direct {v2, p0}, Landroid/widget/DoubleDigitManager$1;-><init>(Landroid/widget/DoubleDigitManager;)V

    iget-wide v3, p0, Landroid/widget/DoubleDigitManager;->timeoutInMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    invoke-interface {v0, p1}, Landroid/widget/DoubleDigitManager$CallBack;->singleDigitFinal(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/DoubleDigitManager;->mCallBack:Landroid/widget/DoubleDigitManager$CallBack;

    iget-object v2, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, p1}, Landroid/widget/DoubleDigitManager$CallBack;->twoDigitsFinal(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Landroid/widget/DoubleDigitManager;->intermediateDigit:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method
