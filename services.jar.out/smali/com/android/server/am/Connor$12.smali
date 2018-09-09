.class Lcom/android/server/am/Connor$12;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Connor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 876
    iput-object p1, p0, Lcom/android/server/am/Connor$12;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 886
    .local v0, "start":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Connor$12;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$100(Lcom/android/server/am/Connor;)Lcom/android/server/am/ConnorDbHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ConnorDbHelper;->restoreMM()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    goto :goto_0

    .line 888
    :catch_0
    move-exception v2

    .line 889
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 891
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/Connor$12;->this$0:Lcom/android/server/am/Connor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/am/Connor;->access$2202(Lcom/android/server/am/Connor;Z)Z

    .line 892
    iget-object v2, p0, Lcom/android/server/am/Connor$12;->this$0:Lcom/android/server/am/Connor;

    new-instance v4, Lcom/android/server/am/Connor$BingoStatistic;

    iget-object v5, p0, Lcom/android/server/am/Connor$12;->this$0:Lcom/android/server/am/Connor;

    const/4 v6, 0x3

    invoke-direct {v4, v5, v3, v6}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    invoke-static {v2, v4}, Lcom/android/server/am/Connor;->access$2302(Lcom/android/server/am/Connor;Lcom/android/server/am/Connor$BingoStatistic;)Lcom/android/server/am/Connor$BingoStatistic;

    .line 893
    iget-object v2, p0, Lcom/android/server/am/Connor$12;->this$0:Lcom/android/server/am/Connor;

    new-instance v4, Lcom/android/server/am/Connor$BingoStatistic;

    iget-object v5, p0, Lcom/android/server/am/Connor$12;->this$0:Lcom/android/server/am/Connor;

    const/4 v6, 0x5

    invoke-direct {v4, v5, v3, v6}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    invoke-static {v2, v4}, Lcom/android/server/am/Connor;->access$2402(Lcom/android/server/am/Connor;Lcom/android/server/am/Connor$BingoStatistic;)Lcom/android/server/am/Connor$BingoStatistic;

    .line 894
    const-string v2, "Connor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore elapse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    return-void
.end method
