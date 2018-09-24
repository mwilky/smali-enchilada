.class public Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
.super Ljava/lang/Object;
.source "NotificationViewHierarchyManager.java"


# instance fields
.field private final mAlwaysExpandNonGroupedNotification:Z

.field private mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field protected final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mIsAnyNotifLocked:Z

.field private mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

.field protected final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    const-class v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsAnyNotifLocked:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    return-void
.end method

.method private addNotificationChildrenAndSort()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move v7, v1

    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_1

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v9, "NotificationViewHierarchyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "trying to add a notification child that already has a parent. class:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "\n child: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    invoke-virtual {v4, v8, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationListContainer;->notifyGroupChildAdded(Landroid/view/View;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z

    move-result v7

    or-int/2addr v2, v7

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationListContainer;->generateChildOrderChangedEvent()V

    :cond_6
    return-void
.end method

.method private removeNotificationChildren()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_1

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lcom/android/systemui/statusbar/NotificationListContainer;->notifyGroupChildRemoved(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_4
    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public isIsAnyNotifLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsAnyNotifLocked:Z

    return v0
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationListContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    return-void
.end method

.method public updateNotificationViews()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsAnyNotifLocked:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_11

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v8, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissed()Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    nop

    move-object/from16 v16, v1

    goto/16 :goto_e

    :cond_0
    iget-object v8, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v10

    iget-object v11, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/NotificationData;->isLock(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    move v10, v3

    :goto_1
    iget-object v11, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->visibility:I

    if-nez v11, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    move v11, v3

    :goto_2
    if-nez v9, :cond_4

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v12, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v12

    if-nez v12, :cond_4

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    move v12, v3

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v12, 0x1

    :goto_4
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v13, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v13

    if-nez v13, :cond_6

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move v13, v3

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v13, 0x1

    :goto_6
    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    const/4 v14, 0x1

    goto :goto_7

    :cond_7
    move v14, v3

    :goto_7
    if-eqz v9, :cond_8

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_8

    :cond_8
    const/4 v3, 0x0

    :goto_8
    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v3, :cond_a

    if-eqz v10, :cond_9

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v6, 0x1

    :goto_a
    invoke-virtual {v15, v14, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(ZZ)V

    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v13, :cond_c

    if-eqz v10, :cond_b

    goto :goto_b

    :cond_b
    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v15, 0x1

    :goto_c
    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    iget-object v6, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLock(Z)V

    if-eqz v10, :cond_d

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsAnyNotifLocked:Z

    :cond_d
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v6

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    if-nez v15, :cond_e

    move-object/from16 v16, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_e
    move-object/from16 v16, v1

    :goto_d
    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_f
    move-object/from16 v16, v1

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    move-object/from16 v16, v1

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    move-object/from16 v16, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_f
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v5

    if-ge v3, v5, :cond_13

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v5, v3}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    instance-of v6, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_12

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v7

    if-nez v7, :cond_12

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/android/systemui/statusbar/NotificationListContainer;->setChildTransferInProgress(Z)V

    goto :goto_11

    :cond_14
    const/4 v7, 0x1

    :goto_11
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeAllChildren()V

    :cond_15
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->removeContainerView(Landroid/view/View;)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Lcom/android/systemui/statusbar/NotificationListContainer;->setChildTransferInProgress(Z)V

    goto :goto_10

    :cond_16
    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->removeNotificationChildren()V

    move v3, v8

    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_18

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_17

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->addContainerView(Landroid/view/View;)V

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->addNotificationChildrenAndSort()V

    const/4 v3, 0x0

    nop

    :goto_13
    move v5, v8

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1d

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v7, :cond_19

    goto :goto_15

    :cond_19
    move-object v7, v6

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_15

    :cond_1a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eq v6, v7, :cond_1c

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v8, v7, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->changeViewPosition(Landroid/view/View;I)V

    goto :goto_14

    :cond_1b
    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    :cond_1c
    :goto_14
    add-int/lit8 v3, v3, 0x1

    :goto_15
    add-int/lit8 v8, v5, 0x1

    goto :goto_13

    :cond_1d
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->onReorderingFinished()V

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStates()V

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->onNotificationViewUpdateFinished()V

    return-void
.end method

.method public updateRowStates()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "NotificationViewHierarchyManager#updateRowStates"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildCount()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterLocked()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v6, v5}, Lcom/android/systemui/statusbar/NotificationPresenter;->getMaxNotificationsWhileLocked(Z)I

    move-result v4

    :cond_0
    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v6, v4}, Lcom/android/systemui/statusbar/NotificationListContainer;->setMaxDisplayedNotifications(I)V

    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    add-int/lit8 v7, v1, -0x1

    :goto_0
    if-ltz v7, :cond_2

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v8, v7}, Lcom/android/systemui/statusbar/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v8

    check-cast v9, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v10, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnKeyguard(Z)V

    const/4 v10, 0x0

    if-nez v3, :cond_5

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    if-nez v11, :cond_4

    if-nez v2, :cond_3

    if-nez v9, :cond_3

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isLowPriority()Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_3

    :cond_3
    move v11, v10

    goto :goto_4

    :cond_4
    :goto_3
    nop

    move v11, v5

    :goto_4
    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    :cond_5
    iget-object v11, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v12}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDozing()Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowAmbient(Z)V

    iget-object v11, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v13, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v12

    if-nez v12, :cond_6

    move v12, v5

    goto :goto_5

    :cond_6
    move v12, v10

    :goto_5
    iget-object v13, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v14, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v13

    const/16 v14, 0x8

    if-nez v12, :cond_b

    iget-object v15, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v15, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v15

    if-nez v15, :cond_b

    if-eqz v3, :cond_7

    if-nez v13, :cond_7

    goto :goto_7

    :cond_7
    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v15

    if-ne v15, v14, :cond_8

    move v14, v5

    goto :goto_6

    :cond_8
    move v14, v10

    :goto_6
    if-eqz v14, :cond_9

    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v15, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    :cond_9
    if-nez v9, :cond_c

    iget-object v10, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v10

    if-nez v10, :cond_c

    if-eqz v14, :cond_a

    iget-object v10, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v15, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    xor-int/lit8 v5, v13, 0x1

    invoke-interface {v10, v15, v5}, Lcom/android/systemui/statusbar/NotificationListContainer;->generateAddAnimation(Landroid/view/View;Z)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    :goto_7
    iget-object v5, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    :cond_c
    :goto_8
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v5

    if-eqz v5, :cond_d

    nop

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v14, v10, -0x1

    :goto_9
    if-ltz v14, :cond_d

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, -0x1

    goto :goto_9

    :cond_d
    iget-object v5, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->showAppOpsIcons(Landroid/util/ArraySet;)V

    nop

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_e
    const-string v5, "NotificationPresenter#onUpdateRowStates"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationPresenter;->onUpdateRowStates()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
