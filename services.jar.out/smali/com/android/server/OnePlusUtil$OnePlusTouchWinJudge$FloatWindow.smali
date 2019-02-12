.class public Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;
.super Ljava/lang/Object;
.source "OnePlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatWindow"
.end annotation


# instance fields
.field public mH:I

.field public mPid:I

.field public mPkgName:Ljava/lang/String;

.field public mType:I

.field public mUid:I

.field public mW:I


# direct methods
.method constructor <init>(IILjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mUid:I

    iput p2, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    iput-object p3, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    iput p5, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    iput p6, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FloatWindow{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " w*h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge$FloatWindow;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
