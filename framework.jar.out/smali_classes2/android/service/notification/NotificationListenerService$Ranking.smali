.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationListenerService$Ranking$UserSentiment;
    }
.end annotation


# static fields
.field public static final USER_SENTIMENT_NEGATIVE:I = -0x1

.field public static final USER_SENTIMENT_NEUTRAL:I = 0x0

.field public static final USER_SENTIMENT_POSITIVE:I = 0x1

.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mChannel:Landroid/app/NotificationChannel;

.field private mHidden:Z

.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIsAmbient:Z

.field private mIsLock:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mOverrideGroupKey:Ljava/lang/String;

.field private mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRank:I

.field private mShowBadge:Z

.field private mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedVisualEffects:I

.field private mUserSentiment:I

.field private mVisibilityOverride:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1421
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1437
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1446
    return-void
.end method

.method public static importanceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "importance"    # I

    .line 1650
    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1663
    :pswitch_0
    const-string v0, "HIGH"

    return-object v0

    .line 1660
    :pswitch_1
    const-string v0, "DEFAULT"

    return-object v0

    .line 1658
    :pswitch_2
    const-string v0, "LOW"

    return-object v0

    .line 1656
    :pswitch_3
    const-string v0, "MIN"

    return-object v0

    .line 1654
    :pswitch_4
    const-string v0, "NONE"

    return-object v0

    .line 1652
    :cond_0
    const-string v0, "UNSPECIFIED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canShowBadge()Z
    .locals 1

    .line 1580
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    return v0
.end method

.method public getAdditionalPeople()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1559
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChannel()Landroid/app/NotificationChannel;
    .locals 1

    .line 1537
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getImportance()I
    .locals 1

    .line 1511
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 1

    .line 1521
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1452
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .locals 1

    .line 1529
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .line 1462
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return v0
.end method

.method public getSnoozeCriteria()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation

    .line 1571
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSuppressedVisualEffects()I
    .locals 1

    .line 1490
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return v0
.end method

.method public getUserSentiment()I
    .locals 1

    .line 1548
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    return v0
.end method

.method public getVisibilityOverride()I
    .locals 1

    .line 1481
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return v0
.end method

.method public isAmbient()Z
    .locals 1

    .line 1470
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return v0
.end method

.method public isLock()Z
    .locals 1

    .line 1602
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsLock:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .line 1590
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    return v0
.end method

.method public matchesInterruptionFilter()Z
    .locals 1

    .line 1501
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return v0
.end method

.method public populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIZZ)V
    .locals 16
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "matchesInterruptionFilter"    # Z
    .param p4, "visibilityOverride"    # I
    .param p5, "suppressedVisualEffects"    # I
    .param p6, "importance"    # I
    .param p7, "explanation"    # Ljava/lang/CharSequence;
    .param p8, "overrideGroupKey"    # Ljava/lang/String;
    .param p9, "channel"    # Landroid/app/NotificationChannel;
    .param p12, "showBadge"    # Z
    .param p13, "userSentiment"    # I
    .param p14, "hidden"    # Z
    .param p15, "isLock"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIII",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Landroid/app/NotificationChannel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;ZIZZ)V"
        }
    .end annotation

    .local p10, "overridePeople":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p11, "snoozeCriteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 1623
    move-object/from16 v2, p1

    iput-object v2, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 1624
    move/from16 v3, p2

    iput v3, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1625
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 1626
    move/from16 v4, p3

    iput-boolean v4, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 1627
    move/from16 v5, p4

    iput v5, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 1628
    move/from16 v6, p5

    iput v6, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 1629
    iput v1, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 1630
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 1631
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 1632
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mChannel:Landroid/app/NotificationChannel;

    .line 1633
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverridePeople:Ljava/util/ArrayList;

    .line 1634
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 1635
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mShowBadge:Z

    .line 1636
    move/from16 v13, p13

    iput v13, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mUserSentiment:I

    .line 1637
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mHidden:Z

    .line 1641
    move/from16 v15, p15

    iput-boolean v15, v0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsLock:Z

    .line 1644
    return-void
.end method
