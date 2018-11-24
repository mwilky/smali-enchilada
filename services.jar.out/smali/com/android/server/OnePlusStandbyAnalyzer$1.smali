.class Lcom/android/server/OnePlusStandbyAnalyzer$1;
.super Landroid/telephony/PhoneStateListener;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnomalyStatusChange([I)V
    .locals 6

    if-eqz p1, :cond_4

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "OPSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oops!, onAnomalyStatusChange, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->fromValue(I)Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v1, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->access$100(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    aget v4, p1, v3

    iget-object v5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Z

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->updateCurrent(IZ)V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$000(Lcom/android/server/OnePlusStandbyAnalyzer;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkBugReportLiteEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$200(Lcom/android/server/OnePlusStandbyAnalyzer;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$400(Lcom/android/server/OnePlusStandbyAnalyzer;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v4, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$402(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    const-string/jumbo v4, "it\'s time to enable QXDM now under standby period"

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-virtual {v4, v3, v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)V

    goto :goto_0

    :cond_0
    const-string v2, "already have telephony-abn action, do nothing."

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BugReportLite:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | abn-reporting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$200(Lcom/android/server/OnePlusStandbyAnalyzer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | qxdm-grab: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$300(Lcom/android/server/OnePlusStandbyAnalyzer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", do nothing when telephony-abn in standby period"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_2
    const-string/jumbo v1, "oops!, the enum-definition is not matched with telephony"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "onAnomalyStatusChange: wrong parameter !"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_4

    :goto_3
    nop

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
