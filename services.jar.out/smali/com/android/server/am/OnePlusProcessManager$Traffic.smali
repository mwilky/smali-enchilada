.class Lcom/android/server/am/OnePlusProcessManager$Traffic;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Traffic"
.end annotation


# instance fields
.field rxBytes:J

.field startTime:J

.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;

.field txBytes:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;JJJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$Traffic;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/am/OnePlusProcessManager$Traffic;->startTime:J

    iput-wide p4, p0, Lcom/android/server/am/OnePlusProcessManager$Traffic;->txBytes:J

    iput-wide p6, p0, Lcom/android/server/am/OnePlusProcessManager$Traffic;->rxBytes:J

    return-void
.end method
