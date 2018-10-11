.class Lcom/oneplus/aod/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oneplus/aod/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/oneplus/aod/NotificationData;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationData;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData$Entry;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iget-object v4, v2, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    invoke-static {v9}, Lcom/oneplus/aod/NotificationData;->access$000(Lcom/oneplus/aod/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, v0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    invoke-static {v9}, Lcom/oneplus/aod/NotificationData;->access$000(Lcom/oneplus/aod/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    iget-object v10, v1, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v11, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9, v10, v11}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v9, v0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    invoke-static {v9}, Lcom/oneplus/aod/NotificationData;->access$000(Lcom/oneplus/aod/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    iget-object v10, v2, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v11, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9, v10, v11}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v9, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v5

    iget-object v9, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v6

    iget-object v9, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v7

    iget-object v9, v0, Lcom/oneplus/aod/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v8

    :cond_0
    iget-object v9, v0, Lcom/oneplus/aod/NotificationData$1;->this$0:Lcom/oneplus/aod/NotificationData;

    invoke-static {v9}, Lcom/oneplus/aod/NotificationData;->access$100(Lcom/oneplus/aod/NotificationData;)Lcom/oneplus/aod/NotificationData$Environment;

    move-result-object v9

    invoke-interface {v9}, Lcom/oneplus/aod/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    if-le v5, v12, :cond_1

    move v10, v12

    goto :goto_0

    :cond_1
    move v10, v11

    :goto_0
    iget-object v13, v2, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-le v6, v12, :cond_2

    move v13, v12

    goto :goto_1

    :cond_2
    move v13, v11

    :goto_1
    const/4 v14, 0x5

    if-lt v5, v14, :cond_3

    invoke-static {v3}, Lcom/oneplus/aod/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v15

    if-eqz v15, :cond_3

    move v15, v12

    goto :goto_2

    :cond_3
    move v15, v11

    :goto_2
    if-lt v6, v14, :cond_4

    invoke-static {v4}, Lcom/oneplus/aod/NotificationData;->access$200(Landroid/service/notification/StatusBarNotification;)Z

    move-result v14

    if-eqz v14, :cond_4

    move v11, v12

    nop

    :cond_4
    const/4 v14, -0x1

    if-eq v10, v13, :cond_6

    if-eqz v10, :cond_5

    move v12, v14

    nop

    :cond_5
    return v12

    :cond_6
    if-eq v15, v11, :cond_8

    if-eqz v15, :cond_7

    move v12, v14

    nop

    :cond_7
    return v12

    :cond_8
    if-eq v7, v8, :cond_9

    sub-int v12, v7, v8

    return v12

    :cond_9
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    iget-wide v0, v12, Landroid/app/Notification;->when:J

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v12

    move-object/from16 v16, v3

    iget-wide v2, v12, Landroid/app/Notification;->when:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/oneplus/aod/NotificationData$Entry;

    check-cast p2, Lcom/oneplus/aod/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/aod/NotificationData$1;->compare(Lcom/oneplus/aod/NotificationData$Entry;Lcom/oneplus/aod/NotificationData$Entry;)I

    move-result p1

    return p1
.end method
