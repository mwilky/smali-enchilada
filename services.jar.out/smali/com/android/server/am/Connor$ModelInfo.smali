.class Lcom/android/server/am/Connor$ModelInfo;
.super Ljava/lang/Object;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModelInfo"
.end annotation


# instance fields
.field public mAcc:I

.field public mLoss:F

.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/Connor;IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Connor;
    .param p2, "acc"    # I
    .param p3, "loss"    # F

    .line 1063
    iput-object p1, p0, Lcom/android/server/am/Connor$ModelInfo;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iput p2, p0, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    .line 1065
    iput p3, p0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    .line 1066
    return-void
.end method
