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
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;
    .param p2, "start"    # J
    .param p4, "tx"    # J
    .param p6, "rx"    # J

    .line 1786
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$Traffic;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1787
    iput-wide p2, p0, Lcom/android/server/am/OnePlusProcessManager$Traffic;->startTime:J

    .line 1788
    iput-wide p4, p0, Lcom/android/server/am/OnePlusProcessManager$Traffic;->txBytes:J

    .line 1789
    iput-wide p6, p0, Lcom/android/server/am/OnePlusProcessManager$Traffic;->rxBytes:J

    .line 1790
    return-void
.end method
