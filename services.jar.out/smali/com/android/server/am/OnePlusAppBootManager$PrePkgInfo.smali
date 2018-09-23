.class Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrePkgInfo"
.end annotation


# instance fields
.field public mAction:I

.field public mFlag:I

.field public mPkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    iput p1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    iput-object p2, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    iput p4, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrePkgInfo{mPkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
