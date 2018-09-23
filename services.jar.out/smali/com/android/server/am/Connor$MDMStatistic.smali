.class Lcom/android/server/am/Connor$MDMStatistic;
.super Ljava/lang/Object;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MDMStatistic"
.end annotation


# instance fields
.field public feedCount:I

.field public feedHit:I

.field public startProcCount:I

.field public startProcHit:I

.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/Connor;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/Connor$MDMStatistic;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    iput v0, p0, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    iput v0, p0, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    iput v0, p0, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    iput p2, p0, Lcom/android/server/am/Connor$MDMStatistic;->feedCount:I

    iput p3, p0, Lcom/android/server/am/Connor$MDMStatistic;->feedHit:I

    iput p4, p0, Lcom/android/server/am/Connor$MDMStatistic;->startProcCount:I

    iput p5, p0, Lcom/android/server/am/Connor$MDMStatistic;->startProcHit:I

    return-void
.end method
